$(document).ready(function () {
    const name = $('#name');
    const email = $('#email');
    const role = $('#role');
    const school = $('#school');
    const partnerName = $('#partner_name');
    const partnerEmail = $('#partner_email');
    const partnerRole = $('#partner_role');
    const partnerSchool = $('#partner_school');
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
                role: role.val(),
                school: school.val(),
                partner_name: partnerName.val(),
                partner_email: partnerEmail.val(),
                partner_role: partnerRole.val(),
                partner_school: partnerSchool.val(),
            },
            datatype: 'json',
            error: function(err){
                var error = err.responseJSON;
                console.log(error);
                clearInvalid('.modal-register');
                checkErrors(error);
                showItem(that, loading);
            },
            success:function(data){
                console.log(data);
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
