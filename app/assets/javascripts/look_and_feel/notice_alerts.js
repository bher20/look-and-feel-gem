function displayNotice(message) {
    var id = "#notice";

    updateNoticeAlert(message, id);
}

function displayAlert(message) {
    var id = "#alert";

    updateNoticeAlert(message, id);
}

function checkNoticeAlertVisible(id) {
    if (!$(id).is(":hidden")) {
        console.log(id + " is visible. Sliding up...");
        $(id).slideUp(
            5000
        );
    }

    else {
        console.log(id + " is not visible.");
    }
}

function updateNoticeAlert(message, id) {
    $(id).html(message);
    $(id).slideDown();

    self.setTimeout(function () {
        $(id).slideUp();
    }, 3000);

    $(id).html();
}