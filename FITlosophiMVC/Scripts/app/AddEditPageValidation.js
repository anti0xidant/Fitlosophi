$(document).ready(function() {
    $('#PageForm').validate({
        rules: {
        ButtonName: {
            required: true,
            minlength: 1,
            maxlength: 12
        }
    },
        messages: {
            ButtonName: {
                required: "Please enter a button name.",
                minlength: "Button name must be at least 1 character.",
                maxlength: "Button name must not exceed 12 characters."
            }
        }
    
    });
});