// Initialize your tinyMCE Editor with your preferred options
$(document).ready(function() {
    tinyMCE.init({

        selector: "#tinymce",
        menubar: false,
        skin: "andrew",
        toolbar1: "undo redo | bold italic underline strikethrough | subscript superscript | alignleft aligncenter alignright | numlist bullist",
        toolbar2: "removeformat | formatselect | fontselect | fontsizeselect",
        content_css: "css/example.css"
    });

});

