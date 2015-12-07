$(document).ready(function() {
    $.ajax({
        url: '/api/Categories/Get',
        type: 'GET',
        success: function(data, status, xhr) {
            $.each(data, function(index, category) {
                $('#PostCategoryID').append('<option value="' + category.CategoryID + '">' + category.CategoryName + '</option>');
            });
        }

    });

    $('#PostCategoryID').change(function () {

        if ($('#PostCategoryID').val() === 0) {
            $('#PostCategoryID').css('color', '#999999');
        } else {
            $('#PostCategoryID').css('color', '#555');
        }
    });

    // When user wants to upload image as CoverIMG
    $('#CoverImgURL').click(function () {
        // clear all fields
        $('.progress-bar').removeAttr('style');
        $('.preview').empty();
        $('#btnConfirm').unbind();

        $('#addImageModal').modal('show');

        $('#btnConfirm').click(function() {
            $('#CoverImgURL').val($('#imageURL').val());
            $('#addImageModal').modal('hide');
            // clear $('#ImgURLHiddenInput') value
            // clear preview image
            // close modal
        });
    });
});