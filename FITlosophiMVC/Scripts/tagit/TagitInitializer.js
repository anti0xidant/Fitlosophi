$(document).ready(function() {
    var x = [];
    $.ajax({
        url: 'api/HashTags/Get',
        type: 'GET',
        success: function(data, status, xhr) {
            $.each(data, function(index, hashTag) {
                x.Push(hashTag);
            });
        }
    });

    $('#tagit').tagit({
        placeholderText: "Hashtags",
        allowSpaces: true,
        availableTags: x
    });


});