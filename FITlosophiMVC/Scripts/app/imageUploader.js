$(document).ready(function () {
   
    $.cloudinary.config({ cloud_name: 'dk0wmifkq', api_key: '712155957643256' });
    
    //Setup input form for image upload to Cloudinary
    $('.upload_form').append($.cloudinary.unsigned_upload_tag("bep61vxi", { cloud_name: 'dk0wmifkq', tags: 'blogImage' }));


    $('.cloudinary_fileupload').bind('cloudinarydone', function (e, data) {
        //set the url data.url
        $('#imageURL').val(data.result.url)
        console.log(data.result.url);

        //Display thumbnail preview image
        $('.preview').html(
          $.cloudinary.image(data.result.public_id,
            {
                format: data.result.format, version: data.result.version,
                crop: 'fill', width: 250, height: 250
            })
        );
        $('.image_public_id').val(data.result.public_id);
        return true;
    });

    //Display progress bar
    $('.cloudinary_fileupload').bind('fileuploadprogress', function (e, data) {
        $('.progress-bar').css('width', Math.round((data.loaded * 100.0) / data.total) + '%');
    });
});