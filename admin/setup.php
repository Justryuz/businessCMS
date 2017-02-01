<?php
define('inc_access', TRUE);

include_once('includes/header.inc.php');

$_SESSION['file_referer'] = 'setup.php';

//Get max location ID number - for creating a new location
$sqlLocationMaxID = mysqli_query($db_conn, "SELECT MAX(id) FROM locations ORDER BY id DESC LIMIT 1");
$rowLocationMaxID = mysqli_fetch_array($sqlLocationMaxID);

$locationNewID = $rowLocationMaxID[0] + 1;

//Get location table columns
$sqlLocation = mysqli_query($db_conn, "SELECT id, name, active FROM locations WHERE id=" . $_GET['loc_id'] . " ");
$rowLocation = mysqli_fetch_array($sqlLocation);

//Get setup table columns
$sqlSetup = mysqli_query($db_conn, "SELECT title, author, description, keywords, config, ls2pac, ls2kids, searchdefault, logo, author_name, datetime, loc_id FROM setup WHERE loc_id=" . $_GET['loc_id'] . " ");
$rowSetup = mysqli_fetch_array($sqlSetup);

//update table on submit
if (!empty($_POST)) {
    if (!empty($_POST['site_title'])) {
        $site_keywords = $_POST['site_keywords'];
        $site_author = $_POST['site_author'];
        $site_description = $_POST['site_description'];

        if ($_POST['location_status'] == 'on') {
            $_POST['location_status'] = 'true';
        } else {
            $_POST['location_status'] = 'false';
        }

        //Always set default location to active/true
        if ($_GET['loc_id'] == 1) {
            $_POST['location_status'] = 'true';
        }

        //update table on submit
        if ($rowSetup['loc_id'] == $_GET['loc_id']) {
            //Update Location
            $locationUpdate = "UPDATE locations SET name='" . safeCleanStr($_POST['location_name']) . "', active='" . $_POST['location_status'] . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE id=" . $_GET['loc_id'] . " ";
            mysqli_query($db_conn, $locationUpdate);
            //Update Setup
            $setupUpdate = "UPDATE setup SET title='" . safeCleanStr($_POST['site_title']) . "', author='" . safeCleanStr($site_author) . "', keywords='" . safeCleanStr($site_keywords) . "', description='" . safeCleanStr($site_description) . "', config='" . safeCleanStr($_POST['site_config']) . "', logo='" . $_POST['site_logo'] . "', author_name='" . $_SESSION['user_name'] . "', datetime='" . date("Y-m-d H:i:s") . "' WHERE loc_id=" . $_GET['loc_id'] . " ";
            mysqli_query($db_conn, $setupUpdate);
        } else {
            //Insert Location
            $locationInsert = "INSERT INTO locations (id, name, datetime, active) VALUES (" . $_GET['loc_id'] . ", '" . safeCleanStr($_POST['location_name']) . "', '" . date("Y-m-d H:i:s") . "', 'true')";
            mysqli_query($db_conn, $locationInsert);
            //Insert Setup
            $setupInsert = "INSERT INTO setup (title, keywords, description, config, logo, ls2pac, ls2kids, searchdefault, author, pageheading, servicesheading, sliderheading, teamheading, customersheading_1, customersheading_2, customersheading_3, servicescontent, customerscontent_1, customerscontent_2, customerscontent_3, teamcontent, slider_use_defaults, databases_use_defaults_1, databases_use_defaults_2, databases_use_defaults_3, navigation_use_defaults_1, navigation_use_defaults_2, navigation_use_defaults_3, services_use_defaults, team_use_defaults, datetime, author_name, loc_id) VALUES ('" . safeCleanStr($_POST['site_title']) . "', '" . safeCleanStr($site_keywords) . "', '" . safeCleanStr($site_description) . "', '" . safeCleanStr($_POST['site_config']) . "', '" . $_POST['site_logo'] . "', 'true', 'true', 1, '" . safeCleanStr($site_author) . "', 'Pages', 'Service', 'Slider', 'Meet the Team', 'Resources', '', '', '', '', '', '', '', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', 'true', '" . date("Y-m-d H:i:s") . "', '" . $_SESSION['user_name'] . "', " . $_GET['loc_id'] . ")";
            mysqli_query($db_conn, $setupInsert);
        }

        header("Location: setup.php?loc_id=" . $_GET['loc_id'] . "&update=true");
        echo "<script>window.location.href='setup.php?loc_id=" . $_GET['loc_id'] . "&update=true';</script>";
    }
}

$pageMsg = '';

if ($_GET['update'] == 'true') {
    $pageMsg = "<div class='alert alert-success'>The setup section has been updated.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='setup.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
} elseif ($_GET['deleteloc'] == 'true') {
    $pageMsg = "<div class='alert alert-danger fade in' data-alert='alert'>Are you sure you want to delete this location? <a href='?loc_id=" . $_GET['loc_id'] . "&deleteloc=" . $_GET['loc_id'] . "&confirm=yes' class='alert-link'>Yes</a><button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='setup.php?loc_id=" . $_GET['loc_id'] . "'\">×</button></div>";
}
//delete a location and all references to it in the db. this will do a cascading delete where loc_id = id
if ($_SESSION['user_level'] == 1 && $multiBranch == 'true' && $_GET['loc_id'] != 1 && $_GET['newlocation'] != 'true') {
    if ($_GET['loc_id'] && $_GET['deleteloc'] && $_GET['confirm'] == 'yes') {
        $locDelete = "DELETE FROM locations WHERE id = " . $_GET['loc_id'] . " ";
        mysqli_query($db_conn, $locDelete);

        header("Location: setup.php?loc_id=1");
        echo "<script>window.location.href='setup.php?loc_id=1';</script>";
    }
}

?>
<div class="row">
    <div class="col-lg-12">
        <h1 class="page-header">
            Settings <?php if ($_GET['newlocation'] == 'true') {echo "(New)";} ?>
            <small></small>
        </h1>
    </div>
</div>
<div class="row">
    <div class="col-lg-8">
        <?php

        if ($pageMsg != "") {
            echo $pageMsg;
        }

        if ($rowLocation['active'] == 'true') {
            $isActive_location = "CHECKED";
        } else {
            $isActive_location = "";
        }

        if ($rowSetup['ls2pac'] == 'true') {
            $isActive_ls2pac = "CHECKED";
        } else {
            $isActive_ls2pac = "";
        }

        if ($rowSetup['ls2kids'] == 'true') {
            $isActive_ls2kids = "CHECKED";
        } else {
            $isActive_ls2kids = "";
        }

        if ($rowSetup['searchdefault'] == '1') {
            $isActive_default1 = "CHECKED";
            $isActive_default2 = "";
        } elseif ($rowSetup['searchdefault'] == '2') {
            $isActive_default1 = "";
            $isActive_default2 = "CHECKED";
        }

        if ($rowSetup['logo'] == "") {
            $logo = "http://placehold.it/140x100&text=No Image";
        } else {
            $logo = "../uploads/" . $_GET['loc_id'] . "/" . $rowSetup['logo'];
        }
        ?>

        <form name="setupForm" id="setupForm" class="dirtyForm" method="post" action="">

            <?php
            if ($_GET['loc_id'] != 1) {
            ?>
            <div class="row">
                <div class="col-lg-4">
                    <div class="form-group" id="locationactive">
                        <label>Active</label>
                        <div class="checkbox">
                            <label>
                                <input class="location_status_checkbox" id="<?php echo $_GET['loc_id'] ?>" name="location_status" type="checkbox" <?php if ($_GET['loc_id']) {echo $isActive_location;} ?> data-toggle="toggle">
                            </label>
                        </div>
                    </div>
                </div>
            </div>
            <hr/>
            <?php
            }

            //Check if user_level is Admin user
            if ($_SESSION['user_level'] == 1 && $multiBranch == 'true' && $_GET['loc_id'] == 1 && $_GET['newlocation'] != 'true') {
            ?>
            <button type="button" class="btn btn-primary" onclick="window.location='setup.php?newlocation=true&loc_id=<?php echo $locationNewID; ?>';"><i class='fa fa-fw fa-plus'></i> Add a New Location</button>
            <h2></h2>
            <?php
            }
            ?>

            <div class="form-group">
                <label>Site Title</label>
                <input class="form-control count-text" name="site_title" maxlength="255" value="<?php echo $rowSetup['title']; ?>" placeholder="My Website" required>
            </div>
            <div class="form-group">
                <label>Author</label>
                <input class="form-control count-text" name="site_author" maxlength="255" value="<?php echo $rowSetup['author']; ?>" placeholder="John Doe">
            </div>
            <div class="form-group">
                <label>Keywords</label>
                <textarea class="form-control count-text" name="site_keywords" rows="3" maxlength="255"><?php echo $rowSetup['keywords']; ?></textarea>
            </div>
            <div class="form-group">
                <label>Description</label>
                <textarea class="form-control count-text" name="site_description" rows="3" maxlength="255"><?php echo $rowSetup['description']; ?></textarea>
            </div>
            <hr/>

            <div class="row">
                <div class="col-lg-12">
                    <div class="form-group">
                        <label>Location Name</label>
                        <input class="form-control count-text" name="location_name" maxlength="255" value="<?php echo $rowLocation['name']; ?>" required>
                    </div>
                </div>
            </div>

            <div class="form-group">
                <img src="<?php echo $logo; ?>" id="site_logo_preview" style="max-width:140px; height:auto; display:block;"/>
            </div>
            <div class="form-group">
                <label>Choose a Logo</label>
                <select class="form-control" name="site_logo" id="site_logo">
                    <option value="">None</option>
                    <?php
                    if ($handle = opendir($image_dir)) {

                        while (false !== ($file = readdir($handle))) {
                            if ('.' === $file) continue;
                            if ('..' === $file) continue;
                            if ($file === "Thumbs.db") continue;
                            if ($file === ".DS_Store") continue;
                            if ($file === "index.html") continue;

                            if ($file === $rowSetup['logo']) {
                                $logoCheck = "SELECTED";
                            } else {
                                $logoCheck = "";
                            }

                            echo "<option value='" . $file . "' $logoCheck>" . $file . "</option>";
                        }

                        closedir($handle);
                    }
                    ?>
                </select>
            </div>

            <div class="row">
                <div class="col-lg-2">
                    <div class="form-group">
                        <label>PAC Config</label>
                        <input class="form-control count-text" name="site_config" maxlength="10" value="<?php echo $rowSetup['config']; ?>" placeholder="1234">
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-6">
                    <div class="form-group" id="searchoptions">
                        <label>PAC Search Options</label>
                        <div class="checkbox">
                            <label>
                                <input class="searchopt_checkbox ls2pac_active" id="ls2pac" type="checkbox" <?php echo $isActive_ls2pac; ?> data-toggle="toggle">LS2 PAC
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input class="searchopt_radio ls2pac_default" name="defaultsearch" type="radio" value="1" <?php echo $isActive_default1; ?>>Use as Default
                            </label>
                        </div>
                        <h1></h1>
                        <div class="checkbox">
                            <label>
                                <input class="searchopt_checkbox ls2kids_active" id="ls2kids" type="checkbox" <?php echo $isActive_ls2kids; ?> data-toggle="toggle">LS2 Kids
                            </label>
                        </div>
                        <div class="radio">
                            <label>
                                <input class="searchopt_radio ls2kids_default" name="defaultsearch" type="radio" value="2" <?php echo $isActive_default2; ?>>Use as Default
                            </label>
                        </div>
                    </div>
                </div>
            </div>

            <?php
            //Check if user_level is Admin user and default location
            if ($_SESSION['user_level'] == 1 && $_GET['newlocation'] != 'true') {
                ?>
                <hr/>
                <div class="row">
                    <div class="col-lg-12">
                        <div class="form-group">
                            <label>Admin Settings</label>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-4">
                        <div class="form-group" id="sitemap_builder">
                            <button type="button" data-toggle="tooltip" class="sitemap_builder btn btn-primary" name="sitemap_builder" >
                                <i class='fa fa-fw fa-refresh'></i> Update Sitemap.xml
                            </button>
                            <br/>
                            <small class="sitemap_builder_msg status_msg"></small>
                        </div>
                    </div>
                </div>
                <?php if ($_SESSION['user_level'] == 1 && $multiBranch == 'true' && $_GET['loc_id'] != 1) {?>
                    <div class="row">
                        <div class="col-lg-4">
                            <div class="form-group" id="delete_location">
                                <button type="button" data-toggle="tooltip" class="delete_location btn btn-danger" name="delete_location" data-toggle="tooltip" data-original-title="Use Carefully!" data-placement="right" onclick="window.location='setup.php?deleteloc=true&loc_id=<?php echo $_GET['loc_id']; ?>';">
                                    <i class='fa fa-fw fa-trash'></i> Delete this location
                                </button>
                            </div>
                        </div>
                    </div>
                <?php }?>
                <?php
            }
            ?>
            <hr/>
            <div class="form-group">
                <span><small><?php echo "Updated: " . date('m-d-Y, H:i:s', strtotime($rowSetup['datetime'])) . " By: " . $rowSetup['author_name']; ?></small></span>
            </div>

            <button type="submit" name="setup_submit" class="btn btn-primary"><i class='fa fa-fw fa-save'></i> Save Changes
            </button>
            <button type="reset" class="btn btn-default"><i class='fa fa-fw fa-reply'></i> Cancel</button>

        </form>

    </div>
</div>
<?php
include_once('includes/footer.inc.php');
?>
