<%-- 
    Document   : blog-masonry
    Created on : Jul 12, 2020, 10:09:10 AM
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
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Blog | LookCare</title>
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
	<link rel="stylesheet" href="css/setting.css">
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


	<div class="container">
		<!-- blog content -->
		<div class="mainpanel">



			<div class="contentpanel">

				<div id="bloglist" class="row">

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog1.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Getting Started With Film Photography</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 03, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog2.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Rigging in Autodesk 3Ds Max</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">18 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item blog-quote">
							<div class="quote quote-primary">
								<a href="#">
									Walking on water and developing software from a specification are easy if both are frozen
									<small class="quote-author">- Edward V Berard</small>
								</a>
							</div>
							<div class="blog-details">
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
							</div><!-- blog-details -->
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog3.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Which is the best 3D Rendering Software?</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<div class="blog-video">
								<iframe src="http://player.vimeo.com/video/51478176" allowfullscreen></iframe>
							</div>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Traversing Files in Java 7</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 01, 2014</li>
									<li><a href="#">5 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item blog-quote">
							<div class="quote quote-success">
								<a href="#">
									Any fool can write code that a computer can understand. Good programmers write code that humans can understand.
									<small class="quote-author">- Martin Fowler</small>
								</a>
							</div>
							<div class="blog-details">
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Dec 31, 2013</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
							</div><!-- blog-details -->
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog4.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">How to Create Infinite Scrolling on Your Website</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Dec 30, 2014</li>
									<li><a href="#">3 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/media1.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Getting Started With Film Photography</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Dec 30, 2013</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item blog-quote">
							<div class="quote quote-danger">
								<a href="#">
									Debugging is twice as hard as writing the code in the first place. Therefore, if you write the code as cleverly as possible, you are, by definition, not smart enough to debug it.
									<small class="quote-author">- Brian Kernighan</small>
								</a>
							</div>
							<div class="blog-details">
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Dec 29, 2013</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
							</div><!-- blog-details -->
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog1.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Getting Started With Film Photography</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 03, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog2.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Rigging in Autodesk 3Ds Max</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">18 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item blog-quote">
							<div class="quote quote-primary">
								<a href="#">
									Walking on water and developing software from a specification are easy if both are frozen
									<small class="quote-author">- Edward V Berard</small>
								</a>
							</div>
							<div class="blog-details">
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
							</div><!-- blog-details -->
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

					<div class="col-xs-6 col-sm-4 col-md-3">
						<div class="blog-item">
							<a href="single-post-v2" class="blog-img"><img src="img/photos/blog3.jpg" class="img-responsive" alt="" /></a>
							<div class="blog-details">
								<h4 class="blog-title"><a href="#">Which is the best 3D Rendering Software?</a></h4>
								<ul class="blog-meta">
									<li>By: <a href="#">TmPxls</a></li>
									<li>Jan 02, 2014</li>
									<li><a href="#">2 Comments</a></li>
								</ul>
								<div class="blog-summary">
									<p>Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae</p>
									<button class="btn btn-sm btn-white">Read More</button>
								</div>
							</div>
						</div><!-- blog-item -->
					</div><!-- col-xs-6 -->

				</div><!-- row -->

			</div><!-- contentpanel -->

		</div><!-- mainpanel -->
		<!-- end blog content -->
	</div>


</main>
<!-- end main content -->

<!-- start footer area -->
  <%@ include file='./headers/footer.jsp'%>

<!-- footer area end -->


<!-- All Script -->
<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<script src="js/menu.js"></script>

<script src="js/owl.carousel.min.js"></script>

<script src="js/masonry.pkgd.min.js"></script>

<script src="js/main.js"></script>


<script type="text/javascript">
	jQuery(window).load(function(){

		var container = document.querySelector('#bloglist');
		var msnry = new Masonry( container, {
			// options
			columnWidth: '.col-xs-6',
			itemSelector: '.col-xs-6'
		});

		// check on load
		if(jQuery(window).width() <= 480 )
			msnry.destroy();

		// check on resize
		jQuery(window).resize(function(){
			if(jQuery(this).width() <= 480 )
				msnry.destroy();
		});

	});

</script>


</body>


</html>