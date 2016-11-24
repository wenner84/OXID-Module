<?php
/**
 * 
 * disable payment for articles assigned to specific category
 */
class htr_payment extends htr_payment_parent
{
    protected $_aCatDiasallowPayment = array ('Keine Rechnung'=>'oxidinvoice');


    public function getPaymentList()
    {

        if (is_null($this->_oPaymentList)) {
            $oBasket = $this->getSession()->getBasket();
            $oPaymentList = parent::getPaymentList();
            $oCategory = new oxCategory();
            foreach($oBasket->getBasketArticles() as $key=>$oArticle){
                $aCatIds = $oArticle->getCategoryIds();
                foreach ($aCatIds as $sId){
                    $oCategory->load($sId);
                    $title = $oCategory->getTitle();
                    if (array_key_exists($title, $this->_aCatDiasallowPayment)){
                        //disallow
                        foreach ($oPaymentList as $key=>$oPayment){
                            $sOxid = $oPayment->_sOXID;
                            if ($sOxid == $this->_aCatDiasallowPayment[$title]){
                                unset ($this->_oPaymentList[$this->_aCatDiasallowPayment[$title]]);
                            }
                        }
                        //disallow
                    }
                }
            }

            #$this->_oPaymentList=$oPaymentList;
        }
        return $this->_oPaymentList;
    }
}