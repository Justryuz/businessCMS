<?php
//Hot Titles Carousel
getHottitlesTabs();
if ($hottitlesCount > 0) {
    echo "<div class='grad-blue container-fluid hottitles'>";
    echo "<div class='container bannerwrapper'>";

    echo "<div class='col-xs-12 col-lg-12 hottitles-title'>";
    echo "<h1 class='text-white'>" . $hottitlesHeading . "</h1>";
    echo "</div>";

    echo "<div style='clear:both;'></div>";

    echo "<div class='well'>";

    //Carousel Tabs
    echo "<div id='hottitlesTabs'>";
    echo "<div class='panel text-center'>";
    echo "<ul class='nav nav-pills center-tabs'>";
    echo $hottitlesTabs; //gets the hot title tabs
    echo "</ul>";
    echo "</div>"; //.panel
    echo "</div>"; //.container

    //Main Carousel
    echo "<div class='carousel slide loader-size-MD' id='hottitlesCarousel'>";

    echo "<div class='carousel-inner MD'></div>"; //appends hot titles carousel to this div

    echo "</div>"; //.carousel

    echo "</div>"; //.well

    echo "</div>"; //.container
    echo "</div>"; //.grad-blue
}
?>