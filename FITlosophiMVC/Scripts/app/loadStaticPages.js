$(document).ready(function () {

    loadStaticPages();

});

/* Uses the  */
function loadStaticPages() {
    $.ajax({
        url: '/api/PageAdmin/GetAllPageSummaries',
        type: 'GET',
        success: function (data, status, xhr) {
            $('#staticPages').empty();

            $.each(data, function (index, staticPage) {
                $(createStaticPagesMenu(staticPage, index)).appendTo($('#staticPages'));
            });
        }
    });
};

// Creates HTML table row of player data which is used to populate Roster Table in loadRoster()
function createStaticPagesMenu(staticPage, index) {
    if (staticPage.IsActive) {
        var datePublished = '';

        return '<tr><td>' + (index + 1) + '</td><td>' + staticPage.DateCreated + '</td><td>' + staticPage.ButtonName + '</td><td>' + datePublished + '</td></td><td><button class=\"btn btn-primary btn-xs btnEditPage\" value=\"' + staticPage.StaticPageID + '\">Edit</button></td>' +
            '<td><button class=\"btn btn-danger btn-xs btnDeletePage\" value=\"' + staticPage.StaticPageID + '\">Delete</button></td><td><button class=\"btn btn-success btn-xs btnPublishPage\" value=\"' + staticPage.StaticPageID + '\">Publish</button></td></tr>';
    }
}
