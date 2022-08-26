$(function () {
    // // 각각 서브메뉴가 내려오기
    // $(".nav>li").mouseover(function() {
    //     $(this).children(".submenu").stop().slideDown();
    // });
    // $(".nav>li").mouseout(function() {
    //     $(this).children(".submenu").stop().slideUp();
    // });

    $("nav").mouseover(function() {
        // $(this).children(".submenu").children("ul").slideDown();
        // $(this).children(".submenu").children("li").slideDown();
        $(this).children(".submenu").stop().slideDown();
    });
    $("nav").mouseout(function() {
        // $(this).children(".submenu").children("ul").slideUp();
        // $(this).children(".submenu").children("li").slideDown();
        $(this).children(".submenu").stop().slideUp();
    });

    // 배너 순서대로
    let sli = $(".slide>div")

    function slideImage(){
        sli.css({"transition-duration":"400ms","margin-left":"-100%"});

        window.setTimeout(function(){
            sli.removeAttr("style").children(":first").appendTo(sli);            
        }, 400);
    }

    let timerId = window.setInterval(slideImage, 2000);



});