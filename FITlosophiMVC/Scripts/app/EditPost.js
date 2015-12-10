$(document).ready(function () {

    $('#CategoryID').css('color', '#555');

    var categoryChoice = $('#categoryTemp').val();

    $.ajax({
        url: '/api/Categories/Get',
        type: 'GET',
        success: function (data, status, xhr) {
            $.each(data, function (index, category) {
                if (categoryChoice == category.CategoryID) {
                    $('#CategoryID').append('<option value="' + category.CategoryID + '" selected>' + category.CategoryName + '</option>');
                } else {
                    $('#CategoryID').append('<option value="' + category.CategoryID + '">' + category.CategoryName + '</option>');
                }
                
            });
        }

    });
  

    // When user wants to upload image as CoverIMG
    $('#CoverImgURL').click(function () {
        // clear all fields
        $('.progress-bar').removeAttr('style');
        $('.preview').empty();
        $('#btnConfirm').unbind();

        $('#addImageModal').modal('show');

        $('#btnConfirm').click(function () {
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