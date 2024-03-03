<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="csrf-token" content="{{ csrf_token() }}" />

    <title>The All Nigerian Youths Debate Championships and National Youth Conference 2022.</title>
    <link rel="icon" href="/images/anydc.png" type="img/png">
    <link rel="stylesheet" href="/styles/css/style.css" />
    <link rel="stylesheet" href="/styles/css/custom-style.css" />
    <link rel="stylesheet" href="/styles/css/fontawesome.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,700&display=swap"
        rel="stylesheet">

    <link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700;800;900&display=swap"
        rel="stylesheet">
    {{-- <link rel="stylesheet" href="assets/css/fontawesome.css"> --}}
</head>

<body class="bg-dark">
    {{ $slot }}
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous">
    </script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"
        integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
    <!-- <script src="/scripts/helpers.js"></script> -->
    <!-- <script src="/scripts/register.js"></script> -->
    <script src="/scripts/login.js"></script>
    <script type="text/javascript">

        function showItem(item, hideToItem) {
            hideToItem = hideToItem || undefined;

            item.removeClass('d-none');
            if (hideToItem != undefined)
                hideToItem.addClass('d-none');
        }

        function checkErrors(response) {
            if (response.type == 'validation') {
                for (let key in response.message) {
                    let el = $(`#${key}`);
                    if (el.length) {
                        el.addClass('is-invalid');
                        if (el.closest('.input-group').find('.invalid-feedback').length)
                            el.closest('.input-group').find('.invalid-feedback').text(response.message[key][0]);
                    }
                }
            }
        }

        function clearInvalid(container) {
            $(container).find('.is-invalid').removeClass('is-invalid');
        }
        $(document).ready(function() {
            $.ajaxSetup({
                headers: {
                    'accept': 'application/json',
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                }
            });
            $('#registerModal').modal('show');
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
                    type: "POST",
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
                    error: function(err) {
                        var error = err.responseJSON;
                        console.log(error);
                        clearInvalid('.modal-register');
                        checkErrors(error);
                        showItem(that, loading);
                    },
                    success: function(data) {
                        console.log(data);
                        showItem(that, loading);
                        clearInvalid('.modal-register');
                        alert(
                            `Registration succesful!. See you at the event, ${data.data.name.split(" ")[0]}`);
                        $('.modal-register').modal('hide');
                        setTimeout(function() {
                            location.reload();
                        }, 2000);
                    }
                });
            });
        });
    </script>
</body>

</html>
