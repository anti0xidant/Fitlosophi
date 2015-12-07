﻿$(document).ready(function () {

    // Initial load of team roster
    loadStaticPages();

    //Setup Delete button so display modal window
    $('#staticPages').on('click', '.btnDeletePage', function () {
        $('#PageID').val($(this).val());
        $('#myModalLabel').html('Delete Page');
        $('#ModalMessage').html('Are you sure you want to delete the \" ' + $(this).closest("tr").children("td").eq(2).html() + '\" page?');
        $('#managePageModal').modal('show');

        //Remove any click events from Confirm button, setup confirm buttton for delete event
        $('#btnConfirm').unbind();
        $('#btnConfirm').click(function () {
            var StaticPageID = $('#PageID').val();

            $.ajax({
                url: '/api/PageAdmin/DeletePage?StaticPageID=' + StaticPageID,
                type: 'PUT',
                success: function (data, status, xhr) {
                    $('#managePageModal').modal('hide');
                    loadStaticPages();
                },
                error: function (xhr, status, err) {
                    alert('error:' + err);
                }
            });
        });
    });

    //Setup Publish button to display modal window
    $('#staticPages').on('click', '.btnPublishPage', function () {
        $('#PageID').val($(this).val());
        $('#myModalLabel').html('Publish Page');
        $('#ModalMessage').html('Are you sure you want to pubish the \" ' + $(this).closest("tr").children("td").eq(2).html() + '\" page?');
        $('#managePageModal').modal('show');

        //Remove any click events from Confirm button, setup confirm buttton for publish event
        $('#btnConfirm').unbind();
        $('#btnConfirm').click(function () {
            var StaticPageID = $('#PageID').val();

            $.ajax({
                url: '/api/PageAdmin/PublishPage?StaticPageID=' + StaticPageID,
                type: 'PUT',
                success: function (data, status, xhr) {
                    $('#managePageModal').modal('hide');
                    loadStaticPages();
                },
                error: function (xhr, status, err) {
                    alert('error:' + err);
                }
            });
        });
    });
});

/* Uses the  */
function loadStaticPages() {
    $.ajax({
        url: '/api/PageAdmin/GetAllPageSummaries',
        type: 'GET',
        success: function (data, status, xhr) {
            $('#staticPages').empty();

            $.each(data, function (index, staticPage) {
                $(createTableDataStaticPages(staticPage, index)).appendTo($('#staticPages'));
            });
        }
    });
};



// Creates HTML table row of player data which is used to populate Roster Table in loadRoster()
function createTableDataStaticPages(staticPage, index) {
    if (staticPage.IsActive) {
        var datePublished = '';

        if (staticPage.DatePublished) {
            datePublished = staticPage.DatePublished;
        }
        return '<tr><td>' + (index + 1) + '</td><td>' + staticPage.DateCreated + '</td><td>' + staticPage.ButtonName + '</td><td>' + datePublished + '</td></td><td><button class=\"btn btn-primary btn-xs btnEditPage\" value=\"' + staticPage.StaticPageID + '\">Edit</button></td>' +
            '<td><button class=\"btn btn-danger btn-xs btnDeletePage\" value=\"' + staticPage.StaticPageID + '\">Delete</button></td><td><button class=\"btn btn-success btn-xs btnPublishPage\" value=\"' + staticPage.StaticPageID + '\">Publish</button></td></tr>';
    }
}







