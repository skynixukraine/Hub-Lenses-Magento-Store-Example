<?php
/**
 * Created by Skynix Team.
 * User: oleksii bulba
 * Date: 15.03.18
 * Time: 12:09
 */

namespace Skynix\CustomCurrency\Block\Order;


class Totals extends \Magento\Sales\Block\Order\Totals
{

    /**
     * Remove Grand Base Total from Totals
     *
     * @return $this
     */
    protected function _beforeToHtml()
    {
        $beforeToHtml = parent::_beforeToHtml();

        $this->removeTotal('base_grandtotal');

        return $beforeToHtml;
    }

}