$(document).ready(function() {
    $.ajax({
        url: '/api/Categories/Get',
        type: 'GET',
        success: function(data, status, xhr) {
            $.each(data, function(index, category) {
                $('#PostCategoryID').append('<option value="' + category.CategoryID + '">' + category.CategoryName + '</option>');
            });
        }

    })

    $('#PostCategoryID').change(function () {

        if ($('#PostCategoryID').val() === 0) {
            $('#PostCategoryID').css('color', '#999999');
        } else {
            $('#PostCategoryID').css('color', '#555');
        }
    });

    // When wants to upload image as CoverIMG
    $('#CoverImgURL').click(function () {
        // Display modal

        $('#AddImageURL').click(function() {
            $('#CoverImgURL').val($('#ImgURLHiddenInput').val());
            // clear $('#ImgURLHiddenInput') value
            // clear preview image
            // close modal
        });
    });

});