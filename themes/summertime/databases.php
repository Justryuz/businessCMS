<?php
define('inc_access', TRUE);

include_once('includes/header.inc.php');

echo "<div class='page-databases'>";

include 'includes/featured.inc.php';

if (!empty($_GET['cat_id'])) {
    include 'includes/customers_catid.inc.php';
} else {
    include 'includes/customers.inc.php';
}

echo "</div>";

include_once('includes/footer.inc.php');
?>