$(document).ready(function() {
    $('.dropdown-toggle').dropdown();
    $('.popover_link').popover({
        html:       true,
        trigger:    'hover',
        delay:      {
            show:   500,
            hide:   100
        }
    });


    $('table').each(function(){
        setup_datatable(this);
    });

    if ($('#inventory_table').length) {
        inventory_table_page();
    }

    if ($.trim($('#alert_header').text()).length > 0) {
        console.log("Showing Alert Header");
        $('#alert_header').slideDown();

        self.setTimeout(function () {
            $('#alert_header').slideUp();
        }, 4000);
    }

    if ($('#notice').text().length > 0) {
        $('#notice').slideDown();
        self.setTimeout(function () {
            $('#notice').slideUp();
        }, 5000);
    }

    if ($('#alert').text().length > 0) {
        $('#alert').slideDown();
        self.setTimeout(function () {
            $('#alert').slideUp();
        }, 5000);
    }

    $('#local_credentials_link').click(function (event) {
        $("#login_form").slideDown();
        event.preventDefault(); // Prevent link from following its href
    });
});

function setup_datatable(table)
{
    $(table).dataTable({
        "sScrollY": "400px",
        "bPaginate": true,
        "bDestroy": true,
        "iDisplayLength": 15,
        "aLengthMenu": [[15, 25, 50, 100, 200, 1], [15, 25, 50, 100, 200, "All"]]
    }).fnSort( [ [0,'asc'] ] );
}

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