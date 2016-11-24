<?php
class bs_media extends oxMediaUrl
{
    public function getHtmlbs()
    {
        $sUrl = $this->oxmediaurls__oxurl->value;
 	 $sDesc = $this->oxmediaurls__oxdesc->value;
        //youtube link
        if (strpos($sUrl, 'youtube.com')) {
            return $this->_getYoutubeHtml();
        }

        //simple link
        //return $this->getHtmlLink();
        return $sUrl;


    }
}
?>