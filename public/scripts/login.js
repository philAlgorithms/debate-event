$("body").ready(function(){

   var reg = $("#login");
   var loading = $("#login--spinning");
  $("#login").click(function(){
    showItem(loading, reg);
	  
    // showAlert('primary', 'please wait');

    $.ajax({
        type:"POST",
        url:"/login",
	headers: {
            'Accept': 'application/json',
	    'XSRF-TOKEN': $('meta[name="_token"]').attr('content'),
	},
	data: {
	    email: $('#email').val(),
	    password: $('#password').val(),
	},
	datatype: 'json',
        error: function(err){
	    showItem(reg, loading);
	    // handleCommonErrors(err.responseJSON);
	    if(err.responseJSON.type === 'validation'){
	      showItem(loading, reg);
	      alert('Incorrect email/password');
	    //   Swal.fire({
		// 	icon: 'error',
		// 	title: "Login Error", 
		// 	text: 'Incorrect username/password', 
	    //   });
	    }else
			{
				alert(err.responseJSON.message);
				// Swal.fire({
				// 	icon: 'error',
				// 	title: "Login Error", 
				// 	text: err.responseJSON.message, 
				// });
			}
        },
        success:function(data){
			showItem(reg, loading);
			alert("Login Successful");
			window.location.replace(data['dashboard']);
		},
    });
    
  });

});

