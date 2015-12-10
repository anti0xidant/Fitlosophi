$(document).ready(function () {

    $('#PostForm').validate({
        rules: {
            Title: {
                required: true,
                maxlength: 30
            },
            CategoryID: {
                required: true
            },
            CoverImgURL: {
                required: true,
                url: true
            },
            Body: {
                required: true,
                minlength: 200
            },
            Tags: {
                required: true
            }
        },
        messages: {
            Title: {
                required: "Please enter a title.",
                maxlength: "Title must not exceed 30 characters."
            },
            CategoryID: {
                required: "Please chose a category"
            },
            CoverImgURL: {
                required: "Please enter a URL",
                url: "This is not a URL"
            },
            Body: {
                required: "Please write something in the body",
                minlength: "Must be at least 200 characters"
            },
            Tags: {
                required: "Please enter a hashtag"
            }
        }
    });
});