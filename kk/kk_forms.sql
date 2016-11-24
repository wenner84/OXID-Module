# --------------------------------------------------------
# Host:                         46.4.95.236
# Server version:               5.1.41-3ubuntu12.10-log
# Server OS:                    debian-linux-gnu
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2011-11-30 10:59:01
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table awn.agformfields
CREATE TABLE IF NOT EXISTS `agformfields` (
  `OXID` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FORM` char(32) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `SORT` int(11) NOT NULL,
  `IDENT` varchar(255) NOT NULL,
  `LABEL` text NOT NULL,
  `LABEL_1` text NOT NULL,
  `LABEL_2` text NOT NULL,
  `LABEL_3` text NOT NULL,
  `DEFAULTVALUE` text NOT NULL,
  `DEFAULTVALUE_1` text NOT NULL,
  `DEFAULTVALUE_2` text NOT NULL,
  `DEFAULTVALUE_3` text NOT NULL,
  `TYPE` char(32) NOT NULL,
  `REQUIRED` tinyint(1) NOT NULL,
  `VALIDATION` char(32) NOT NULL,
  `VALIDATIONREGEX` varchar(255) NOT NULL,
  `VALIDATIONMSG` text NOT NULL,
  `VALIDATIONMSG_1` text NOT NULL,
  `VALIDATIONMSG_2` text NOT NULL,
  `VALIDATIONMSG_3` text NOT NULL,
  `ATTRIBUTES` text NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `DESCRIPTION_1` text NOT NULL,
  `DESCRIPTION_2` text NOT NULL,
  `DESCRIPTION_3` text NOT NULL,
  `SIZE` int(11) NOT NULL,
  `MAXSIZE` int(11) NOT NULL,
  `FILESIZE` float NOT NULL,
  `FILETYPES` varchar(255) NOT NULL,
  `FILEDESTINATION` varchar(255) NOT NULL,
  `FIELDVALUES` text NOT NULL,
  `FIELDVALUES_1` text NOT NULL,
  `FIELDVALUES_2` text NOT NULL,
  `FIELDVALUES_3` text NOT NULL,
  PRIMARY KEY (`OXID`),
  KEY `form` (`FORM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table awn.agformfields: 45 rows
/*!40000 ALTER TABLE `agformfields` DISABLE KEYS */;
REPLACE INTO `agformfields` (`OXID`, `FORM`, `ACTIVE`, `SORT`, `IDENT`, `LABEL`, `LABEL_1`, `LABEL_2`, `LABEL_3`, `DEFAULTVALUE`, `DEFAULTVALUE_1`, `DEFAULTVALUE_2`, `DEFAULTVALUE_3`, `TYPE`, `REQUIRED`, `VALIDATION`, `VALIDATIONREGEX`, `VALIDATIONMSG`, `VALIDATIONMSG_1`, `VALIDATIONMSG_2`, `VALIDATIONMSG_3`, `ATTRIBUTES`, `DESCRIPTION`, `DESCRIPTION_1`, `DESCRIPTION_2`, `DESCRIPTION_3`, `SIZE`, `MAXSIZE`, `FILESIZE`, `FILETYPES`, `FILEDESTINATION`, `FIELDVALUES`, `FIELDVALUES_1`, `FIELDVALUES_2`, `FIELDVALUES_3`) VALUES
	('b54f244b120bf73210bdd6be87429201', 'osf8e206f455a005c83fed73103f4c6d', 1, 0, '', 'Bitte senden Sie mir kostenlos:', '', '', '', '', '', '', '', 'LABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('077ddf2087ff9e5169b8120779d55ff0', 'osf8e206f455a005c83fed73103f4c6d', 1, 1, 'hk', 'den AWN Hauptkatalog', '', '', '', '1', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b549ad64fc43a429b0640698b0ea878b', 'osf8e206f455a005c83fed73103f4c6d', 1, 9, 'strasse', 'Straße', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b543b8b8f8f9eec06defeab889212b20', 'osf8e206f455a005c83fed73103f4c6d', 1, 11, 'plz', 'PLZ', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b54f9bc0020e23cda21fc71677ef8895', 'osf8e206f455a005c83fed73103f4c6d', 1, 13, 'ort', 'Ort', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b54577e08fa4679dc4bf541497b243a5', 'osf8e206f455a005c83fed73103f4c6d', 1, 15, 'email', 'E-Mail', '', '', '', '', '', '', '', 'TEXTINPUT', 1, 'EMAIL', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b54b53f061bd50009c02fc7a92066f2f', 'osf8e206f455a005c83fed73103f4c6d', 1, 17, 'land', 'Land', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b542ab9093ff66442bf5dcc13528fcbc', 'osf8e206f455a005c83fed73103f4c6d', 1, 25, '', 'Für eine kundenorientierte Sortimentsabstimmung bitten wir Sie um folgende Angaben:', '', '', '', 'Für eine kundenorientierte Sortimentsabstimmung bitten wir Sie um folgende Angaben:', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', 'FÃ¼r eine kundenorientierte Sortimentsabstimmung bitten wir Sie um folgende Angaben:', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b549b283c8acf14e6ab229ee6fb751e2', 'osf8e206f455a005c83fed73103f4c6d', 1, 24, '', '----------', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b545c2f7de43df4bd8bbadd4c582bbd0', 'osf8e206f455a005c83fed73103f4c6d', 1, 27, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b545562343aceaeb85741a2e1be6f927', 'osf8e206f455a005c83fed73103f4c6d', 1, 30, 'iown', 'Ich besitze ein', '', '', '', '', '', '', '', 'RADIOBUTTON', 0, '', '', '', '', '', '', '', '', '', '', '', 50, 0, 0, '', '', 'Segelboot\r\nMotorboot\r\nkein Schiff', '', '', ''),
	('b54c9b2e320a4ce4498b8efbc0af3032', 'osf8e206f455a005c83fed73103f4c6d', 1, 31, 'laenge', 'Länge', '', '', '', '', '', '', '', 'TEXTINPUT', 0, '', '', '', '', '', '', '', '', '', '', '', 3, 3, 0, '', '', '', '', '', ''),
	('b540afc26b5a6022168f41a0080e2776', 'osf8e206f455a005c83fed73103f4c6d', 1, 32, 'charter', 'Ich chartere', '', '', '', '1', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 2, 20, 0, '', '', '', '', '', ''),
	('b54ce15999074d09cadd5ce861d0f6e8', 'osf8e206f455a005c83fed73103f4c6d', 1, 33, 'tauche', 'Ich tauche', '', '', '', '1', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 5, 0, 0, '', '', '', '', '', ''),
	('b541288d72aa35b3f2f85dfd3477c95c', 'osf8e206f455a005c83fed73103f4c6d', 1, 40, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b540ee0e62409985fcc74d6ea45a4065', 'osf8e206f455a005c83fed73103f4c6d', 1, 45, '', 'Ich bin damit einverstanden, dass Sie mich über weitere Angebote von AWN per Post oder E-Mail informieren. ', '', '', '', '', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b545454d82b530141611c8e561b6edc1', 'osf8e206f455a005c83fed73103f4c6d', 1, 46, '', 'Ich bin damit einverstanden, dass meine Daten bis auf Widerruf zur Pflege der Kundenbeziehung gespeichert werden. ', '', '', '', '', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('1f162e23f0397d9853435a391e3df24f', '1f12974455314ae9f9d1fea4f74b009e', 1, 100, '', 'Absenden', '', '', '', 'Absenden', '', '', '', 'SUBMIT', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ace4a899460fa429ec0974ce5c899fb', '1f12974455314ae9f9d1fea4f74b009e', 1, 8, 'kundennummer', 'Kundennummer', '', '', '', '', '', '', '', 'TEXTINPUT', 0, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('8b79cfc957600de37131bb726f9b4ef5', '1f12974455314ae9f9d1fea4f74b009e', 1, 30, 'frage', 'Ihre Frage', '', '', '', '', '', '', '', 'TEXTAREA', 1, '', '', '', '', '', '', 'style="width:300px;height:120px;"', '', '', '', '', 40, 500, 0, '', '', '', '', '', ''),
	('2acbdaa84c3cca64616e63024e69cb46', '1f12974455314ae9f9d1fea4f74b009e', 1, 39, '', '---------------------', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ac2c6403f7fd8f96884239735e7a9b2', '1f12974455314ae9f9d1fea4f74b009e', 1, 10, 'vorname', 'Vorname', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('2acb3c59ec9a2089e1c7c7673d83d82f', '1f12974455314ae9f9d1fea4f74b009e', 1, 9, 'anrede', 'Anrede', '', '', '', 'Herr', '', '', '', 'COMBOBOX', 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', 'Herr\r\nFrau\r\n', '', '', ''),
	('450721a1242046a369295659b8f2b404', '1f12974455314ae9f9d1fea4f74b009e', 1, 40, 'werbungzusenden', 'Newsletter', '', '', '', 'Ja', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('1f16d10bde5cd27951c1cafa17745e24', '1f12974455314ae9f9d1fea4f74b009e', 1, 20, 'email', 'E-Mail', '', '', '', '', '', '', '', 'TEXTINPUT', 1, 'EMAIL', '', 'Bitte geben Sie eine gültige E-Mail Adresse ein', '', '', '', '', 'Geben Sie hier bitte eine gültige Kontaktadresse an unter der wie Sie erreichen können.', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b54846245a04481b2fc5dbed7ca48d65', 'osf8e206f455a005c83fed73103f4c6d', 1, 7, 'nachname', 'Nachname', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('1f1d444dac01ddcd30d37a9aad0a754f', '1f12974455314ae9f9d1fea4f74b009e', 1, 11, 'nachname', 'Nachname', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', 'test', '', '', '', '', 'Geben Sie hier bitte Ihren Nachnamen ein', '', '', '', 40, 255, 0, '', '', '', '', '', ''),
	('b540b0353f3b9c02cdaa333e2e06c838', 'osf8e206f455a005c83fed73103f4c6d', 1, 2, 'kundennummer', 'Kundennummer', '', '', '', '', '', '', '', 'TEXTINPUT', 0, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b5420d03aedf71a8b0dcbefce4a9741b', 'osf8e206f455a005c83fed73103f4c6d', 1, 5, 'vorname', 'Vorname', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('b5470c6aaac92c3a133afef06c57a6c6', 'osf8e206f455a005c83fed73103f4c6d', 1, 3, 'anrede', 'Anrede', '', '', '', 'Herr', '', '', '', 'COMBOBOX', 1, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', 'Herr\r\nFrau', '', '', ''),
	('b543090a0e94d6ec5b7a3ceac2bd6514', 'osf8e206f455a005c83fed73103f4c6d', 1, 1, 'kk', 'die AWN BonusClubCard', '', '', '', '1', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b5416b91cdd0836e5efd30b9ae72e7c8', 'osf8e206f455a005c83fed73103f4c6d', 1, 0, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b543527d4f07418df184ae691aa62d86', 'osf8e206f455a005c83fed73103f4c6d', 1, 43, 'werbungzusenden', 'Zustimmung', '', '', '', '1', '', '', '', 'CHECKBOX', 0, '', '', '', '', '', '', '', '', '', '', '', 20, 20, 0, '', '', '', '', '', ''),
	('b5478f5fa38bbd2691ae79bf2364dba8', 'osf8e206f455a005c83fed73103f4c6d', 1, 100, '', '', '', '', '', 'Absenden', '', '', '', 'SUBMIT', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('b542ab9b5337e04cc19f281eca387244', 'osf8e206f455a005c83fed73103f4c6d', 1, 99, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ac6b32b5b03d3bfb3087cf16f321609', '1f12974455314ae9f9d1fea4f74b009e', 0, 50, '', 'Ich bin damit einverstanden, dass Sie mich über weitere Angebote von AWN per Post oder E-Mail informieren. ', '', '', '', '', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2aca3e8c42a4b3cb5cb2e3f1d47fb736', '1f12974455314ae9f9d1fea4f74b009e', 0, 55, '', 'Ich bin damit einverstanden, dass meine Daten bis auf Widerruf zur Pflege der Kundenbeziehung gespeichert werden. ', '', '', '', '', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2acda2d3595e33fa5904f945af2fc222', '1f12974455314ae9f9d1fea4f74b009e', 0, 60, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ace0893123d29507d8c22104dee430d', '1f12974455314ae9f9d1fea4f74b009e', 1, 0, '', 'Bitte tragen Sie hier Ihre Frage zu dem Artikel ein', '', '', '', '', '', '', '', 'MLLABEL', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ac49088ff780cfa1daa30e4918ef205', '1f12974455314ae9f9d1fea4f74b009e', 1, 1, '', '', '', '', '', '', '', '', '', 'SEPARATOR', 0, '', '', '', '', '', '', '', '', '', '', '', 0, 0, 0, '', '', '', '', '', ''),
	('2ac9cf5ce1025d122e23218c067583f2', '1f12974455314ae9f9d1fea4f74b009e', 1, 29, 'artnum', 'Artikelnummer', '', '', '', '', '', '', '', 'TEXTINPUT', 0, '', '', '', '', '', '', 'readonly', '', '', '', '', 10, 10, 0, '', '', '', '', '', ''),
	('22ge8acd6bb2cb5f8c8ff2e3fb49a119', '1f12974455314ae9f9d1fea4f74b009e', 1, 12, 'strasse', 'Straße', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('22g6fce581e8f40b1e9d26b12bcea48d', '1f12974455314ae9f9d1fea4f74b009e', 1, 13, 'plz', 'Plz', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('22gb5a76d3156d002e01010e4d705fba', '1f12974455314ae9f9d1fea4f74b009e', 1, 14, 'ort', 'Ort', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', ''),
	('22gb1ffb8aeec6fb1c543efaf33fbe68', '1f12974455314ae9f9d1fea4f74b009e', 1, 15, 'land', 'Land', '', '', '', '', '', '', '', 'TEXTINPUT', 1, '', '', '', '', '', '', '', '', '', '', '', 40, 0, 0, '', '', '', '', '', '');
/*!40000 ALTER TABLE `agformfields` ENABLE KEYS */;


# Dumping structure for table awn.agformmailings
CREATE TABLE IF NOT EXISTS `agformmailings` (
  `OXID` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `FORM` char(32) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `FROMMAIL` varchar(255) NOT NULL,
  `FROMMAIL_1` varchar(255) NOT NULL,
  `FROMMAIL_2` varchar(255) NOT NULL,
  `FROMMAIL_3` varchar(255) NOT NULL,
  `FROMNAME` varchar(255) NOT NULL,
  `FROMNAME_1` varchar(255) NOT NULL,
  `FROMNAME_2` varchar(255) NOT NULL,
  `FROMNAME_3` varchar(255) NOT NULL,
  `TOMAIL` varchar(255) NOT NULL,
  `CC` varchar(255) NOT NULL,
  `BCC` varchar(255) NOT NULL,
  `SUBJECT` varchar(255) NOT NULL,
  `SUBJECT_1` varchar(255) NOT NULL,
  `SUBJECT_2` varchar(255) NOT NULL,
  `SUBJECT_3` varchar(255) NOT NULL,
  `PLAIN` tinyint(1) NOT NULL,
  `ATTACHMENT` varchar(255) NOT NULL,
  `TEMPLATE` varchar(255) NOT NULL,
  `UPLOADS` varchar(255) NOT NULL,
  PRIMARY KEY (`OXID`),
  KEY `form` (`FORM`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table awn.agformmailings: 4 rows
/*!40000 ALTER TABLE `agformmailings` DISABLE KEYS */;
REPLACE INTO `agformmailings` (`OXID`, `FORM`, `ACTIVE`, `FROMMAIL`, `FROMMAIL_1`, `FROMMAIL_2`, `FROMMAIL_3`, `FROMNAME`, `FROMNAME_1`, `FROMNAME_2`, `FROMNAME_3`, `TOMAIL`, `CC`, `BCC`, `SUBJECT`, `SUBJECT_1`, `SUBJECT_2`, `SUBJECT_3`, `PLAIN`, `ATTACHMENT`, `TEMPLATE`, `UPLOADS`) VALUES
	('osf655d4ce097eb71ecd6c265d3e86a2', 'osf8e206f455a005c83fed73103f4c6d', 1, 'service@awn.de', '', '', '', '', '', '', '', 'katalog@awn.de', '', '', 'Kataloganfrage', '', '', '', 0, '', '', ''),
	('8b72fe267ca11de11fedd0f3a102def8', '1f12974455314ae9f9d1fea4f74b009e', 1, '{email}', '', '', '', '{vorname} {nachname}', '', '', '', 'service@awn.de', '', '', 'Frage zu Artikel {artnum} von {nachname}', '', '', '', 0, '', 'inc/forms/formmail_frage.tpl', 'attachment'),
	('8b78df21f4d3b72b349626f7938a7d4e', '1f12974455314ae9f9d1fea4f74b009e', 1, 'service@awn.de', '', '', '', 'A.W.NIEMEYER GmbH', '', '', '', '{email}', '', '', 'Ihre Frage zu Artikel {artnum}', '', '', '', 0, '', '/inc/forms/formmail_frage_user.tpl', ''),
	('ckp4c5d7c7cd94956f5ea41ae6969d6e', 'osf8e206f455a005c83fed73103f4c6d', 1, 'service@awn.de', '', '', '', '', '', '', '', 'borisarchiv@googlemail.com', '', '', 'Kataloganfrage AWN', '', '', '', 0, '', '', '');
/*!40000 ALTER TABLE `agformmailings` ENABLE KEYS */;


# Dumping structure for table awn.agforms
CREATE TABLE IF NOT EXISTS `agforms` (
  `OXID` char(32) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `TITLE` varchar(255) NOT NULL,
  `TITLE_1` varchar(255) NOT NULL,
  `TITLE_2` varchar(255) NOT NULL,
  `TITLE_3` varchar(255) NOT NULL,
  `ACTIVE` tinyint(1) NOT NULL,
  `TEMPLATE` varchar(255) NOT NULL,
  `REDIRECTURL` varchar(255) NOT NULL,
  `MESSAGE` text NOT NULL,
  `MESSAGE_1` text NOT NULL,
  `MESSAGE_2` text NOT NULL,
  `MESSAGE_3` text NOT NULL,
  `SCRIPTBEFORE` longtext NOT NULL,
  `SCRIPTPROCESS` longtext NOT NULL,
  `SCRIPTAFTER` longtext NOT NULL,
  `PLGNEWS_ACTIVE` tinyint(1) NOT NULL,
  `PLGNEWS_FIELD` varchar(255) NOT NULL,
  PRIMARY KEY (`OXID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

# Dumping data for table awn.agforms: 2 rows
/*!40000 ALTER TABLE `agforms` DISABLE KEYS */;
REPLACE INTO `agforms` (`OXID`, `TITLE`, `TITLE_1`, `TITLE_2`, `TITLE_3`, `ACTIVE`, `TEMPLATE`, `REDIRECTURL`, `MESSAGE`, `MESSAGE_1`, `MESSAGE_2`, `MESSAGE_3`, `SCRIPTBEFORE`, `SCRIPTPROCESS`, `SCRIPTAFTER`, `PLGNEWS_ACTIVE`, `PLGNEWS_FIELD`) VALUES
	('osf8e206f455a005c83fed73103f4c6d', 'Bestellformular', '', '', '', 1, '/katalog.tpl', '', 'Vielen Dank für Ihr Interesse an unserem Katalog.\r\nLeider ist der aktuelle Katalog vergriffen, wir haben Sie aber für den neuen Katalog vorgemerkt und werden Ihnen diesen nach dem Erscheinen automatisch zusenden. \r\n', '', '', '', '', '', '$i= 0;\r\nforeach ($aFields as $field)\r\n{\r\n          if ($i>1 & $i<22) \r\n            {\r\n                if ($i == \'2\')\r\n                        {$wert = "\'".$field->getEnteredValue()."\'";}\r\n		elseif ($i ==\'14\')\r\n			{$wert .= ",\'".date("d.m.Y")."\'";}\r\n                elseif($i==\'15\')\r\n                       {$wert .=",\'".date("H:i:s")."\'";}\r\n                else\r\n                        {$wert .= ",\'".$field->getEnteredValue()."\'";}\r\n            }\r\n                $i++;\r\n}\r\nmysql_query("INSERT INTO `katalog_best_cw` (hk,kk,interne_kdnr,anrede,fname,lname,str,plz,ort,email,land,leer,datum,uhr,schifftyp,laenge,chartern,tauchen,leer2,zustimmung) VALUES ($wert)");', 0, ''),
	('1f12974455314ae9f9d1fea4f74b009e', 'Frage', '', '', '', 1, '', '', 'Vielen Dank für Ihre Anfrage.', '', '', '', '$aFields = $oForm->getActiveFields();\r\nforeach($aFields as $oField)\r\n{\r\n     if($oField->agformfields__ident->value == "artnum")\r\n     {\r\n            $sFieldValue = oxConfig::getParameter(\'artnum\');\r\n            if($sFieldValue)\r\n            {\r\n                $oField->agformfields__defaultvalue = new oxField($sFieldValue);\r\n            }\r\n     }\r\n}', '', '$i= 0;\r\nforeach ($aFields as $field)\r\n{\r\n          if ($i>0 & $i<15) \r\n            {\r\n                if ($i == \'2\')\r\n                        {$wert = "\'".$field->getEnteredValue()."\'";}\r\n                elseif ($i == \'13\')\r\n                        {$wert .=  ",\'".date("d.m.Y")."\'";}\r\n                else\r\n                        {$wert .= ",\'".$field->getEnteredValue()."\'";}\r\n            }\r\n                $i++;\r\n}\r\n$wert .=  ",\'".date("H:i:s")."\'";\r\nmysql_query("INSERT INTO `cw_frage_artikel` (interne_kdnr,anrede,fname,lname,str,plz,ort,land,email,OXARTNUM,frage,datum,newsletter,uhr) VALUES ($wert)");', 0, '');
/*!40000 ALTER TABLE `agforms` ENABLE KEYS */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
# --------------------------------------------------------
# Host:                         46.4.95.236
# Server version:               5.1.41-3ubuntu12.10-log
# Server OS:                    debian-linux-gnu
# HeidiSQL version:             6.0.0.3603
# Date/time:                    2011-12-01 11:01:14
# --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

# Dumping structure for table awn.katalog_best_cw
DROP TABLE IF EXISTS `katalog_best_cw`;
CREATE TABLE IF NOT EXISTS `katalog_best_cw` (
  `ID` int(50) NOT NULL AUTO_INCREMENT,
  `interne_kdnr` int(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `anrede` varchar(50) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `str` varchar(50) NOT NULL,
  `plz` varchar(50) NOT NULL,
  `ort` varchar(50) NOT NULL,
  `land` varchar(50) NOT NULL,
  `HK` int(10) DEFAULT NULL,
  `KK` int(10) DEFAULT NULL,
  `schifftyp` varchar(50) NOT NULL,
  `laenge` int(50) NOT NULL,
  `chartern` tinyint(50) NOT NULL,
  `tauchen` tinyint(50) NOT NULL,
  `zustimmung` tinyint(11) NOT NULL,
  `datum` varchar(50) NOT NULL,
  `uhr` varchar(50) NOT NULL,
  `leer` varchar(50) DEFAULT NULL,
  `leer2` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=822 DEFAULT CHARSET=utf8 COMMENT='Daten der Katalogbestellung';

