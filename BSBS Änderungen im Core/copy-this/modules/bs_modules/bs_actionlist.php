<?php
class bs_actionlist extends oxActionList
{
    public function loadCurrent()
    {
        $sViewName = $this->getBaseObject()->getViewName();
        $sDate = date( 'Y-m-d H:i:s', oxUtilsDate::getInstance()->getTime() );
        $sQ = "select * from {$sViewName} where oxtype=2 and oxactive=1 and oxshopid='".$this->getConfig()->getShopId()."' and (oxactiveto > ".oxDb::getDb()->quote($sDate)." or oxactiveto=0) and oxactivefrom != 0 and oxactivefrom < ".oxDb::getDb()->quote($sDate)."
               ".$this->_getUserGroupFilter()."
               order by oxactiveto desc, oxactivefrom";
        $this->selectString( $sQ );
    }
}
?>