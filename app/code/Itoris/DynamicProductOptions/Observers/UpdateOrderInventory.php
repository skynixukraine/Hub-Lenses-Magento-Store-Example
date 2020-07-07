<?php
/**
 * ITORIS
 *
 * NOTICE OF LICENSE
 *
 * This source file is subject to the ITORIS's Magento Extensions License Agreement
 * which is available through the world-wide-web at this URL:
 * http://www.itoris.com/magento-extensions-license.html
 * If you did not receive a copy of the license and are unable to
 * obtain it through the world-wide-web, please send an email
 * to sales@itoris.com so we can send you a copy immediately.
 *
 * DISCLAIMER
 *
 * Do not edit or add to this file if you wish to upgrade the extensions to newer
 * versions in the future. If you wish to customize the extension for your
 * needs please refer to the license agreement or contact sales@itoris.com for more information.
 *
 * @category   ITORIS
 * @package    ITORIS_M2_DYNAMIC_PRODUCT_OPTIONS
 * @copyright  Copyright (c) 2016 ITORIS INC. (http://www.itoris.com)
 * @license    http://www.itoris.com/magento-extensions-license.html  Commercial License
 */

namespace Itoris\DynamicProductOptions\Observers;

use Magento\Framework\Event\ObserverInterface;

class UpdateOrderInventory implements ObserverInterface
{
    protected $isEnabledFlag = false;
    /**
     * @var \Magento\Framework\ObjectManagerInterface|null
     */
    protected $_objectManager = null;
    /**
     * @var \Magento\Framework\App\RequestInterface|null
     */
    protected $_request = null;
    
    protected $scopeConfig;
    protected $isPriceAlreadyInclTax;

    /**
     * @param \Magento\Framework\ObjectManagerInterface $objectManager
     * @param \Magento\Framework\App\RequestInterface $request
     */
    public function __construct(
        \Magento\Framework\App\RequestInterface $request,
        \Magento\Framework\ObjectManagerInterface $objectManager
    ) {
        $this->_objectManager = $objectManager;
        $this->_request = $request;
        $this->scopeConfig = $this->_objectManager->get('Magento\Framework\App\Config\ScopeConfigInterface');
        $this->isPriceAlreadyInclTax = (int) $this->scopeConfig->getValue('tax/calculation/price_includes_tax', \Magento\Store\Model\ScopeInterface::SCOPE_STORE);
        try {
            $this->isEnabledFlag = $this->_objectManager->get('Itoris\DynamicProductOptions\Helper\Data')->getSettings(true)->getEnabled();
        } catch (\Exception $e) {/** save store model */}
    }

    public function execute(\Magento\Framework\Event\Observer $observer) {
        if (!$this->isEnabledFlag) {
            return $this;
        }

        $eventName = $observer->getEvent()->getName();
        $post = $this->_request->getParams();

        if ($eventName == 'sales_order_creditmemo_refund') {
            $orderItems = $observer->getEvent()->getCreditmemo()->getOrder()->getAllItems();
        } else {
            $orderItems = $observer->getEvent()->getOrder()->getAllItems();
        }

        $needsOrderReload = false;
        foreach ($orderItems as $orderItem) {
            $productOptions = $orderItem->getProductOptions();
            if (!isset($productOptions['options'])) {
                continue;
            }

            $qty = $orderItem->getQtyOrdered();
            foreach ($productOptions['options'] as $optionKey => $option) {
                switch ($option['option_type']) {
                    case 'drop_down':
                    case 'radio':
                    case 'checkbox':
                    case 'multiple':
                        $optionTypeIds = explode(',', $option['option_value']);

                        foreach ($optionTypeIds as $optionTypeId) {
                            /** @var  $dynamicValue \Itoris\DynamicProductOptions\Model\Option\Value */
                            $dynamicValue = $this->_objectManager->create('Itoris\DynamicProductOptions\Model\Option\Value')->load($optionTypeId, 'orig_value_id');
                            $valueConfiguration = $dynamicValue->getConfiguration();
                            if ($valueConfiguration) {
                                $valueConfiguration = \Zend_Json::decode($valueConfiguration);
                                if (isset($valueConfiguration['sku_is_product_id']) && $valueConfiguration['sku_is_product_id']) {
                                    /** @var  $valueModel \Magento\Catalog\Model\Product\Option\Value */
                                    //$valueModel = $this->_objectManager->create('Magento\Catalog\Model\Product\Option\Value')->load($optionTypeId);
                                    /** @var $valueProduct \Magento\Catalog\Model\Product */
                                    $valueProduct = $this->_objectManager->create('Magento\Catalog\Model\Product')->load((int)$valueConfiguration['sku']);
                                    
                                    $buyRequest = $orderItem->getBuyRequest();
                                    $optionsQty = $buyRequest->getOptionsQty();
                                    $optionQty = 1;
                                    if (is_array($optionsQty)) {
                                        if (in_array($option['option_type'], ['radio', 'drop_down'])) {
                                            if (isset($optionsQty[$option['option_id']])) {
                                                $optionQty = (int)$optionsQty[$option['option_id']];
                                            }
                                        } else {
                                            if (isset($optionsQty[$option['option_id']][$optionTypeId])) {
                                                $optionQty = (int)$optionsQty[$option['option_id']][$optionTypeId];
                                            }
                                        }
                                    }
                                    
                                    if ($valueProduct->getId()) {
                                        if (isset($valueConfiguration['separate_cart_item']) && $valueConfiguration['separate_cart_item']
                                                && $eventName != 'order_cancel_after' && $eventName != 'sales_order_creditmemo_refund') {
                                            //creating new order item
                                            
                                            $productPrice = $valueProduct->getFinalPrice(1);
                                            if (!isset($valueConfiguration['sku_is_product_id_linked']) || !$valueConfiguration['sku_is_product_id_linked']) {
                                                //check if option price overrides the product price
                                                $productPrice = $valueConfiguration['price_type'] == 'fixed' ? (float)$valueConfiguration['price'] : $orderItem->getOriginalPrice() / 100 * $valueConfiguration['price'];
                                            }
                                            
                                            $correctionAmount = ($this->isPriceAlreadyInclTax ? $orderItem->getPriceInclTax() : $orderItem->getPrice()) - $productPrice * $optionQty;

                                            if ($orderItem->getPrice() > 0) {
                                                $taxRate = $orderItem->getPriceInclTax() / $orderItem->getPrice();
                                                $correctionRate = $correctionAmount / ($this->isPriceAlreadyInclTax ? $orderItem->getPriceInclTax() : $orderItem->getPrice());
                                            } else {
                                                $taxRate = 1;
                                                $correctionRate = 1;
                                            }
                                            
                                            $fieldsToUpdate = ['price', 'base_price', 'tax_amount', 'base_tax_amount', 'discount_amount', 'base_discount_amount',
                                                                'row_total', 'base_row_total', 'price_incl_tax', 'base_price_incl_tax', 'row_total_incl_tax', 'base_row_total_incl_tax'];
                                            
                                            $buyRequestArray = $orderItem->getProductOptions();
                                            $newOrderItem = $this->_objectManager->create('Magento\Sales\Model\Order\Item');
                                            $newOrderItem->setOrderId($orderItem->getOrderId());
                                            $newOrderItem->setStoreId($orderItem->getStoreId());
                                            $newOrderItem->setProductId($valueProduct->getId());
                                            $newOrderItem->setProductType($valueProduct->getTypeId());
                                            $newOrderItem->setWeight($valueProduct->getWeight());
                                            $newOrderItem->setRowWeight($valueProduct->getWeight() * $qty * $optionQty);
                                            $newOrderItem->setSku($valueProduct->getSku());
                                            $newOrderItem->setTaxPercent($orderItem->getTaxPercent());
                                            $newOrderItem->setName($valueProduct->getName());
                                            $newOrderItem->setIsVirtual($valueProduct->getIsVirtual());
                                            $newOrderItem->setQtyOrdered($qty * $optionQty);
                                            $newOrderItem->setProductOptions(['info_buyRequest' => [
                                                'uenc' => isset($buyRequestArray['info_buyRequest']['uenc']) ? $buyRequestArray['info_buyRequest']['uenc'] : '',
                                                'product' => $valueProduct->getId(),
                                                'qty' => $qty * $optionQty
                                            ]]);
                                            $newOrderItem->setOriginalPrice($valueProduct->getPrice())->setBaseOriginalPrice($valueProduct->getPrice());
                                            foreach($fieldsToUpdate as $field) {
                                                $newOrderItem->setData($field, (float)$orderItem->getData($field) - (float)$orderItem->getData($field) * $correctionRate);
                                            }
                                            if ($newOrderItem->getQtyOrdered() > 0) {
                                                $newOrderItem->setPrice($newOrderItem->getPrice() / $newOrderItem->getQtyOrdered())->setBasePrice($newOrderItem->getPrice() / $newOrderItem->getQtyOrdered());
                                            }

                                            $newOrderItem->save();
                                            
                                            //updating parent item
                                            $orderItem->setSku(str_ireplace(['-'.$newOrderItem->getSku(), '--'], ['', '-'], $orderItem->getSku()));
                                            $orderItem->setWeight($orderItem->getWeight() - (float)$newOrderItem->getWeight());
                                            $orderItem->setRowWeight($orderItem->getRowWeight() - (float)$newOrderItem->getRowWeight());
                                            
                                            foreach($fieldsToUpdate as $field) {
                                                $orderItem->setData($field, (float)$orderItem->getData($field) * $correctionRate);
                                            }
                                            
                                            unset($productOptions['options'][$optionKey]);

                                            $orderItem->setProductOptions($productOptions);
                                            
                                            $orderItem->save();
                                            
                                            $needsOrderReload = true;
                                        }

                                        $item = $this->_objectManager->create('Magento\CatalogInventory\Model\Stock\Item')->load($valueProduct->getId(), 'product_id');;
                                        if ($item->getManageStock()) {
                                            if ($eventName == 'order_cancel_after') {
                                                $item->setQty($item->getQty() + $qty * $optionQty);
                                            } else if ($eventName == 'sales_order_creditmemo_refund') {
                                                $qtyToRefund = intval(@$post['creditmemo']['items'][$orderItem->getId()]['qty']);
                                                if ($qtyToRefund > 0) $item->setQty($item->getQty() + $qtyToRefund * $optionQty);
                                            } else {
                                                $item->setQty($item->getQty() - $qty * $optionQty);
                                            }
                                            $item->save();
                                        }
                                        if (isset($valueConfiguration['hide_sku']) && $valueConfiguration['hide_sku'] && $valueConfiguration['sku']) {
                                            $orderItem->setSku(str_ireplace(['-'.$newOrderItem->getSku(), '--'], ['', '-'], $orderItem->getSku()));
                                            $orderItem->save();
                                        }
                                    }
                                } else {
                                    if (isset($valueConfiguration['hide_sku']) && $valueConfiguration['hide_sku'] && isset($valueConfiguration['sku']) && $valueConfiguration['sku']) {
                                        $orderItem->setSku(str_ireplace(['-'.$valueConfiguration['sku'], '--'], ['', '-'], $orderItem->getSku()));
                                        $orderItem->save();
                                    }
                                }
                            }
                        }
                        break;
                }
            }
        }
        
        if ($needsOrderReload) {
            $order = $observer->getEvent()->getOrder();
            $order->load($order->getId());
        }

        return $this;
    }
}