<?php
class packstation extends oxInputValidator
{
    public function checkRequiredFields( $oUser, $aInvAddress, $aDelAddress )
    {
	// collecting info about required fields
        $aMustFields = array( 'oxuser__oxfname',
                              'oxuser__oxlname',
                              'oxuser__oxstreetnr',
                              'oxuser__oxstreet',
                              'oxuser__oxzip',
                              'oxuser__oxcity' );

        // config shoud override default fields
        $aMustFillFields = $this->getConfig()->getConfigParam( 'aMustFillFields' );
        if ( is_array( $aMustFillFields ) ) {
            $aMustFields = $aMustFillFields;
        }

        // assuring data to check
        $aInvAddress = is_array( $aInvAddress )?$aInvAddress:array();
        $aDelAddress = is_array( $aDelAddress )?$aDelAddress:array();

        // collecting fields
        $aFields = array_merge( $aInvAddress, $aDelAddress );


        // check delivery address ?
        $blCheckDel = false;
        if ( count( $aDelAddress ) ) {
            $blCheckDel = true;
        }

        // checking
        foreach ( $aMustFields as $sMustField ) {
            
            // A. not nice, but we keep all fields info in one config array, and must support baskwards compat.
            if ( !$blCheckDel && strpos( $sMustField, 'oxaddress__' ) === 0 ) {
                continue;
            }

            if ( isset( $aFields[$sMustField] ) && is_array( $aFields[$sMustField] ) ) {
                $this->checkRequiredArrayFields( $oUser, $sMustField, $aFields[$sMustField] );
            } elseif ( !isset( $aFields[$sMustField] ) || !trim( $aFields[$sMustField] ) ) {
                   $oEx = oxNew( 'oxInputException' );
                   $oEx->setMessage('EXCEPTION_INPUT_NOTALLFIELDS');

                   $this->_addValidationError( $sMustField, $oEx );
            }
        }
	 $findMich   = 'ackstation';
	 $findMich1  = 'aketstation';
	 $pos = strpos($aInvAddress ['oxuser__oxstreet'], $findMich);
	 $pos1 = strpos($aInvAddress ['oxuser__oxstreet'], $findMich1);
	 if (( $pos !== False) || ( $pos1 !== False))
		{
			$oEx = oxNew( 'oxInputException' );
			$oEx->setMessage('CW_PACK_RE');
       	       $this->_addValidationError( $sMustField, $oEx );
		}
    }
}
?>