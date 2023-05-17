$(function () {
    $('.cls-3').hover(function () {
        $("#p_hokkaido").show();
    },function () {
        $("#p_hokkaido").hide();
    });
    $('.cls-1').hover(function () {
        $("#p_to-hoku").show();
    },function () {
        $("#p_to-hoku").hide();
    });
    $('.cls-2').hover(function () {
        $("#p_kanto").show();
    },function () {
        $("#p_kanto").hide();
    });
    $('.cls-4').hover(function () {
        $("#p_chu-bu").show();
    },function () {
        $("#p_chu-bu").hide();
    });
    $('.cls-6').hover(function () {
        $("#p_kinki").show();
    },function () {
        $("#p_kinki").hide();
    });
    $('.cls-9').hover(function () {
        $("#p_chu-goku").show();
    },function () {
        $("#p_chu-goku").hide();
    });
    $('.cls-7').hover(function () {
        $("#p_sikoku").show();
    },function () {
        $("#p_sikoku").hide();
    });
    $('.cls-5').hover(function () {
        $("#p_kyu-shu").show();
    },function () {
        $("#p_kyu-shu").hide();
    });
    $('.cls-8').hover(function () {
        $("#p_okinawa").show();
    },function () {
        $("#p_okinawa").hide();
    });
        $("#japan").hover(function () {
        $(window).mousemove(function () {
            var mouse_x = event.clientX + 5;
            var mouse_y = $(window).scrollTop() + event.clientY + 5;
            $('.p_box').css({
                "left":mouse_x,
                "top":mouse_y
            });
        });
    });
});