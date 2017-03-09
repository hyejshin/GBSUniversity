jQuery(document).ready(function ($) {
    $("#openModal").click(function () {
        return false;
        $("#my-dialog, #dialog-background").show();
    });

    $("#modal-background,#btn-close-modal").click(function () {
        return false;
        $("#my-dialog, #dialog-background").css("display", "none");
    });

 
});
