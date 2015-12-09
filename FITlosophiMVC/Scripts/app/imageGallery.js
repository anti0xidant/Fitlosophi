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
        },
        error: function (xhr, status, err) {
            alert('error:' + err);
        }
    });
});

function addImageToGallery(image, index) {

    var url = "http://res.cloudinary.com/dk0wmifkq/image/upload/w_200,h_150,c_fit/v" + image.version + '/' + image.public_id + '.' + image.format;
    return '<li><a href="#" title="Image" data-subtitle="Click to Add" id="imageToCopy"><img src="' + url + '"></a></li>';
}

