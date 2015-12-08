$(document).ready(function() {

    var tags = [];
    $.ajax({
        url: '/api/HashTags/Get',
        type: 'GET',
        success: function (data, status, xhr) {

            $.each(data, function (index, hashTag) {
                tags.push(hashTag.TagName);
            });

        }
    });

    $('#searchbox').autocomplete({
        source: tags
    });
});

