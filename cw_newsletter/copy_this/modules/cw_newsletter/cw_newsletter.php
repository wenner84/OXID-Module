<?php
class cw_newsletter extends cw_newsletter_parent
{
    public function send()
    {
        $aParams  = oxConfig::getParameter("editval");

        // loads submited values
        $this->_aRegParams = $aParams;

        if ( !$aParams['oxuser__oxusername'] ) {
            oxUtilsView::getInstance()->addErrorToDisplay('NEWSLETTER_COMPLETEALLFIELEDS');
            return;
        } elseif ( !oxUtils::getInstance()->isValidEmail( $aParams['oxuser__oxusername'] ) ) {
            // #1052C - eMail validation added
            oxUtilsView::getInstance()->addErrorToDisplay('NEWSLETTER_INVALIDEMAIL');
            return;
        }

        $blSubscribe = oxConfig::getParameter("subscribeStatus");

        $oUser = oxNew( 'oxuser' );
        $oUser->oxuser__oxusername = new oxField($aParams['oxuser__oxusername'], oxField::T_RAW);

        $blUserLoaded = false;

        // if such user does not exist
        if ( !$oUser->exists() ) {

            // and subscribe is off - error, on - create
            if ( !$blSubscribe ) {

                oxUtilsView::getInstance()->addErrorToDisplay('NEWSLETTER_EMAIL_NOT_EXIST');
                return;

            } else {


                $oUser->oxuser__oxactive    = new oxField(1, oxField::T_RAW);
                $oUser->oxuser__oxrights    = new oxField('user', oxField::T_RAW);
                $oUser->oxuser__oxshopid    = new oxField($this->getConfig()->getShopId(), oxField::T_RAW);
                $oUser->oxuser__oxfname     = new oxField($aParams['oxuser__oxfname'], oxField::T_RAW);
                $oUser->oxuser__oxlname     = new oxField($aParams['oxuser__oxlname'], oxField::T_RAW);
                $oUser->oxuser__oxzip	  = new oxField($aParams['oxuser__oxzip'], oxField::T_RAW);
                $oUser->oxuser__oxsal       = new oxField($aParams['oxuser__oxsal'], oxField::T_RAW);
                $oUser->oxuser__oxcountryid = new oxField($aParams['oxuser__oxcountryid'], oxField::T_RAW);
                $blUserLoaded = $oUser->save();
            }

        } else {
            $blUserLoaded = $oUser->load( $oUser->getId() );
        }



        // if user was added/loaded successfully and subscribe is on - subscribing to newsletter
        if ( $blSubscribe && $blUserLoaded ) {
            //removing user from subscribe list before adding
            $oUser->setNewsSubscription( false, false );

            $blOrderOptInEmail = $this->getConfig()->getConfigParam( 'blOrderOptInEmail' );
            if ( $oUser->setNewsSubscription( true, $blOrderOptInEmail ) ) {
                // done, confirmation required?
                if ( $blOrderOptInEmail ) {
                    $this->_iNewsletterStatus = 1;
                } else {
                    $this->_iNewsletterStatus = 2;
                }
            } else {
                oxUtilsView::getInstance()->addErrorToDisplay('NEWSLETTER_NOTABLETOSENDEMAIL');
            }
        } elseif ( !$blSubscribe && $blUserLoaded ) {
            // unsubscribing user
            $oUser->setNewsSubscription( false, false );
            $this->_iNewsletterStatus = 3;
        }
    }
}
?>