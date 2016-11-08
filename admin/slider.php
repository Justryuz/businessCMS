<?php
define('inc_access', TRUE);

include 'includes/header.php';

//slide preview
if ($_GET["preview"]>""){
	$slidePreviewId=$_GET["preview"];

	$sqlSlidePreview = mysqli_query($db_conn, "SELECT id, title, content, link, image FROM slider WHERE id='$slidePreviewId'");
	$rowSlidePreview = mysqli_fetch_array($sqlSlidePreview );

		echo "<style type='text/css'>html, body {margin-top:0px !important;} nav, .row, .version {display:none !important;} #wrapper {padding-left: 0px !important;}</style>";
		echo "<p><img src=../uploads/".$rowSlidePreview['image']." style='max-width:350px; max-height:150px;' /></p><br/>";
		echo "<p>".$rowSlidePreview['content']."</p>";

		if ($rowSlidePreview["link"]>0){
			echo "<br/><p><i class='fa fa-fw fa-external-link'></i> <a href='../page.php?ref=".$rowSlidePreview['link']."' target='_blank'>Page Link</a></p>";
		}
}
?>

	<div class="row">
	<div class="col-lg-12">
		<h1 class="page-header">
			Image Slider
		</h1>
	</div>
	</div>
	<div class="row">
	<div class="col-lg-12">
<?php

	if ($_GET["newslide"] OR $_GET["editslide"]) {

		$slideMsg="";

		if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
			$uploadMsg = "<div class='alert alert-success'>The file ". basename( $_FILES["fileToUpload"]["name"]) ." has been uploaded.<button type='button' class='close' data-dismiss='alert'>×</button></div>";
		} else {
			$uploadMsg = "";
		}

		//Update existing slide
		if ($_GET["editslide"]) {
			$theslideId = $_GET["editslide"];
			$slideLabel = "Edit Slide Title";

			//update data on submit
			if (!empty($_POST["slide_title"])) {
				$slideUpdate = "UPDATE slider SET title='".$_POST["slide_title"]."', content='".htmlspecialchars($_POST["slide_content"], ENT_QUOTES)."', link='".$_POST["slide_link"]."', image='".$_POST["slide_image"]."',active=".$_POST["slide_status"].",datetime='".date("Y-m-d H:i:s")."' WHERE id='$theslideId'";
				mysqli_query($db_conn, $slideUpdate);
				$slideMsg="<div class='alert alert-success'>The slide ".$_POST["slide_title"]." has been updated.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
			}

			$sqlSlides = mysqli_query($db_conn, "SELECT id, title, image, content, link, active, datetime FROM slider WHERE id='$theslideId'");
			$rowSlides = mysqli_fetch_array($sqlSlides);

		//Create new slide
		} else if ($_GET["newslide"]) {
			$slideLabel = "New Slide Title";
			//insert data on submit
			if (!empty($_POST["slide_title"])) {
				$slideInsert = "INSERT INTO slider (title, content, link, image, active) VALUES ('".$_POST["slide_title"]."', '".htmlspecialchars($_POST["slide_content"], ENT_QUOTES)."', '".$_POST["slide_link"]."', '".$_POST["slide_image"]."', ".$_POST["slide_status"].")";
				mysqli_query($db_conn, $slideInsert);
				$slideMsg="<div class='alert alert-success'>The slide ".$_POST["slide_title"]." has been added.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
			}
		}

		//alert messages
		if ($uploadMsg !="") {
			echo $uploadMsg;
		}

		if ($slideMsg !="") {
			echo $slideMsg;
		}

		//get and built pages list
		$sqlNavPages= mysqli_query($db_conn, "SELECT id, title, active FROM pages WHERE active=1 ORDER BY title");
		$pagesStr = "<option value=''>Custom</option>";

		while ($rowNavPages = mysqli_fetch_array($sqlNavPages)) {
			$navPageId=$rowNavPages['id'];
			$navPageTitle=$rowNavPages['title'];
			$pagesStr = $pagesStr . "<option value=".$navPageId.">".$navPageTitle."</option>";
		}

		if ($_GET["editslide"]){
			//active status
			if ($rowSlides['active']==1) {
				$selActive1="SELECTED";
				$selActive0="";
			} else {
				$selActive0="SELECTED";
				$selActive1="";
			}
		}

		if ($rowSlides["image"]=="") {
			$image = "http://placehold.it/350x150&text=No Image";
		} else {
			$image = "../uploads/".$rowSlides["image"];
		}
?>
	<form role="slideForm" method="post" enctype="multipart/form-data">
        <div class="form-group">
            <label>Status</label>
            <select class="form-control input-sm" name="slide_status">
                <option value="1" <?php if($_GET["editslide"]){echo $selActive1;}?>>Active</option>
                <option value="0" <?php if($_GET["editslide"]){echo $selActive0;} ?>>Draft</option>
            </select>
        </div>
		<div class="form-group">
			<label><?php echo $slideLabel; ?></label>
			<input class="form-control input-sm" name="slide_title" value="<?php if($_GET["editslide"]){echo $rowSlides['title'];} ?>" placeholder="Slide Title">
		</div>
		<hr/>
        <div class="form-group">
            <label>Upload Image</label>
            <input type="file" name="fileToUpload" id="fileToUpload">
        </div>
        <div class="form-group">
        	<img src="<?php echo $image;?>" id="slide_image_preview" style="max-width:350px; max-height:150px;"/>
        </div>

		<div class="form-group">
			<label>Use an Existing Image</label>
			<select class="form-control input-sm" name="slide_image" id="slide_image">
				<option value="">None</option>
				<?php
					if ($handle = opendir($target_dir)) {
						while (false !== ($file = readdir($handle))) {
							if ('.' === $file) continue;
							if ('..' === $file) continue;
							if ($file==="Thumbs.db") continue;
							if ($file===".DS_Store") continue;
							if ($file==="index.html") continue;

							if ($file===$rowSlides['image']){
								$imageCheck="SELECTED";
							} else {
								$imageCheck="";
							}

							echo "<option value=".$file." $imageCheck>".$file."</option>";
						}
						closedir($handle);
					}
				?>
			</select>
		</div>
		<hr/>
		<div class="form-group">
			<label>Choose a link</label>
			<select class="form-control input-sm" name="slide_link" id="slide_link">
				<option value="">None</option>
				<?php
					$pagesStr = "";
					$sqlSliderLink = mysqli_query($db_conn, "SELECT id, title FROM pages WHERE active=1 ORDER BY title ASC");
					while ($rowSliderLink = mysqli_fetch_array($sqlSliderLink)) {
						$sliderLinkId = $rowSliderLink['id'];
						$sliderLinkTitle = $rowSliderLink['title'];

						if (ctype_digit($rowSlides['link'])){
							if ($sliderLinkId===$rowSlides['link']){
								$isSelected="SELECTED";
							} else {
								$isSelected="";
							}
						}

						$pagesStr = $pagesStr . "<option value=".$sliderLinkId." ".$isSelected.">".$sliderLinkTitle."</option>";
					}

					$pagesStr = "<optgroup label='Existing Pages'>".$pagesStr."</optgroup>";
					//$pagesStr = "<optgroup label='Existing Pages'>".$pagesStr."</optgroup>" . $extraPages;
					echo $pagesStr;
				?>
			</select>
		</div>
		<hr/>
		<div class="form-group">
			<label>Description</label>
			<textarea class="form-control input-sm" rows="3" name="slide_content" placeholder="Text" maxlength="255"><?php if($_GET["editslide"]){echo $rowSlides['content'];} ?></textarea>
		</div>
        <div class="form-group">
			<span><?php if($_GET["editslide"]){echo "Updated: ".date('m-d-Y, H:i:s',strtotime($rowSlides['datetime']));} ?></span>
		</div>
		<button type="submit" name="slider_submit" class="btn btn-default"><i class='fa fa-fw fa-save'></i> Submit</button>
		<button type="reset" class="btn btn-default"><i class='fa fa-fw fa-refresh'></i> Reset</button>

	</form>

<?php
	} else {
		$deleteMsg="";
		$deleteConfirm="";
		$slideMsg="";
		$delslideId = $_GET["deleteslide"];
		$delslideTitle = $_GET["deletetitle"];
		$moveslideId = $_GET["moveslide"];
		$moveslideTitle = $_GET["movetitle"];

		//delete slide
		if ($_GET["deleteslide"] AND $_GET["deletetitle"] AND !$_GET["confirm"]) {

			$deleteMsg="<div class='alert alert-danger'>Are you sure you want to delete ".$delslideTitle."? <a href='?deleteslide=".$delslideId."&deletetitle=".$delslideTitle."&confirm=yes' class='alert-link'>Yes</a><button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
			echo $deleteMsg;

		} elseif ($_GET["deleteslide"] AND $_GET["deletetitle"] AND $_GET["confirm"]=="yes") {
			//delete slide after clicking Yes
			$slideDelete = "DELETE FROM slider WHERE id='$delslideId'";
			mysqli_query($db_conn, $slideDelete);

			$deleteMsg="<div class='alert alert-success'>".$delslideTitle." has been deleted.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
			echo $deleteMsg;
		}

		//move slide to top of list
		if (($_GET["moveslide"] AND $_GET["movetitle"])) {
			$slidesDateUpdate = "UPDATE slider SET datetime='".date("Y-m-d H:i:s")."' WHERE id='$moveslideId'";
			mysqli_query($db_conn, $slidesDateUpdate);

			$slideMsg="<div class='alert alert-success'>".$moveslideTitle." has been moved to the top.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
		}

		//update heading on submit
		if (!empty($_POST["main_heading"])) {
			$setupUpdate = "UPDATE setup SET sliderheading='".$_POST["main_heading"]."'";
			mysqli_query($db_conn, $setupUpdate);

			$slideMsg="<div class='alert alert-success'>The heading has been updated.<button type='button' class='close' data-dismiss='alert' onclick=\"window.location.href='slider.php'\">×</button></div>";
		}

	$sqlSetup = mysqli_query($db_conn, "SELECT sliderheading FROM setup");
	$rowSetup  = mysqli_fetch_array($sqlSetup);
?>
<!--modal preview window-->

<style>
#webslideDialog iframe {
	width: 100%;
	height: 600px;
	frameborder: 0;
	border: none;
}
.modal-dialog {
	width:95%;
}
</style>


 <div class="modal fade" id="webslideDialog">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h4 class="modal-title" id="myModalTitle"></h4>
      </div>
      <div class="modal-body">
			<iframe id="myModalFile" src="" frameborder="0"></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

	<button type="button" class="btn btn-default" onclick="window.location='?newslide=true';"><i class='fa fa-fw fa-paper-plane'></i> Add a New Slide</button>
		<h2></h2>
		<div class="table-responsive">
    <?php
		if ($slideMsg !="") {
			echo $slideMsg;
		}

		echo "<form role='portfolioForm' method='post' action=''>
		<div class='form-group'>
		<label>Heading</label>
		<input class='form-control input-sm' name='main_heading' value='".$rowSetup['sliderheading']."' placeholder='My Slides'>
		</div>
		<table class='table table-bordered table-hover table-striped'>
		<thead>
		<tr>
		<th>Slide Title</th>
		<th>Status</th>
		<th>Actions</th>
		</tr>
		</thead>
		<tbody>";

		$sqlslides = mysqli_query($db_conn, "SELECT id, title, image, content, active FROM slider ORDER BY datetime DESC");
		while ($rowSlides = mysqli_fetch_array($sqlslides)) {
			$slideId=$rowSlides['id'];
			$slideTitle=$rowSlides['title'];
			$slideTumbnail=$rowSlides['image'];
			$slideContent=$rowSlides['content'];
			$slideActive=$rowSlides['active'];

			if ($rowSlides['active']==0){
				$isActive="<i style='color:red;'>(Draft)</i>";
			} else {
				$isActive="";
			}

			echo "<tr>
			<td><a href='?editslide=$slideId' title='Edit'>".$slideTitle."</a></td>
			<td class='col-xs-1'>
			<span>".$isActive."</span>
			</td>
			<td class='col-xs-2'>
			<button type='button' data-toggle='tooltip' title='Preview' class='btn btn-xs btn-default' onclick=\"showMyModal('$slideTitle', '?preview=$slideId')\"><i class='fa fa-fw fa-image'></i></button>
			<button type='button' data-toggle='tooltip' title='Move' class='btn btn-xs btn-default' onclick=\"window.location.href='?moveslide=$slideId&movetitle=$slideTitle'\"><i class='fa fa-fw fa-arrow-up'></i></button>
			<button type='button' data-toggle='tooltip' title='Delete' class='btn btn-xs btn-default' onclick=\"window.location.href='?deleteslide=$slideId&deletetitle=$slideTitle'\"><i class='fa fa-fw fa-trash'></i></button>
			</td>
			</tr>";
		}

		echo "</tbody>
		</table>
		<button type='submit' class='btn btn-default'><i class='fa fa-fw fa-save'></i> Submit</button>
		<button type='reset' class='btn btn-default'><i class='fa fa-fw fa-refresh'></i> Reset</button>
		</form>
		</div>";

	} //end of long else

	echo "</div>
	</div>
	<p></p>";

	include 'includes/footer.php';
?>