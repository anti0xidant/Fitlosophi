﻿$(document).ready(function () {

    // Initial load of team roster
    loadPosts();

    //Setup Delete button so display modal window
    $('#managePosts').on('click', '.btnDeletePost', function () {
        $('#PostID').val($(this).val());
        $('#myModalLabel').html('Delete Post');
        $('#ModalMessage').html('Are you sure you want to delete the \" ' + $(this).closest("tr").children("td").eq(2).html() + '\" post?');
        $('#managePostsModal').modal('show');

        //Remove any click events from Confirm button, setup confirm buttton for delete event
        $('#btnConfirm').unbind();
        $('#btnConfirm').click(function () {
            var PostID = $('#PostID').val();

            $.ajax({
                url: '/api/PostsAdmin/DeletePost?PostID=' + PostID,
                type: 'PUT',
                success: function (data, status, xhr) {
                    $('#managePostsModal').modal('hide');
                    loadPosts();
                },
                error: function (xhr, status, err) {
                    alert('error:' + err);
                }
            });
        });
    });

    //Setup Publish button to display modal window
    $('#managePosts').on('click', '.btnPublishPost', function () {
        $('#PostID').val($(this).val());
        $('#myModalLabel').html('Publish post');
        $('#ModalMessage').html('Are you sure you want to pubish the \" ' + $(this).closest("tr").children("td").eq(2).html() + '\" post?');
        $('#managePostsModal').modal('show');

        //Remove any click events from Confirm button, setup confirm buttton for publish event
        $('#btnConfirm').unbind();
        $('#btnConfirm').click(function () {
            var PostID = $('#PostID').val();

            $.ajax({
                url: '/api/PostsAdmin/PublishPost?PostID=' + PostID,
                type: 'PUT',
                success: function (data, status, xhr) {
                    $('#managePostsModal').modal('hide');
                    loadPosts();
                },
                error: function (xhr, status, err) {
                    alert('error:' + err);
                }
            });
        });
    });
});

/* Uses the  */
function loadPosts() {
    $.ajax({
        url: '/api/PostsAdmin/GetAllPostSummaries',
        type: 'GET',
        success: function (data, status, xhr) {
            $('#managePosts').empty();

            $.each(data, function (index, post) {
                $(createTableDataManagePosts(post, index)).appendTo($('#managePosts'));
            });
        }
    });
};



// Creates HTML table row of player data which is used to populate Roster Table in loadRoster()
function createTableDataManagePosts(post, index) {

    if (post.IsActive) {
        //var dateCreated = $.format.date(post.DateCreated, "dd~MM~yyyy");
        var datePublished = '';

        if (post.DatePublished) {
            datePublished = post.DatePublished;
        }

        return '<tr><td>' + (index + 1) + '</td><td>' + post.DateCreated + '</td><td>' + post.Title + '</td><td>' + post.WriterName + '</td><td>' + datePublished + '</td></td><td><button class=\"btn btn-primary btn-xs btnEditPost\" value=\"' + post.PostID + '\">Edit</button></td>' +
            '<td><button class=\"btn btn-danger btn-xs btnDeletePost\" value=\"' + post.PostID + '\">Delete</button></td><td><button class=\"btn btn-success btn-xs btnPublishPost\" value=\"' + post.PostID + '\">Publish</button></td></tr>';
    }
}







