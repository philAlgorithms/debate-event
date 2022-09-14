<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>ANYDC Event</title>
    <style>
	.loader{  
	    height: 100vh;  
	    width:100vw;  
	    position:absolute;  
	    z-index: 999;  
	    background-color: #212127;; 
	    background-position: center;  
	    background-repeat: no-repeat;
	}
	#object {
	    position: absolute;
	    width: 11rem;
	    height: 10rem;
	    left: 50%;
	    top: 50%;
	    left: 50%;
	    transform: translate(-50%, -50%);
	}
    </style>
    <link rel="stylesheet" href="styles/css/style.css" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=DM+Sans:ital,wght@0,400;0,500;0,700;1,700&display=swap" rel="stylesheet">

<link href="https://fonts.googleapis.com/css2?family=Raleway:wght@400;500;600;700;800;900&display=swap" rel="stylesheet">
    {{-- <link rel="stylesheet" href="assets/css/fontawesome.css"> --}}
  </head>
  <body class="bg-dark">
    <div class="loader">
	<div id="object" >
	    <x-svg.logo.stale />
	</div>
    </div>
    <div class="main">
    {{ $slot }}
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <!--<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>-->

    <script>
	var loader = document.querySelector(".loader"); 
	var main = document.querySelector(".main");
	window.addEventListener("load",()=>{  
	    //loader.style.display="none"
	    //main.style.display="block";
	});  
    </script>
  </body>
</html>
