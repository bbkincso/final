$(document).ready(function () {
    $(".faq").hide();
    $(".faqh3").click(function () {
        $(this).next(".faq").slideToggle(500);
    });
});



$(document).ready(function () {
    $(".fancybox").fancybox();
});


document.getElementById("demo").innerHTML = Date();


$(function () {
    if (!Modernizr.inputtypes.date) {
        $('input[type=date]').datepicker({
            dateFormat: 'yy-mm-dd'
        }
        );
    }
});


