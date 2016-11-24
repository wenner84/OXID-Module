<?php
/**
 * Module information
 */
$aModule = array(
    'id'           => 'cw_payment',
    'title'        => 'CW Zahlart',
    'description'  => "Zahlart Rechnung kann fuer bestimmte Artikel deaktiviert werden",
    'version'      => '1.0',
    'author'       => 'Christian Werner',
    'email'        => 'cw@web-fortune.de',
    'url'          => '',
    'extend'       => array(
	'payment' => 'cw_payment/htr_payment'

    )
);