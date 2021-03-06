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

//app/code/Itoris/DynamicProductOptions/Block/Adminhtml/Product/Options/Product/Grid/Column/Link.php
namespace Itoris\DynamicProductOptions\Block\Adminhtml\Product\Options\Product\Grid\Column;
class Link extends \Magento\Backend\Block\Widget\Grid\Column\Renderer\Text
{

    public function render(\Magento\Framework\DataObject $row) {
        $storeManager = \Magento\Framework\App\ObjectManager::getInstance()->get('Magento\Store\Model\StoreManagerInterface');
        $mediaUrl = $storeManager->getStore(0)->getBaseUrl(\Magento\Framework\UrlInterface::URL_TYPE_MEDIA);
        $imageUrl = str_replace(['http://', 'https://'], '//', $mediaUrl).'catalog/product'.str_replace('//','/', $row->getImage());
        return '<a href="#" onclick="itorisDynamicOptions.addProductLinkToItem('.htmlspecialchars(json_encode(['productId'=>$row->getId(), 'name'=>$this->escapeHtml($row->getName()), 'price'=> round($row->getPrice(), 2), 'price_type'=> 'fixed', 'image_url' => $imageUrl])).');return false;">' . $this->escapeHtml(__('select')) . '</a>';
    }
}