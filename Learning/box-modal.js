$(document).ready(function() {
    var modal = $("#myModal");

    var modal1 = document.getElementById("myModal");

    var btn = $("#btn");

    var span = $(".close");

    btn.click(function() {
        modal.show(400);
    });

    span.click(function() {
        modal.hide();
    });

    window.onclick = function(event) {
        console.log(event.target);
        console.log(modal1);
        if (event.target == modal1) {
            modal.hide();
        }
    }
});