<?php
/**
 * Module information
 */
$aModule = array(
    'id'           => 'carriertracking',
    'title'        => 'Sendungsverfolgung',
    'description'  => "Prüft den Trackingcode und nutzt die ersten 3Zeichen als erkennung des Auslieferers (DHL, GLS, UPS, etc)",
    'version'      => '1.0',
    'author'       => '',
    'email'        => '',
    'url'          => '',
    'extend'       => array(
	'oxorder' => 'carriertracking/modorder',

    )
);