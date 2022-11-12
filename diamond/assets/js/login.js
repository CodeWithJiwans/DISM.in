$(document).ready(function () {
    $("#login_here").click(function (e) {
        e.preventDefault();
        $.ajax({
            type: "POST",
            url: "php/login_success.php",
            data: {
                email: $("#login_email").val(),
                password: $("#login_password").val(),
            },
            beforeSent: function () {
                $("#login_here").html("Please wait...");
            },
            success: function (response) {
                window.location = "index.html";
            }
        });
    });
});