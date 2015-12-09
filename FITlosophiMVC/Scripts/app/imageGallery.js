$(document).ready(function () {
    $('.least-gallery').least();

    $.cloudinary.config({ cloud_name: 'dk0wmifkq', api_key: '712155957643256' });
    var url = $.cloudinary.url('blogImage', { format: 'json', type: 'list' });
    $.ajax({
        url: url,
        type: 'GET',
        success: function (data, status, xhr) {
            $.each(data.resources, function (index, image) {
                $(addImageToGallery(image, index)).appendTo($('#blogImageGallery'));
            });
            
            $('.imageToCopy').on("click", function () {
                var imageInsertURL = $(this).children('input').eq(0).val();
                var x = '<img src="' + imageInsertURL + '"/>';
                tinymce.get("tinymce").execCommand('mceInsertContent', false, x);
            });

        },
        error: function (xhr, status, err) {
            alert('error:' + err);
        }
    });

   
});

function addImageToGallery(image, index) {

    var url = "http://res.cloudinary.com/dk0wmifkq/image/upload/w_200,h_150,c_fit/v" + image.version + '/' + image.public_id + '.' + image.format;
    var value = "http://res.cloudinary.com/dk0wmifkq/image/upload/v" + image.version + '/' + image.public_id + '.' + image.format;
    return '<li><a href="#" title="Image" data-subtitle="Click to Add" class="imageToCopy"><input type="hidden" value="' + value + '"/><img src="' + url + '"></a></li>';
}

