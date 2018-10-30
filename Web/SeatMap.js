$(document).ready(function () {
    var a = new Array();
    $(".outer-seat").on("click", function () {
        $(this).toggleClass('selected-outerColor');
        $(this).children().toggleClass('selected-innerColor');
        if ($(this).hasClass('selected-outerColor'))
            a.push($(this).attr('name'));
        else {
            var i = a.indexOf($(this));
            a.splice(i, 1);
        }
        console.log(a);
    });
    $("#sub").click(function () {
        var j = JSON.stringify(a);
        console.log("Loaded");
        $.ajax({
            url: "SeatUpdate.php",
            type: "POST",

            data: {
                arr: j
            },
            success: function (result) {
                alert(j);
            }
        });
    });

    // $(".inner-seat").click( function() {
    // 	console.log("Hi");
    //     $(this).toggleClass('selected-innerColor');
    // });

});