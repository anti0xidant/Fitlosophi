$(document).ready(function() {
    $('#modalLaunch').click(function () {
        $('#imageURL').val("");
        $('.progress-bar').removeAttr('style');
        $('.preview').empty();
        $('#imageGeneratorModal').modal('show');
    });

    
});