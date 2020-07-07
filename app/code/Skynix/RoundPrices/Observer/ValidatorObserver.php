<?php
/**
 * Copyright © 2018 Skynix
 *
 * See COPYING.txt for license details.
 */
namespace Skynix\RoundPrices\Observer;
use Magento\Framework\Event\ObserverInterface;
use Magento\Framework\Event\Observer;
use Skynix\RoundPrices\Helper\Data as PriceHelper;
use Skynix\RoundPrices\Model\Math;
/**
 * SalesRule Validator Observer
 */
class ValidatorObserver implements ObserverInterface
{
    /**
     * Round Price Helper
     *
     * @var \Skynix\RoundPrices\Helper\Data
     */
    protected $_helper;

    /**
     * Math Processor
     *
     * @var \Skynix\RoundPrices\Model\Math
     */
    protected $_math;

    /**
     * Initialize Observer
     *
     * @param Math $math
     * @param PriceHelper $helper
     */
    public function __construct(
        Math $math,
        PriceHelper $helper
    ) {
        $this->_math = $math;
        $this->_helper = $helper;
    }
    /**
     * Rounding Calculated Discount
     *
     * @param Observer $observer
     * @return void
     */
    public function execute(Observer $observer)
    {
        if (!$this->_helper->isEnabled() ||
            !$this->_helper->isRoundingDiscount()
        ) {
            return;
        }
        $discount = $observer->getEvent()->getResult();
        $discount->setAmount(
            $this->_math->round($discount->getAmount())
        );
    }
}