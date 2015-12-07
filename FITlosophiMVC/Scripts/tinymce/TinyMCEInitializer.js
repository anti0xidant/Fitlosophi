// Initialize your tinyMCE Editor with your preferred options
$(document).ready(function() {
    tinyMCE.init({

        selector: "#tinymce",
        menubar: false,
        skin: "andrew",
        plugins: ["link, image, fullscreen, preview, imagetools"],
        toolbar1: "undo redo | bold italic underline strikethrough | subscript superscript | alignleft aligncenter alignright | numlist bullist | fullscreen",
        toolbar2: "removeformat | formatselect | fontselect | fontsizeselect | link image | preview",
        tooldbar3: "imagetools",
        content_css: "css/example.css",
        image_advtab: true,
        image_list: [
            { title: "Dog", value: "https://i.ytimg.com/vi/KY4IzMcjX3Y/maxresdefault.jpg" },
            { title: "Cat", value: "https://www.petfinder.com/wp-content/uploads/2012/11/140272627-grooming-needs-senior-cat-632x475.jpg" }
        ]
    });

});

