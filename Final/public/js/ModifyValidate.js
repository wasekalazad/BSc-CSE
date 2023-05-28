$('#update-form').validate({
    submitHandler: form => {
        $.ajax({
            url: '../controllers/ModifyValidate.php',
            method: "POST",
            data: $('#update-form').serialize(),
            cache: false,
            processData: false,
            success: data => {
                if (data === 'Success')
                    $(location).prop('href', 'Profile.php');
                else {
                    $('#message')
                        .html(data)
                        .addClass('error-message');
                    $('#username, #email')
                        .addClass('form-input-error');
                }
            }
        })
    },
    rules: {
        username: {
            required: true,
            minlength: 4,
            maxlength: 15,
            normalizer: value => removeWhitespaces(value, '#username')
        },
        email: {
            required: true,
            emailRegex: true,
            minlength: 6,
            maxlength: 30,
            normalizer: value => removeWhitespaces(value, '#email')
        },
        password: {
            required: true,
            minlength: 6,
            maxlength: 15,
            normalizer: value => removeWhitespaces(value, '#password')
        },
        phone: {
            required: true,
            phoneRegex: true,
            minlength: 11,
            maxlength: 15,
            normalizer: value => removeWhitespaces(value, '#phone'),
        },
    },
    messages: {
        username: {
            required: "Please enter a username",
            minlength: "Must consist of at least 4 characters",
            maxlength: "Must be no more than 15 characters long"
        },
        email: {
            required: "Please enter email address",
            maxlength: "Must be no more than 30 characters long"
        },
        password: {
            required: "Please provide a password",
            minlength: "Must be at least 6 characters long",
            maxlength: "Must be no more than 15 characters long"
        },
    },
    errorClass: "form-input-error warning-message"
})