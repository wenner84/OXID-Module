<?php
/**
 * Module information
 */
$aModule = array(
    'id'           => 'redirectalist',
    'title'        => 'direkt zum Ariktel',
    'description'  => "Wenn eine Kategorie oder Suche nur einen Arikel hat wird gleich die Artikelseite angezeigt",
    'version'      => '1.0',
    'author'       => '',
    'email'        => '',
    'url'          => '',
    'extend'       => array(
	'aList' => 'Redirect2Article/redirectalist',
	'Search' => 'Redirect2Article/redirectalist',
    )
);