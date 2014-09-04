<?php
class bs_basket extends oxBasket
    {
        public function getDiscountedProductsBruttoPrice()
        {
            if ( $oProductsPrice = $this->getDiscountProductsPrice() ) {
                $dPrice = $oProductsPrice->getBruttoSum();
            }

            // substracting total discount
            if ( $oPrice = $this->getTotalDiscount() ) {
                $dPrice -= $oPrice->getBruttoPrice();
            }

            //bsbs auskommentiert damit Gutscheine nicht den Mindestbestellwert beeinflussen
            //if ( $oVoucherPrice = $this->getVoucherDiscount() ) {
            //    $dPrice -= $oVoucherPrice->getBruttoPrice();
            //}

            return $dPrice;
        }
    }
?>
