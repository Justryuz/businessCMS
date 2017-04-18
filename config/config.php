<?php
//This is the main Config/Setup file for the admin panel and Global variables used throughout the site. Change values as needed.
//Create a virtual host alias for the directory that the project files are in.

require_once('dbconn.php');

if (basename($_SERVER['PHP_SELF']) != 'install.php') {

//Establish config connection
    $db_conn = mysqli_connect($db_servername, $db_username, $db_password);
    mysqli_select_db($db_conn, $db_name);

    if (mysqli_connect_errno($db_conn)) {
        die("Failed to connect to MySQL: " . mysqli_connect_error($db_conn));
    }

    $sqlConfig = mysqli_query($db_conn, "SELECT theme, iprange, multibranch, loc_types, homepageurl, setuppacurl, session_timeout, carousel_speed, analytics FROM config WHERE id=1");
    $rowConfig = mysqli_fetch_array($sqlConfig);
}
//Get server/host protocol
if ($_SERVER['HTTPS'] == true || $_SERVER['HTTPS'] == 'on') {
    $serverProtocol = 'https://';
} else {
    $serverProtocol = 'http://';
}

$themeOption = $rowConfig['theme'];

//Limit/Lock access to admin panel to a specific IP range. leave off the last octet for range.
//example: "127.0.0."
$IPrange = $rowConfig['iprange'];

//Multi-Branch - more than one location
//true or false
$multiBranch = $rowConfig['multibranch'];

//Homepage URL
$homePageURL = $rowConfig['homepageurl'];

//LS2PAC Server Domain or IP
$setupPACURL = $rowConfig['setuppacurl'];

//Web Site Analytics
$site_analytics = $rowConfig['analytics'];

//Edit values for your web site. leave as is in most cases.
//physical path to uploads folder
$image_dir = "../uploads/" . $_GET['loc_id'] . "/";

//Absolute web url path to uploads folder for tinyMCE
$image_url = $serverProtocol . $_SERVER['SERVER_NAME'] . "/uploads/" . $_GET['loc_id'] . "/";

//Relative web url path to uploads folder for tinyMCE
$image_baseURL = "uploads/" . $_GET['loc_id'] . "/";

//Upload function
$target_file = $image_dir . basename($_FILES["fileToUpload"]["name"]);

//Navigation options for front-end template
$navSections = array("Top", "Footer", "Search");

//Database Sections
$custSections = array("1", "2", "3");

//Location Types
$defaultLocTypes = array("Default", "All");
$explodedLocTypes = explode(',', $rowConfig['loc_types']);
$locTypes = array_merge($defaultLocTypes,$explodedLocTypes); //returns an array

//Extra Pages
$extraPages = "<optgroup label='Other Pages'><option value='about.php?loc_id=" . $_GET['loc_id'] . "'>About</option><option value='calendar.php?loc_id=" . $_GET['loc_id'] . "'>Calendar</option><option value='contact.php?loc_id=" . $_GET['loc_id'] . "'>Contact</option><option value='databases.php?loc_id=" . $_GET['loc_id'] . "'>Databases</option><option value='services.php?loc_id=" . $_GET['loc_id'] . "'>Services</option><option value='team.php?loc_id=" . $_GET['loc_id'] . "'>Team</option></optgroup>";

//Session timeout
//3600 = 60mins
$sessionTimeout = $rowConfig['session_timeout'];

//Slide Carousel Speed
//5000 = 5secs
$carouselSpeed = $rowConfig['carousel_speed'];

//Blowfish Salt goes here after the installer runs.
require_once('blowfishsalt.php');
?>