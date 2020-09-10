<%-- 
    Document   : 404
    Created on : Jul 12, 2020, 10:08:29 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js">
<!--<![endif]-->


<head>
	<title>404 page | LookCare</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">

	<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/skin-lblue.css">

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

</head>

<body>
<!--[if lt IE 7]>
<p class="browsehappy">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
<![endif]-->

<!-- Start Loading -->
<section class="loading-overlay">
	<div class="Loading-Page">
		<h1 class="loader">Loading...</h1>
	</div>
</section>
<!-- End Loading  -->

<!-- start header -->


  <%@ include file='./headers/nheader.jsp'%>
<!-- end header -->

<!-- start main content -->
<main class="main-container">

    
    
    
    
    
    
    
Enter your name: <input type="number" id="fname" onkeyup="myFunction()">

<p>My name is: <span id="demo">500</span></p>
<p>My total is: <span id="demo5"></span></p>
<script>
function myFunction() {
  var x = document.getElementById("fname").value;
  var y = 500;
 
  document.getElementById("demo5").innerHTML = x*y;
}
</script>
    
    
    

<!--
Enter your name: <input type="number" id="inputfield1">

<p >Unite Price: <span  id="price">500</span></p>

<p >Total value: <span id="tprice">0</span></p>
    
        
<script>

$("#inputfield1").keyup(function() { // when key is released in "#inputfield1"
// "change()" is also possible instead of "keyup()", slightly different behavior

    var input_value = $("#inputfield1").val(); // get number as float
    // alternately parseInt(string, 10), in case you work with integers
   var input_value2 =50; // get number as float
    // the input is a number
        $("#tprice").val(input_value*input_value2); // update second field
   
});
</script>-->




	<section class="ui-not-found">
	<!-- start of page content -->

	<!--not found area start-->
	<div class="ui-not-found-page">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div id="primary" class="content-area padding-content white-color">
						<div id="main" class="site-main">

							<section class="error-404 not-found text-center">
								<h1 class="404">404</h1>

								<p class="lead">Sorry, we could not found the page you are looking for!</p>

								<div class="row">
									<div class="col-sm-4 col-sm-offset-4">
										<form role="search" method="get" id="searchform" action="#">
											<div>
												<input type="text" placeholder="Search and hit enter..." name="s" id="s" />
											</div>
										</form>
										<p class="go-back-home"><a href="index">
											Back to Home Page</a></p>
									</div>
								</div>

							</section>
							<!-- .error-404 -->

						</div>
						<!-- #main -->
					</div>
					<!-- #primary -->
				</div>
			</div>
		</div>
	</div>
	<!--registration area end-->
</section>
</main>
<!-- end  main content -->

<!-- start footer area -->
 <%@ include file='./headers/footer.jsp'%>
<!-- footer area end -->




<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<!-- jquery.meanmenu js
============================================ -->
<script src="js/menu.js"></script>

<!-- chosen.jquery.min.js
============================================ -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>

</body>


</html>