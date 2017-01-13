<?php
define('inc_access', TRUE);

$_SESSION['file_referer'] = 'databases.php';

include_once('includes/header.php');

//Page preview
if ($_GET['preview'] > "") {
    $pagePreviewId = $_GET['preview'];
    $sqlcustomerPreview = mysqli_query($db_conn, "SELECT id, icon, image, name, link, catid, ontent FROM customers WHERE id='$pagePreviewId'");
    $rowCustomerPreview = mysqli_fetch_array($sqlcustomerPreview);

    echo "<style type='text/css'>html, body {margin-top:0 !important;} nav, .row, .version {display:none !important;} #wrapper {padding-left: 0px !important;} #page-wrapper {min-height: 200px !important;}</style>";
    echo "<div class='col-lg-12'>";

    if ($rowCustomerPreview['name'] > "") {
        echo "<h4>" . $rowCustomerPreview['name'] . "</h4>";
    }

    if ($rowCustomerPreview['image'] > "") {
        echo "<p><img src='../uploads/" . $_SESSION['loc_id'] . "/" . $rowCustomerPreview['image'] . "' style='max-width:350px; max-height:150px;' /></p>";
    } elseif ($rowCustomerPreview['icon'] > "") {
        echo "<p><i id='customer_icon' style='font-size:6.0em;' class='fa fa-fw fa-" . $rowCustomerPreview['icon'] . "'></i></p>";
    }

    if ($rowCustomerPreview['content'] > "") {
        echo "<br/><p>" . $rowCustomerPreview['content'] . "</p>";
    }

    if ($rowCustomerPreview['link'] > "") {
        echo "<br/><p><i class='fa fa-fw fa-external-link'></i> <a href='" . $rowCustomerPreview['link'] . "' target='_blank'>Customer Link</a></p>";
    }

    echo "</div>";
}
?>
<div class="row">
    <div class="col-lg-12">
        <?php
        if ($_GET['newcustomer'] == 'true') {
            echo "<h1 class='page-header'>Databases (New)</h1>";
        } else {
            echo "<h1 class='page-header'>Databases</h1>";
        }
        ?>
    </div>
</div>
<div class="row">
    <div class="col-lg-12">
        <?php

        if ($_GET['newcustomer'] OR $_GET['editcustomer']) {

            $customerMsg = "";

            //Update existing customer
            if ($_GET['editcustomer']) {
                $thecustomerId = $_GET['editcustomer'];
                $customerLabel = "Edit Database Name";

                //update data on submit
                if (!empty($_POST['customer_name'])) {

                    if ($_POST['customer_status'] == 'on') {
                        $_POST['customer_status'] = 'true';
                    } else {
                        $_POST['customer_status'] = 'false';
                    }

                    if ($_POST['customer_featured'] == 'on') {
                        $_POST['customer_featured'] = 'true';
                    } else {
                        $_POST['customer_featured'] = 'false';
                    }

                    $customerUpdate = "UPDATE customers SET name='" . safeCleanStr($_POST['customer_name']) . "', icon='" . $_POST['customer_icon_select'] . "', image='" . $_POST['customer_image_select'] . "', catid='" . safeCleanStr($_POST['customer_exist_cat']) . "', link='" . safeCleanStr($_POST['customer_link']) . "', content='" . sqlEscapeStr($_POST['customer_content']) . "', featured='" . safeCleanStr($_POST['customer_featured']) . "', active='" . $_POST['customer_status'] . "', author_name='" . $_SESSION['user_name'] . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE id=" . $thecustomerId . " AND loc_id=" . $_GET['loc_id'] . " ";
                    mysqli_query($db_conn, $customerUpdate);

                    $customerMsg = "<div class='alert alert-success'><i class='fa fa-long-arrow-left'></i><a href='databases.php?loc_id=" . $_GET['loc_id'] . "' class='alert-link'>Back</a> | The database " . safeCleanStr($_POST['customer_name']) . " has been updated.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                }

                $sqlCustomer = mysqli_query($db_conn, "SELECT id, icon, image, name, link, catid, content, featured, active, author_name, datetime, loc_id FROM customers WHERE id=" . $thecustomerId . " AND loc_id=" . $_GET['loc_id'] . " ");
                $rowCustomer = mysqli_fetch_array($sqlCustomer);


                //Create new customer
            } elseif ($_GET['newcustomer']) {

                $customerLabel = "New Database Name";

                //insert data on submit
                if (!empty($_POST['customer_name'])) {
                    $customerInsert = "INSERT INTO customers (icon, image, name, link, catid, content, featured, active, author_name, datetime, loc_id) VALUES ('" . $_POST['customer_icon_select'] . "', '" . $_POST['customer_image_select'] . "', '" . safeCleanStr($_POST['customer_name']) . "', '" . sqlEscapeStr($_POST['customer_link']) . "', '" . safeCleanStr($_POST['customer_exist_cat']) . "', '" . safeCleanStr($_POST['customer_content']) . "', 'false', 'true', '" . $_SESSION['user_name'] . "', '" . date("Y-m-d H:i:s") . "', " . $_GET['loc_id'] . ")";
                    mysqli_query($db_conn, $customerInsert);

                    echo "<script>window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "';</script>";

                }
            }

            //alert messages
            if ($customerMsg != "") {
                echo $customerMsg;
            }

            if ($_GET['editcustomer']) {
                //active status
                if ($rowCustomer['active'] == 'true') {
                    $selActive = "CHECKED";
                } else {
                    $selActive = "";
                }
                //featured status
                if ($rowCustomer['featured'] == 'true') {
                    $selFeatured = "CHECKED";
                } else {
                    $selFeatured = "";
                }
            }
            ?>

            <form name="customerForm" method="post" action="">

                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group" id="customeractive">
                            <label>Active</label>
                            <div class="checkbox">
                                <label>
                                    <input class="customer_status_checkbox" id="<?php echo $_GET['editcustomer'] ?>" name="customer_status" type="checkbox" <?php if ($_GET['editcustomer']) {echo $selActive;} ?> data-toggle="toggle">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group" id="customerfeatured">
                            <label>Featured</label>
                            <div class="checkbox">
                                <label>
                                    <input class="customer_featured_checkbox" id="<?php echo $_GET['editcustomer'] ?>" name="customer_featured" type="checkbox" <?php if ($_GET['editcustomer']) {echo $selFeatured;} ?> data-toggle="toggle">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <hr/>
                <div class="form-group">
                    <label><?php echo $customerLabel; ?></label>
                    <input class="form-control input-sm count-text" name="customer_name" maxlength="255" value="<?php if ($_GET['editcustomer']) {echo $rowCustomer['name'];} ?>" placeholder="Database Name">
                </div>
                <hr/>
                <div class="form-group">
                    <i id="customer_icon" style="font-size:6.0em;" class="fa fa-fw fa-<?php echo $rowCustomer['icon']; ?>"></i>
                </div>
                <div class="form-group">
                    <?php

                    if ($rowCustomer['image'] == "") {
                        $imgSrc = "http://placehold.it/2/ffffff/ffffff"; //small image just to give the source a value
                    } else {
                        $imgSrc = "../uploads/" . $_GET['loc_id'] . "/" . $rowCustomer['image'];
                    }

                    echo "<img src='" . $imgSrc . "' id='customer_image_preview' style='max-width:140px; height:auto; display:block;'/>";
                    ?>
                </div>
                <div class="form-group">
                    <label>Choose an icon</label>
                    <select class="form-control input-sm" name="customer_icon_select" id="customer_icon_select">
                        <option value="">None</option>
                        <?php

                        $sqlCustomerIcon = mysqli_query($db_conn, "SELECT icon FROM services_icons ORDER BY icon ASC");
                        while ($rowIcon = mysqli_fetch_array($sqlCustomerIcon)) {
                            $icon = $rowIcon['icon'];
                            if ($icon === $rowCustomer['icon']) {
                                $iconCheck = "SELECTED";
                            } else {
                                $iconCheck = "";
                            }
                            echo "<option value='" . $icon . "' " . $iconCheck . ">" . $icon . "</option>";
                        }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Use an Existing Image</label>
                    <select class="form-control input-sm" name="customer_image_select" id="customer_image_select">
                        <option value="">None</option>
                        <?php
                        if ($handle = opendir($image_dir)) {
                            while (false !== ($file = readdir($handle))) {
                                if ('.' === $file) continue;
                                if ('..' === $file) continue;
                                if ($file === "Thumbs.db") continue;
                                if ($file === ".DS_Store") continue;
                                if ($file === "index.html") continue;

                                if ($file === $rowCustomer['image']) {
                                    $imageCheck = "SELECTED";
                                } else {
                                    $imageCheck = "";
                                }

                                echo "<option value='" . $file . "' $imageCheck>" . $file . "</option>";
                            }
                            closedir($handle);
                        }
                        ?>
                    </select>
                </div>
                <hr/>
                <div class="form-group">
                    <label>Link</label>
                    <input class="form-control input-sm count-text" name="customer_link" maxlength="255" value="<?php if ($_GET['editcustomer']) {echo $rowCustomer['link'];} ?>" type="url" placeholder="http://www.google.com">
                </div>
                <div class="form-group">
                    <label for="exist_cat">Category</label>
                    <select class="form-control input-sm" name="customer_exist_cat" id="customer_exist_cat">
                        <?php
                        echo "<option value='0'>None</option>";
                        //get and build category list, find selected
                        $sqlNavExistCat = mysqli_query($db_conn, "SELECT id, name, cust_loc_id FROM category_customers WHERE cust_loc_id=" . $_SESSION['loc_id'] . " ORDER BY name");
                        while ($rowExistNavCat = mysqli_fetch_array($sqlNavExistCat)) {

                            if ($rowExistNavCat['id'] != 0) {
                                $navExistCatId = $rowExistNavCat['id'];
                                $navExistCatName = $rowExistNavCat['name'];

                                if ($navExistCatId == $rowCustomer['catid']) {
                                    $isExistCatSelected = "SELECTED";
                                } else {
                                    $isExistCatSelected = "";
                                }

                                echo "<option value=" . $navExistCatId . " " . $isExistCatSelected . ">" . $navExistCatName . "</option>";
                            }

                        }
                        ?>
                    </select>
                </div>
                <div class="form-group">
                    <label>Description</label>
                    <textarea class="form-control input-sm count-text" rows="3" name="customer_content" placeholder="Text" maxlength="255"><?php if ($_GET['editcustomer']) {echo $rowCustomer['content'];} ?></textarea>
                </div>
                <div class="form-group">
                    <span><small><?php if ($_GET['editcustomer']) {echo "Updated: " . date('m-d-Y, H:i:s', strtotime($rowCustomer['datetime'])). " By: " . $rowCustomer['author_name'];} ?></small></span>
                </div>

                <button type="submit" name="customers_submit" class="btn btn-primary"><i class='fa fa-fw fa-save'></i> Save Changes</button>
                <button type="reset" class="btn btn-default"><i class='fa fa-fw fa-reply'></i> Cancel</button>

            </form>

            <?php
        } else {
            $deleteMsg = "";
            $deleteConfirm = "";
            $customerMsg = "";
            $delcustomerId = $_GET['deletecustomer'];
            $delcustomerName = $_GET['deletename'];
            $movecustomerId = $_GET['movecustomer'];
            $movecustomerName = $_GET['movename'];

            //delete customer
            if ($_GET['deletecustomer'] AND $_GET['deletename'] AND !$_GET['confirm']) {
                $deleteMsg = "<div class='alert alert-danger'>Are you sure you want to delete " . $delcustomerName . "? <a href='?loc_id=" . $_GET['loc_id'] . "&deletecustomer=" . $delcustomerId . "&deletename=" . $delcustomerName . "&confirm=yes' class='alert-link'>Yes</a><button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $deleteMsg;

            } elseif ($_GET['deletecustomer'] AND $_GET['deletename'] AND $_GET['confirm'] == 'yes') {
                //delete customer after clicking Yes
                $customerDelete = "DELETE FROM customers WHERE id='$delcustomerId'";
                mysqli_query($db_conn, $customerDelete);

                $deleteMsg = "<div class='alert alert-success'>" . $delcustomerName . " has been deleted.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $deleteMsg;
            }

            //move customer to top of list
            if (($_GET['movecustomer'] AND $_GET['movename'])) {
                $customerDateUpdate = "UPDATE customers SET author_name='" . $_SESSION['author_name'] . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE id='$movecustomerId'";
                mysqli_query($db_conn, $customerDateUpdate);

                $customerMsg = "<div class='alert alert-success'>" . $movecustomerName . " has been moved to the top.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
            }

            //update heading on submit
            if (($_POST['save_main'])) {

                if ($_POST['databases_defaults'] == 'on') {
                    $_POST['databases_defaults'] = 'true';
                } else {
                    $_POST['databases_defaults'] = 'false';
                }

                $setupUpdate = "UPDATE setup SET customersheading='" . safeCleanStr($_POST['customer_heading']) . "', customerscontent='" . sqlEscapeStr($_POST['main_content']) . "', databases_use_defaults='" . safeCleanStr($_POST['databases_defaults']) . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE loc_id=" . $_GET['loc_id'] . " ";
                mysqli_query($db_conn, $setupUpdate);

                $customerMsg = "<div class='alert alert-success'>The databases have been updated.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
            }

            $sqlSetup = mysqli_query($db_conn, "SELECT customersheading, customerscontent, databases_use_defaults FROM setup WHERE loc_id=" . $_GET['loc_id'] . " ");
            $rowSetup = mysqli_fetch_array($sqlSetup);

            //delete category
            $delCatId = $_GET['deletecat'];
            $delCatTitle = $_GET['deletecatname'];

            //Delete category and set nav categories to zero
            if ($_GET['deletecat'] AND $_GET['deletecatname'] AND !$_GET['confirm']) {

                $deleteMsg = "<div class='alert alert-danger fade in' data-alert='alert'>Are you sure you want to delete " . safeCleanStr($delCatTitle) . "? <a href='?deletecat=" . $delCatId . "&deletecatname=" . $delCatTitle . "&loc_id=" . $_GET['loc_id'] . "&confirm=yes' class='alert-link'>Yes</a><button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $deleteMsg;

            } elseif ($_GET['deletecat'] AND $_GET['deletecatname'] AND $_GET['confirm'] == 'yes') {

                $custCatUpdate = "UPDATE category_customers SET catid=0, author_name='" . $_SESSION['user_name'] . "' WHERE loc_id=" . $_GET['loc_id'] . " AND catid='$delCatId'";
                mysqli_query($db_conn, $custCatUpdate);

                //delete category after clicking Yes
                $custCatDelete = "DELETE FROM category_customers WHERE id='$delCatId'";
                mysqli_query($db_conn, $custCatDelete);

                $deleteMsg = "<div class='alert alert-success fade in' data-alert='alert'>" . safeCleanStr($delCatTitle) . " has been deleted.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $deleteMsg;
            }

            //rename category
            $renameMsg = "";
            $renameConfirm = "";
            $renameCatId = $_GET['renamecat'];
            $renameCatTitle = $_GET['newcatname'];

            //Rename category and set nav categories to new name
            if ($_GET['renamecat'] AND $_GET['newcatname'] AND !$_GET['confirm']) {
                $renameMsg = "<div class='alert alert-danger fade in' data-alert='alert'>Are you sure you want to rename " . safeCleanStr($renameCatTitle) . "? <a href='?renamecat=" . $renameCatId . "&newcatname=" . $renameCatTitle . "&loc_id=" . $_GET['loc_id'] . "&confirm=yes' class='alert-link'>Yes</a><button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $renameMsg;

            } elseif ($_GET['renamecat'] AND $_GET['newcatname'] AND $_GET['confirm'] == 'yes') {

                $custRenameCatUpdate = "UPDATE category_customers SET name='" . safeCleanStr($renameCatTitle) . "', author_name='" . $_SESSION['user_name'] . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE id='$renameCatId'";
                mysqli_query($db_conn, $custRenameCatUpdate);

                $renameMsg = "<div class='alert alert-success fade in' data-alert='alert'>" . safeCleanStr($renameCatTitle) . " has been renamed.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='navigation.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $renameMsg;
            }

            // add category
            if ($_GET['addcatname'] > "") {
                $custAddCat = "INSERT INTO category_customers (name, author_name, datetime, cust_loc_id) VALUES ('" . safeCleanStr($_GET['addcatname']) . "', '" . $_SESSION['user_name'] . "', '" . date("Y-m-d H:i:s") . "', " . $_SESSION['loc_id'] . ")";
                mysqli_query($db_conn, $custAddCat);

                echo "<script>window.location.href='databases.php?loc_id=" . $_SESSION['loc_id'] . "&addcat=" . $_GET['addcatname'] . "';</script>";

            }

            // add category message
            if (!empty($_GET['addcat'])) {
                $addMsg = "<div class='alert alert-success fade in' data-alert='alert'>" . $_GET['addcat'] . " category has been added.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
                echo $addMsg;
            }
            ?>
            <!--modal preview window-->

            <style>
                #webpageDialog iframe {
                    width: 100%;
                    height: 600px;
                    border: none;
                }

                .modal-dialog {
                    width: 95%;
                }
            </style>

            <div class="modal fade" id="webpageDialog">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i
                                    class="fa fa-times"></i> Close
                            </button>
                        </div>
                        <div class="modal-body">
                            <iframe id="myModalFile" src="" frameborder="0"></iframe>
                        </div>
                        <div class="modal-footer">
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->

            <?php
            //use default view
            if ($rowSetup['databases_use_defaults'] == 'true') {
                $selDefaults = "CHECKED";
            } else {
                $selDefaults = "";
            }

            if ($_GET['loc_id'] != 1) {
                ?>

                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group" id="databasesdefaults">
                            <label>Use Defaults</label>
                            <div class="checkbox">
                                <label>
                                    <input class="databases_defaults_checkbox" id="<?php echo $_GET['loc_id'] ?>" name="databases_defaults" type="checkbox" <?php if ($_GET['loc_id']) {echo $selDefaults;} ?> data-toggle="toggle">
                                </label>
                            </div>
                        </div>
                    </div>
                </div>

                <hr/>

                <?php
            }
            ?>
            <!-- Category Section -->
            <button type="button" class="btn btn-primary" data-toggle="collapse" id="addCat_button" data-target="#addCatDiv">
                <i class='fa fa-fw fa-plus'></i> Add a Category
            </button>
            <h2></h2>

            <div id="addCatDiv" class="accordion-body collapse panel-body">

                <fieldset class="well">
                    <div class="form-group">
                        <label for="nav_newcat">Category</label>
                        <div class="input-group">
                            <input type="text" class="form-control input-sm" name="cust_newcat" id="cust_newcat" maxlength="255" data-toggle="tooltip" title="If you would like to add a new Category, you must do that before creating the databases(s) to display under the Category.">
                            <span class="input-group-addon" id="add_cat"><i class='fa fa-fw fa-plus' style="color:#337ab7; cursor:pointer;" data-toggle="tooltip" title="Add" onclick="window.location.href='databases.php?loc_id=<?php echo $_GET['loc_id']; ?>&addcatname='+$('#cust_newcat').val();"></i></span>
                            <span class="input-group-addon" id="rename_cat"><i class='fa fa-fw fa-save' style="visibility:hidden; color:#337ab7; cursor:pointer;" data-toggle="tooltip" title="Rename" onclick="window.location.href='databases.php?loc_id=<?php echo $_GET['loc_id']; ?>&renamecat='+$('#exist_cat').val()+'&newcatname='+$('#cust_newcat').val();"></i></span>
                            <span class="input-group-addon" id="del_cat"><i class='fa fa-fw fa-trash' style="visibility:hidden; color:#c9302c; cursor:pointer;" data-toggle="tooltip" title="Delete" onclick="window.location.href='databases.php?loc_id=<?php echo $_GET['loc_id']; ?>&deletecat='+$('#exist_cat').val()+'&deletecatname='+$('#cust_newcat').val();"></i></span>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exist_cat">Existing Category</label>
                        <select class="form-control input-sm" name="exist_cat" id="exist_cat">
                            <?php
                            echo "<option value='0'>None</option>";
                            //get and build category list, find selected
                            $sqlCustExistCat = mysqli_query($db_conn, "SELECT id, name, cust_loc_id FROM category_customers WHERE cust_loc_id=" . $_SESSION['loc_id'] . " ORDER BY name");
                            while ($rowExistCustCat = mysqli_fetch_array($sqlCustExistCat)) {

                                if ($rowExistCustCat['id'] != 0) {
                                    $custExistCatId = $rowExistCustCat['id'];
                                    $custExistCatName = $rowExistCustCat['name'];

                                    if ($custExistCatId == $navCat) {
                                        $isExistCatSelected = "SELECTED";
                                    } else {
                                        $isExistCatSelected = "";
                                    }

                                    echo "<option value=" . $custExistCatId . " " . $isExistCatSelected . ">" . $custExistCatName . "</option>";
                                }

                            }
                            ?>
                        </select>
                    </div>
                </fieldset>
                <hr/>

            </div>
            <button type="button" class="btn btn-primary" onclick="window.location='?newcustomer=true&loc_id=<?php echo $_GET['loc_id']; ?>';"><i class='fa fa-fw fa-plus'></i> Add a New Database</button>
            <h2></h2>
            <div class="table-responsive">
                <?php
                if ($customerMsg != "") {
                    echo $customerMsg;
                }
                ?>
                <form name="customerForm" method="post" action="">
                    <div class="form-group">
                        <label>Heading</label>
                        <input class="form-control input-sm count-text" name="customer_heading" maxlength="255" value="<?php echo $rowSetup['customersheading']; ?>" placeholder="My Database" required>
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea rows="3" class="form-control input-sm count-text" name="main_content" placeholder="About our databases" maxlength="255"><?php echo $rowSetup['customerscontent']; ?></textarea>
                    </div>
                    <table class="table table-bordered table-hover table-striped">
                        <thead>
                        <tr>
                            <th>Name</th>
                            <th>Category</th>
                            <th>Featured</th>
                            <th>Active</th>
                            <th>Actions</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                        $sqlCustomer = mysqli_query($db_conn, "SELECT id, image, icon, name, link, content, catid, featured, author_name, datetime, active, loc_id FROM customers WHERE active='true' AND loc_id=" . $_GET['loc_id'] . " ORDER BY datetime DESC");
                        while ($rowCustomer = mysqli_fetch_array($sqlCustomer)) {
                            $customerId = $rowCustomer['id'];
                            $customerName = $rowCustomer['name'];
                            $customerCat = $rowCustomer['catid'];
                            $customerContent = $rowCustomer['content'];
                            $customerLink = $rowCustomer['link'];
                            $customerActive = $rowCustomer['active'];
                            $customerFeatured = $rowCustomer['featured'];

                            if ($rowCustomer['active'] == 'true') {
                                $isActive = "CHECKED";
                            } else {
                                $isActive = "";
                            }

                            if ($rowCustomer['featured'] == 'true') {
                                $isFeatured = "CHECKED";
                            } else {
                                $isFeatured = "";
                            }

                            echo "<tr>
						<td><a href='databases.php?loc_id=" . $_GET['loc_id'] . "&editcustomer=$customerId' title='Edit'>" . $customerName . "</a></td>
						<td>";
                            echo "<select class='form-control input-sm' name='nav_cat[]'>'";
                            echo "<option value='0'>None</option>";
                            //get and build category list, find selected
                            $sqlCustCat = mysqli_query($db_conn, "SELECT id, name, cust_loc_id FROM category_customers WHERE cust_loc_id=" . $_SESSION['loc_id'] . " ORDER BY name");
                            while ($rowCustCat = mysqli_fetch_array($sqlCustCat)) {
                                if ($rowCustCat['id'] != 0) {
                                    $custCatId = $rowCustCat['id'];
                                    $custCatName = $rowCustCat['name'];

                                    if ($custCatId == $customerCat) {
                                        $isCatSelected = "SELECTED";
                                    } else {
                                        $isCatSelected = "";
                                    }

                                    echo "<option value=" . $custCatId . " " . $isCatSelected . ">" . $custCatName . "</option>";
                                }
                            }
                            echo "</select>";
						echo "</td>
						<td class='col-xs-1'>
						<input data-toggle='toggle' title='Database Featured' class='checkbox customer_featured_checkbox' id='$customerId' type='checkbox' " . $isFeatured . ">
						</td>
						<td class='col-xs-1'>
						<input data-toggle='toggle' title='Database Active' class='checkbox customer_status_checkbox' id='$customerId' type='checkbox' " . $isActive . ">
						</td>
						<td class='col-xs-2'>
						<button type='button' data-toggle='tooltip' title='Preview' class='btn btn-info' onclick=\"showMyModal('" . safeCleanStr($customerName) . "', 'databases.php?loc_id=" . $_GET['loc_id'] . "&preview=$customerId')\"><i class='fa fa-fw fa-eye'></i></button>
						<button type='button' data-toggle='tooltip' title='Move' class='btn btn-default' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "&movecustomer=$customerId&movename=" . safeCleanStr($customerName) . "'\"><i class='fa fa-fw fa-arrow-up'></i></button>
						<button type='button' data-toggle='tooltip' title='Delete' class='btn btn-danger' onclick=\"window.location.href='databases.php?loc_id=" . $_GET['loc_id'] . "&deletecustomer=$customerId&deletename=" . safeCleanStr($customerName) . "'\"><i class='fa fa-fw fa-trash'></i></button>
						</td>
						</tr>";
                        }
                        ?>
                        </tbody>
                    </table>
                    <input type="hidden" name="save_main" value="true"/>
                    <button type="submit" class="btn btn-primary" name="customer_submit"><i class='fa fa-fw fa-save'></i> Save Changes</button>
                    <button type="reset" class="btn btn-default"><i class='fa fa-fw fa-reply'></i> Cancel</button>
                </form>
            </div>
            <?php
        } //end of long else

        echo "</div>
	</div>
	<p></p>";

        include_once('includes/footer.php');
        ?>
