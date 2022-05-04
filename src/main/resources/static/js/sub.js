$(document).ready(function () {
    $("input:checkbox").on('click', function () {
        if ($(this).prop('checked')) {
            $(this).parent("td").addClass("selected");
            $(this).parent("td").siblings().addClass("selected");
        } else {
            $(this).parent().removeClass("selected");
            $(this).parent("td").siblings().removeClass("selected");
        }
    });
});

$(document).ready(function () {
    $(".line_up").on("click", function () {
        $(this).toggleClass("on");
        $(this).parent().siblings().slideToggle(200);
    });
});