<?php
class bs_category extends oxCategory
{    
   public function getIconUrl()
    {
        if ( ( $sIcon = $this->oxcategories__oxicon->value ) ) {
            $oConfig = $this->getConfig();
      //bsbs      $sSize = $oConfig->getConfigParam( 'sCatIconsize' );
    $sSize = $oConfig->getConfigParam( 'sCatThumbnailsize' );
      //      if ( !isset( $sSize ) ) {
      //          $sSize = $oConfig->getConfigParam( 'sIconsize' );
      //      }

            return oxPictureHandler::getInstance()->getPicUrl( "category/icon/", $sIcon, $sSize );
        }
    }
}
?>