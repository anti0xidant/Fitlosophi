$(document).ready(function() {
    var x = [];
    $.ajax({
        url: '/api/HashTags',
        type: 'GET',
        success: function (data, status, xhr) {
           
            $.each(data, function(index, hashTag) {
                x.push(hashTag.TagName);
            });
         
        },
        error: function(jqXHR, error, msg) {
            alert("FUCK");
        }
    });

    $('#tagit').tagit({
        placeholderText: "Hashtags",
        allowSpaces: true,
        availableTags: x
    });


});