$(function() {
    //change the slides interval time to 4 seconds
    $(".carousel").carousel({
        interval: 4000,
    });

    //make menus drop automatically
    $("ul.nav li.dropdown").hover(function() {
        $(".dropdown-menu", this).fadeIn();
    }, function() {
        $(".dropdown-menu", this).fadeOut("fast");
    }); //hover

    //highlight the current nav
    $(document).ready(function(){
        $('header .nav-pills a').each(function(index) {
            if(this.href.trim() == window.location)
                $(this).addClass("selected");
        });
    });
})


