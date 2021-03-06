$(document).ready(function() {

    //Add responsive classes to wysiwyg elements
    $('.content img').addClass('img-responsive');
    $('.content iframe').addClass('embed-responsive-item iframe');

    // Sticky Footer initial page load and resize
    $(window).on('load resize', function() {
        var bodyHeight = $(window).height();
        var navbarHeight = $('.navbar-static-top:first').height();
        var bannerHeight = $('.bannerwrapper:first').height();
        var footerHeight = $('.footer:first').height();
        var calcContentHeight = bodyHeight - navbarHeight - bannerHeight - footerHeight - 131; //change last value to compensate for padding.

        if (calcContentHeight > 0) {
            $('.content:first').css({'min-height': calcContentHeight});
        }
    });

});

//Page Load/Performance Checker
window.onload = function() {
    //var loadTime = ((window.performance.timing.domComplete- window.performance.timing.navigationStart)/1000)+" sec.";
    var loadTime = window.performance.timing.domContentLoadedEventEnd-window.performance.timing.navigationStart;
    console.log('Page load time is '+ loadTime);
    console.log(window.performance);
};