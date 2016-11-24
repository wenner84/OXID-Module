<?php
 class modOrder extends modOrder_parent
 {
     /**
      * Returns DPD shipment tracking url if oxorder__oxtrackcode is supplied
      *
      * @return string
      */
     public function getShipmentTrackingUrl()
     {
         if ( $this->_sShipTrackUrl === null && $this->oxorder__oxtrackcode->value ) {
             $sCarrier = substr($this->oxorder__oxtrackcode->value, 0, 3);
             $sTrackId = substr($this->oxorder__oxtrackcode->value, 3);
             
             switch ($sCarrier) {
                 case "DHL":
                     $this->_sShipTrackUrl = "http://nolp.dhl.de/nextt-online-public/track.do?zip=".$this->oxorder__oxbillzip->value."&idc=".$sTrackId."&lang=de";
                     break;
             
                 case "ILX":
                     $this->_sShipTrackUrl = "https://www.iloxx.de/net/popup/trackpop.aspx?id=".$sTrackId;
                     break;
             
                 case "DPD":
                     $this->_sShipTrackUrl = "http://extranet.dpd.de/cgi-bin/delistrack?typ=1&lang=de&pknr=".$sTrackId;
                     break;
             
                 case "GLS":
                     $this->_sShipTrackUrl = "http://www.gls-group.eu/276-I-PORTAL-WEB/content/GLS/DE03/DE/5004.htm?txtRefNo=".$sTrackId;
                     break;
             
                 case "HMS":
                     $this->_sShipTrackUrl = "http://tracking.hlg.de/Tracking.jsp?TrackID=".$sTrackId;
                     break;
             
                 case "UPS":
                     $this->_sShipTrackUrl = "http://wwwapps.ups.com/WebTracking/processRequest?HTMLVersion=5.0&Requester=NES&AgreeToTermsAndConditions=yes&loc=de_DE&tracknum=".$sTrackId; 
                     break;
             
                 default:
                     $this->_sShipTrackUrl = parent::getShipmentTrackingUrl();
                     break;
             }
         }
        
         return $this->_sShipTrackUrl;
     }
 }
?>