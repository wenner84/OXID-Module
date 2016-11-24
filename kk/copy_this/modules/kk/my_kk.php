<?php
class my_kk extends my_kk_parent
{
    public function kundenkarte($karte)
    {
        if ( $this->_oProductsPriceList ) 
	{
		$w1=351;
		$w2=551;
		$w3=1001;
		$w4=3000;
		$einkauf=$this->_oProductsPriceList->getBruttoSum();						//Bruttosumme des Warenkorbes unformatiert holen
		
		$umsatz=$karte+$einkauf;
		
		if($umsatz<351)
		{
			$rest=$w1-$umsatz;
			$a=1;
		}
		
		elseif($umsatz>350 & $umsatz<551)
		{
			$rest=$w2-$umsatz;
			$a=2;	
		}

		elseif($umsatz>550 & $umsatz<1001)
		{
			$rest=$w3-$umsatz;
			$a=3;
		}

		elseif($umsatz>1000 & $umsatz<3000)
		{
			$rest=$w4-$umsatz;
			$a=5;	
		}
		elseif($umsatz>3000)
		{	
			$rest=0;
			$a=$umsatz*0.05;
			$a =  oxLang::getInstance()->formatCurrency( $a, $this->getBasketCurrency() ); 
		}

		$rest=ceil($rest);											//aufrunden des noch ausstehenden Umsatzes auf ganze Euro
		$umsatz = oxLang::getInstance()->formatCurrency( $umsatz, $this->getBasketCurrency() ); 	//umsatz Formatieren damit , statt . bei Ausgabe
		$einkauf =  oxLang::getInstance()->formatCurrency( $einkauf, $this->getBasketCurrency() ); 
		$b=array($rest,$a,$umsatz,$einkauf);										
								
		return $b;
        }
        return null;
    }


}

?>

