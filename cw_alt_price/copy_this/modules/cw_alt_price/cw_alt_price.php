<?php
/**
 * 
 * disable payment for articles assigned to specific category
 */
class cw_alt_price extends cw_alt_price_parent
{
    protected function _getGroupPrice()
    {
        $dPrice = $this->oxarticles__oxprice->value;

        $oUser = $this->getArticleUser();
        if ( $oUser ) {
            if ( $oUser->inGroup( 'oxidpricea' ) ) {
                $dPrice = $this->oxarticles__oxpricea->value;
            } elseif ( $oUser->inGroup( 'oxidpriceb' ) ) {
                $dPrice = $this->oxarticles__oxpriceb->value;
            } elseif ( $oUser->inGroup( 'oxidpricec' ) ) {
                $dPrice = $this->oxarticles__oxpricec->value;
            } elseif ( $oUser->inGroup( 'cwpriced' ) ) {
                $dPrice = $this->oxarticles__cwpriced->value;
            } elseif ( $oUser->inGroup( 'cwpricee' ) ) {
                $dPrice = $this->oxarticles__cwpricee->value;
            } elseif ( $oUser->inGroup( 'cwpricef' ) ) {
                $dPrice = $this->oxarticles__cwpricef->value;
            } elseif ( $oUser->inGroup( 'cwpriceg' ) ) {
                $dPrice = $this->oxarticles__cwpriceg->value;
            } elseif ( $oUser->inGroup( 'cwpriceh' ) ) {
                $dPrice = $this->oxarticles__cwpriceh->value;
            } elseif ( $oUser->inGroup( 'cwpricei' ) ) {
                $dPrice = $this->oxarticles__cwpricei->value;
            } elseif ( $oUser->inGroup( 'cwpricej' ) ) {
                $dPrice = $this->oxarticles__cwpricej->value;
            }
        }

        // #1437/1436C - added config option, and check for zero A,B,C price values
        if ( $this->getConfig()->getConfigParam( 'blOverrideZeroABCPrices' ) && (double) $dPrice == 0 ) {
            $dPrice = $this->oxarticles__oxprice->value;
        }

        return $dPrice;
    }
}

