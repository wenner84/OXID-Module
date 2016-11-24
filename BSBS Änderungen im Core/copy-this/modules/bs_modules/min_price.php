<?php
class min_price extends oxArticle
{
  protected function _assignStock()
    {
        $myConfig = $this->getConfig();
        // -----------------------------------
        // stock
        // -----------------------------------

        // #1125 A. must round (using floor()) value taken from database and cast to int
        if (!$myConfig->getConfigParam( 'blAllowUnevenAmounts' ) && !$this->isAdmin() ) {
            $this->oxarticles__oxstock = new oxField((int) floor($this->oxarticles__oxstock->value));
        }
        //GREEN light
        $this->_iStockStatus = 0;

        // if we have flag /*1 or*/ 4 - we show always green light
        if ( $myConfig->getConfigParam( 'blUseStock' ) && /*$this->oxarticles__oxstockflag->value != 1 && */ $this->oxarticles__oxstockflag->value != 4) {
            //ORANGE light
            $iStock = $this->oxarticles__oxstock->value;

           // Boris änderung: 3 zeilen auskommentieren bsBSbs
            //if ($this->_blNotBuyableParent) {	
            //    $iStock = $this->oxarticles__oxvarstock->value;
           // }


            if ( $iStock <= $myConfig->getConfigParam( 'sStockWarningLimit' ) && $iStock > 0) {
                $this->_iStockStatus = 1;
            }

            //RED light
            if ($iStock <= 0) {
                $this->_iStockStatus = -1;
            }
        }


        // stock
        if ( $myConfig->getConfigParam( 'blUseStock' ) && ($this->oxarticles__oxstockflag->value == 3 || $this->oxarticles__oxstockflag->value == 2)) {
            $iOnStock = $this->oxarticles__oxstock->value;
            if ($this->getConfig()->getConfigParam( 'blPsBasketReservationEnabled' )) {
                $iOnStock += $this->getSession()->getBasketReservations()->getReservedAmount($this->getId());
            }
            if ($iOnStock <= 0) {
                $this->_blNotBuyable = true;
            }
        }

        //exceptional handling for variant parent stock:
        if ($this->_blNotBuyable && $this->oxarticles__oxvarstock->value ) {
            $this->_blNotBuyable = false;
            //but then at least setting notBuaybleParent to true
            $this->_blNotBuyableParent = true;
        }

        //special treatment for lists when blVariantParentBuyable config option is set to false
        //then we just hide "to basket" button.
        //if variants are not loaded in the list and this article has variants and parent is not buyable then this article is not buyable
        if ( !$myConfig->getConfigParam( 'blVariantParentBuyable' ) && !$myConfig->getConfigParam( 'blLoadVariants' ) && $this->oxarticles__oxvarstock->value) {
            $this->_blNotBuyable = true;
        }

        //setting to non buyable when variant list is empty (for example not loaded or inactive) and $this is non buyable parent
        if (!$this->_blNotBuyable && $this->_blNotBuyableParent && $this->oxarticles__oxvarcount->value == 0) {
            $this->_blNotBuyable = true;
        }
    }
    /**
     * Updates variant min price. This method is supposed to be called on article change triger.
     *
     * @param string $sParentID Parent ID
     *
     * @return null
     */
  protected function _onChangeUpdateMinVarPrice( $sParentID )
    {
        if ( $sParentID ) {
            $oDb = oxDb::getDb();
            $sParentIdQuoted = $oDb->quote($sParentID);
            //#M0000883 (Sarunas)
            $sQ = 'select min(oxprice) as varminprice from '.$this->getViewName(true).' where '.$this->getSqlActiveSnippet(true).' and (oxparentid = '.$sParentIdQuoted.')';
            $dVarMinPrice = $oDb->getOne($sQ);

            $dParentPrice = $oDb->getOne("select oxprice from oxarticles where oxid = $sParentIdQuoted ");

            $blParentBuyable =  $this->getConfig()->getConfigParam( 'blVariantParentBuyable' );

            if ($dVarMinPrice) {
                if ($blParentBuyable) {
                    $dVarMinPrice = min($dVarMinPrice, $dParentPrice);
                }

            } else {
                $dVarMinPrice = $dParentPrice;
            }

            if ( $dVarMinPrice ) {
//bsbs
              //  $sQ = 'update oxarticles set oxvarminprice = '.$dVarMinPrice.' where oxid = '.$sParentIdQuoted;
               // $oDb->execute($sQ);
            }
        }
    }
  protected function _applyRangePrice()
    {
        //#buglist_413 if bl_perfLoadPriceForAddList variant price shouldn't be loaded too
        if ( !$this->getConfig()->getConfigParam( 'bl_perfLoadPrice' ) || !$this->_blLoadPrice ) {
            return;
        }

        $this->_blIsRangePrice = false;

        // if parent is buyable - do not apply range price calcculations
        if ($this->_blSkipAbPrice || !$this->_blNotBuyableParent) {
            return;
        }

        if ( $this->isParentNotBuyable() && !$this->getConfig()->getConfigParam( 'blLoadVariants' )) {
            //#2509 we cannot force brutto price here, as netto price can be added to DB
            // $this->getPrice()->setBruttoPriceMode();
            $this->getPrice()->setPrice($this->oxarticles__oxvarminprice->value);
            $this->_blIsRangePrice = true;
            $this->_calculatePrice( $this->getPrice() );
            return;
        }

        $aPrices = array();

        if (!$this->_blNotBuyableParent) {
            $aPrices[] = $this->getPrice()->getBruttoPrice();
        }

        $aVariants = $this->getVariants(false);

        if (count($aVariants)) {
            foreach ($aVariants as $sKey => $oVariant) {
                $aPrices[] = $oVariant->getPrice()->getBruttoPrice();
            }
        }

        if ( count( $aPrices ) ) {
         //bsbs $dMinPrice = min( $aPrices );
        	$dMinPrice = $this->oxarticles__oxvarminprice->value;

            $dMaxPrice = max( $aPrices );
        }

        if ($this->_blNotBuyableParent && isset($dMinPrice) && $dMinPrice == $dMaxPrice) {
            $this->getPrice()->setBruttoPriceMode();
            $this->getPrice()->setPrice($dMinPrice);
        }

        if (isset($dMinPrice) && $dMinPrice != $dMaxPrice) {
            $this->getPrice()->setBruttoPriceMode();
            $this->getPrice()->setPrice($dMinPrice);
            $this->_blIsRangePrice = true;
        }
    }
}

?>