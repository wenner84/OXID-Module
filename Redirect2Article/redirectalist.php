<?php
class redirectalist extends redirectalist_parent{
    public function render()
    {
        parent::render();
        if ($this->_iAllArtCnt==1){
            foreach ($this->getArticleList() as $oArticle){
                $sLoc = str_replace('&amp;','&',$oArticle->getLink());
                header("Location: ".$sLoc, true, 301);
                exit();
            }
        }
        return $this->getTemplateName();
    }
}
?> 