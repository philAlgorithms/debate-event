$(document).ready(function () {
    const name = $('#name');
    const email = $('#email');

    $("#register").click(function() {
        const that = $(this);
        console.log('clicked');
        $.ajax({
            type:"POST",
                url: "/register",
            data: {
                name: name.val(),
                email: email.val(),
            },
            datatype: 'json',
            error: function(err){
                var error = err.responseJSON;

                clearInvalid('.modal-register');
                checkErrors(error);
            },
            success:function(data){
                clearInvalid('.modal-register');
                alert(`Registration succesful!. See you at the event, ${data.data.name.split(" ")[0]}`);
                $('.modal-register').modal('hide');
            }
        });
    });
});