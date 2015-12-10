$(document).ready(function() {

    var tags = [];
    $.ajax({
        url: '/api/HashTags/Get',
        type: 'GET',
        success: function (data, status, xhr) {

            $.each(data, function (index, hashTag) {
                tags.push({ label: hashTag.TagName, value: hashTag.TagID });
            });

        }
    });

    $('#searchbox').autocomplete({
        source: tags,
        
        // Set hiddenfield TagID to the value of what you select.
        // Display label name of what you select in text box.
        select: function(event, ui) {
            event.preventDefault();
            $('#searchbox').val(ui.item.label);
            $('#TagID').val(ui.item.value);
        },
        // Display label name in textbox when your mouse hovers over it
        focus: function(event, ui) {
            event.preventDefault();
            $('#searchbox').val(ui.item.label);
        },
        // If no match is returned, then set TagID to zero again.
        response: function(event, ui) {
            if (ui.content.length === 0) {
                $('#TagID').val(0);
            } 
        }

        //response: function(event, ui) {
        //    if (ui.content.length === 0) {
        //        $('#TagID').val(0);
        //    } else {

        //        var indexFound = $.inArray($('#searchbox').val(), ui.content);

        //        if (indexFound > -1) {
        //            $('#TagID').val(ui.content[indexFound].value);
        //        } else {
        //            $('#TagID').val(0);
        //        }
        //    }
        //}
    });
});

