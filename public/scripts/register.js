$(document).ready(function () {
    const name = $('#name');
    const email = $('#email');
    const loading = $('#register--spinning');

    $("#register").click(function() {
        const that = $(this);
        showItem(loading, that);

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
                showItem(that, loading);
            },
            success:function(data){
                showItem(that, loading);
                clearInvalid('.modal-register');
                alert(`Registration succesful!. See you at the event, ${data.data.name.split(" ")[0]}`);
                $('.modal-register').modal('hide');
                setTimeout(function() {
                    location.reload();
                }, 2000);
            }
        });
    });
});
