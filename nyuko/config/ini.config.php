<?php
## Website configuration file
//web root
define("PRJ_NAME", "nyuko"); //project root name
define("ROOT", "/" . PRJ_NAME . "/");
define("CSS", "/" . PRJ_NAME . "/styles/");
define("IMG", "/" . PRJ_NAME . "/images/");
define("JS", "/" . PRJ_NAME . "/scripts/");
define("INC", "/" . PRJ_NAME . "/include/");
define("MOD", "/" . PRJ_NAME . "/model/");
define("INI", "/" . PRJ_NAME . "/config/");
define("CTRL", "/" . PRJ_NAME . "/controller/");

//Testing server variables, remove comments
define("DBHOST", "localhost");
define("DBNAME", "nyuko");
define("DBUSER", "root");
define("DBPASS", "");

// other
define('PERPAGE', 10);
define('YEARS', serialize(array(2014,2015,2016,2017,2018,2019,2020,2021,2022,2023,2024,2025)));