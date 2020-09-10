<%-- 
    Document   : blog
    Created on : Jul 12, 2020, 10:09:23 AM
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
	<title>Blog Standard | LookCare</title>
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
	<link rel="stylesheet" href="css/setting.css">
	<link rel="stylesheet" href="css/owl.carousel.css">
	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
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
<main class="main-container ptb-40">

	<!-- Begin Blog -->
	<div class="ld-subpage-content">
		<div class="ld-blog">



			<!-- Blog / Srart
          ================================================== -->
			<section class="blog">
				<div class="container">

					<div class="row">

						<div class="col-md-9">

							<!-- Post Start -->
							<article class="post">

								<div class="main-info pull-left">
									<!-- Date -->
									<div class="date">
										<span class="month">May</span>
										<span class="day">31</span>
									</div>

									<!-- Comments Number -->
									<a href="#" class="commentsnumber">
										<span>14</span> comments
									</a>
								</div>

								<div class="post-content">

									<!-- Thumbnail -->
									<a href="#"><img src="img/blog/man.jpg" alt=""></a>

									<!-- Title -->
									<h2><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin faucibus neque vitae felis efficitur interdum</a></h2>

									<!-- Meta -->
									<div class="meta clearfix">

                                            <span>
                                  <img src="img/icons/user.png" alt="author">posted by Admin,
                              </span>
                                            <span>
                                  <img src="img/icons/ribbon.png" alt="author">
                                </span><span>in <a href="#">Technology</a>, <a href="#">Devices</a>.</span>

									</div>

									<!-- Content -->
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin faucibus neque vitae felis efficitur interdum. Praesent quis auctor ipsum. Phasellus rhoncus tincidunt nunc vitae congue. Integer sodales diam tincidunt faucibus imperdiet. Integer ultricies varius volutpat. Phasellus nec rutrum nisi. Quisque imperdiet odio auctor mollis ultrices....
									</p>

									<!-- Read More -->
									<a href="#" class="btn btn-custom-6">Read More</a>

								</div>

							</article>
							<!-- Post End -->

							<!-- Post Start -->
							<article class="post">

								<div class="main-info pull-left">
									<!-- Date -->
									<div class="date">
										<span class="month">Feb</span>
										<span class="day">21</span>
									</div>

									<!-- Comments Number -->
									<a href="#" class="commentsnumber">
										<span>7</span> comments
									</a>
								</div>

								<div class="post-content">

									<!-- Thumbnail -->
									<a href="#"><img src="img/blog/sailing.jpg" alt=""></a>

									<!-- Title -->
									<h2><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </a></h2>

									<!-- Meta -->
									<div class="meta clearfix">
										<img src="img/icons/user.png" alt="author"><span>posted by Admin,</span>
										<img src="img/icons/ribbon.png" alt="author"> <span>in <a href="#">Technology</a>, <a href="#">Devices</a>.</span>
									</div>

									<!-- Content -->
									<p>
										Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin faucibus neque vitae felis efficitur interdum. Praesent quis auctor ipsum. Phasellus rhoncus tincidunt nunc vitae congue. Integer sodales diam tincidunt faucibus imperdiet. Integer ultricies varius volutpat. Phasellus nec rutrum nisi. Quisque imperdiet odio auctor mollis ultrices. pro...
									</p>

									<!-- Read More -->
									<a href="#" class="btn btn-custom-6">Read More</a>



								</div>



							</article>
							<!-- Post End -->


							<div class="row">
								<div class="col-md-12">
									<div class="pagination_area pull-right">
										<nav>
											<ul class="pagination">
												<li>
													<a href="#" aria-label="Previous">
														<i class="fa fa-caret-left"></i>
													</a>
												</li>
												<li class="active"><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li>
													<a href="#" aria-label="Next">
														<i class="fa fa-caret-right"></i>
													</a>
												</li>
											</ul>
										</nav>
									</div>
								</div>
							</div>

						</div>

						<!-- Sidebar Start -->
						<div class="col-md-3">

							<div id="sidebar">

								<!-- Search -->
								<div class="widget">
									<div class="search-icon"><input type="text" class="searching" placeholder="Type and press enter" /></div>
								</div>

								<!-- Categories -->
								<div class="widget">
									<h3>Categories</h3>
									<ul class="categories-list">
										<li><a href="#">Design</a></li>
										<li><a href="#">Technology</a></li>
										<li><a href="#">Video</a></li>
										<li><a href="#">Music</a></li>
										<li><a href="#">Uncategorized</a></li>
									</ul>
								</div>

								<!-- Tags -->
								<div class="widget">
									<h3>Tags</h3>
									<ul class="tags-list">
										<li><a href="#">Wordpress</a></li>
										<li><a href="#">Technology</a></li>
										<li><a href="#">HTML5</a></li>
										<li><a href="#">Illustrator</a></li>
										<li><a href="#">Music</a></li>
										<li><a href="#">CSS3</a></li>
										<li><a href="#">Video</a></li>
										<li><a href="#">Photoshop</a></li>
										<li><a href="#">jQuery</a></li>
									</ul>
								</div>

								<!-- Text Widget -->
								<div class="widget">
									<h3>About Us</h3>
									<p>Nec labores blandit ei, eius assum facilisi at pro. Ut pro vero possit delicatissimi, id esse quando neglegentur sit facer</p>
								</div>

							</div>
						</div>
						<!-- Sidebar End -->
					</div>
					<!-- /.row -->

				</div>

			</section>
			<!-- Blog / End
          ================================================== -->





		</div>
		<!-- /.life-style-blog -->
	</div>

</main>
<!-- end  main content -->

<!-- start footer area -->
  <%@ include file='./headers/nheader.jsp'%>

<!-- footer area end -->




<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<script src="js/menu.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>




</body>


</html>