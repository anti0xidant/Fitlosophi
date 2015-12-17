$(document).ready(function () {

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


//    $('#managePosts').on('click', '.btnPublishPost', function () {
//        $('#PublishModalPostID').val($(this).val());
//        $('#PublishModalBodyTitle').html('Publish:' + $(this).closest("tr").children("td").eq(2).html());
//        $('#PublishModal').modal('show');

//        //Remove any click events from Confirm button, setup confirm buttton for publish event
//        $('#PublishConfirm').unbind();
//        $('#PublishConfirm').click(function () {
   
//            var post = {};
//            post.PostID = $('#PublishModalPostID').val();
//            post.HasSchedule = $('.HasSchedule:checked').val();
//            post.StartDate = $('#FromDate').val();
//            post.EndDate = $('#ToDate').val();

//            $.ajax({
//                url: '/api/PostsAdmin/PublishPostWithSchedule',
//                type: 'PUT',
//                data: post,
//                success: function (data, status, xhr) {
//                    $('#PublishModal').modal('hide');
//                    loadPosts();
//                },
//                error: function (xhr, status, err) {
//                    alert('error:' + err);
//                }
//            });
//        });
//    });
//});

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
        var publishBtn = '';

        //Display the published date if it has been published, if not create a publish button
        if (post.IsPublished) {
            datePublished = post.DatePublished;
        } else {
            publishBtn = '<button class=\"btn btn-tales-one btn-xs btnPublishPost\" value=\"' + post.PostID + '\">Publish</button>';
        }

        return '<tr><td>' + (index + 1) + '</td><td>' + post.DateCreated + '</td><td>' + post.Title + '</td><td>' + post.WriterName + '</td><td>' + datePublished + '</td></td><td><a class=\"btn btn-tales-two btn-xs btnEditPost\" href="/CMS/EditPost?id=' + post.PostID + '\">Edit Post</a></td>' +
            '<td><button class=\"btn btn-danger btn-xs btnDeletePost\" value=\"' + post.PostID + '\">Delete</button></td><td>' + publishBtn + '</td></tr>';
    }
}








