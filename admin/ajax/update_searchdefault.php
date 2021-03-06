<?php
//updates the search defaults on setup.php. Called from js/functions.js via jquery/ajax.
session_start();

//check if user is logged in and that the requesting page is valid.
if (isset($_SESSION['loggedIn']) AND $_SESSION['session_hash']==md5($_SESSION['user_name'])) {

	include '../../db/config.php';

	if (!empty($_GET) AND $_GET['update']) {
		$searchDefaultID = $_GET['value'];
		$searchDefault = $_GET['checked'];

		if ($searchDefaultID > 0 AND $searchDefault == 'true') {
			$searchDefaultUpdate = "UPDATE setup SET searchdefault=".$searchDefaultID." WHERE loc_id=".$_SESSION['loc_id']." ";
		}

		mysqli_query($db_conn, $searchDefaultUpdate);
		mysqli_close($db_conn);

		die('Search Defaults target set');
	}

} else {

	die('Direct access not permitted');

}
?>
