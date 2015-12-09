$(document).ready(function () {

    loadPageMenu();

});

/* Uses the  */
function loadPageMenu() {
    $.ajax({
        url: '/api/PageAdmin/GetAllPageSummaries',
        type: 'GET',
        success: function (data, status, xhr) {
            if (data.length == 0) {
                $('#PagesDropdown').remove();
            }
            $.each(data, function (index, staticPage) {
                $(createStaticPagesMenu(staticPage, index)).appendTo($('#StaticPageMenu'));
            });
        },
        error: function (xhr, status, err) {
            $('#PagesDropdown').remove();
            alert('error:' + err);
        }
    });
};

// Creates HTML table row of player data which is used to populate Roster Table in loadRoster()
function createStaticPagesMenu(staticPage, index) {
    if (staticPage.IsActive && staticPage.IsPublished) {
        return '<li><a href="/Home/StaticPage?StaticPageID=' + staticPage.StaticPageID + '">' + staticPage.ButtonName + '</a></li>';
    }
}
