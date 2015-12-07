// Initialize your tinyMCE Editor with your preferred options
$(document).ready(function() {
    tinyMCE.init({

        selector: "#tinymce",
        menubar: false,
        skin: "andrew",
        plugins: ["link, image, fullscreen preview"],
        toolbar1: "undo redo | bold italic underline strikethrough | subscript superscript | alignleft aligncenter alignright | numlist bullist | fullscreen",
        toolbar2: "removeformat | formatselect | fontselect | fontsizeselect | link image | preview",
        content_css: "css/example.css"
    });

});

