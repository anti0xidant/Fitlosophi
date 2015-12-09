$(document).ready(function() {

    var tags = [];
    $.ajax({
        url: '/api/HashTags/Get',
        type: 'GET',
        success: function (data, status, xhr) {

            $.each(data, function (index, hashTag) {
                tags.push({label: hashTag.TagName, value: hashTag.TagID});
            });

        }
    });

    $('#searchbox').autocomplete({
        source: tags
    });
});

