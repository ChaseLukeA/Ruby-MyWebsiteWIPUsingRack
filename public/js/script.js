$(function() {
    
    var $chaselukea = $("#logo-chase-luke-a");
    var $software = $("#logo-software-dev");
    var $mobile = $("#logo-mobile-dev");
    
    $chaselukea.css({
        opacity: 0
    }).delay(2000).animate({
        opacity: 1
    }, 2000).animate({
        color: "#ff0000"
    }, 2500);
    
    $software.css({
        fontSize: "0.25em",
        left: "-15%",
        opacity: 0.25
    }).animate({
        fontSize: "1.25em",
        left: "10%",
        opacity: 1
    }, 2500);
    
    $mobile.css({
        fontSize: "0.25em",
        right: "-15%",
        opacity: 0.25
    }).animate({
        fontSize: "1.25em",
        right: "10%",
        opacity: 1
    }, 2500);
    
});