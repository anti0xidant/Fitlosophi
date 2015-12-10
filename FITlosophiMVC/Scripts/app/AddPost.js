$(document).ready(function() {
    $.ajax({
        url: '/api/Categories/Get',
        type: 'GET',
        success: function(data, status, xhr) {
            $.each(data, function(index, category) {
                $('#CategoryID').append('<option value="' + category.CategoryID + '">' + category.CategoryName + '</option>');
            });
        }

    });

    $('#CategoryID').change(function () {

        if ($('#CategoryID').val() === 0) {
            $('#CategoryID').css('color', '#999999');
        } else {
            $('#CategoryID').css('color', '#555');
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

    $('#modalLaunch').click(function () {
        $('#imageURL').val("");
        $('.progress-bar').removeAttr('style');
        $('.preview').empty();
        $('#imageGeneratorModal').modal('show');
    });

});