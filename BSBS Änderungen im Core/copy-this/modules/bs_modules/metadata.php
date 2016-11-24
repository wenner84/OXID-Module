<?php
/**
 * Module information
 */
$aModule = array(
    'id'           => 'bs_modules',
    'title'        => 'BS Aenderungen im Core',
    'description'  => "",
    'version'      => '1.0',
    'author'       => 'Christian Werner',
    'email'        => 'cw@web-fortune.de',
    'url'          => '',
    'extend'       => array(
	'oxactionlist' => 'bs_modules/bs_actionlist',
	'oxarticle' => 'bs_modules/min_price',
	'oxcategory' => 'bs_modules/bs_category',
	'oxdelivery' => 'bs_modules/bs_delivery',
	'oxuserpayment' => 'bs_modules/bs_userpayment',
	'oxmediaurl' => 'bs_modules/bs_media',
	'oxarticlelist' => 'bs_modules/min_price_cron',
    'oxbasket' => 'bs_modules/bs_basket'
    )
);