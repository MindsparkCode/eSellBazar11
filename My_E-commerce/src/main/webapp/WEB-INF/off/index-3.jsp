<%-- 
    Document   : index-3
    Created on : Jul 12, 2020, 10:11:17 AM
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
	<title>Home page | LookCare</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="">
	<meta name="viewport" content="width=device-width, initial-scale=1">

	<!-- Fav icon -->
	<link rel="shortcut icon" href="img/favicon.ico">

	<!-- Font -->
	<link href='https://fonts.googleapis.com/css?family=Lato:400,400italic,900,700,700italic,300' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Raleway:300,400,500,600,700%7CDancing+Script%7CMontserrat:400,700%7CMerriweather:400,300italic%7CLato:400,700,900' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Cantata+One' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,400italic,700,600' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Ubuntu:400,300,500,700' rel='stylesheet' type='text/css'>
	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

	<link rel="stylesheet" href="css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link href="css/magnific-popup.css" rel="stylesheet">

	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/normalize.css">
	<link rel="stylesheet" href="css/skin-lblue.css">

	<link rel="stylesheet" href="css/ecommerce.css">

	<link rel="stylesheet" href="layerslider/css/layerslider.css" type="text/css"><!-- Layer Slider -->

	<!-- Owl carousel -->
	<link href="css/owl.carousel.css" rel="stylesheet">

	<link rel="stylesheet" href="css/main.css">
	<link rel="stylesheet" href="style.css">
	<link rel="stylesheet" type="text/css" href="css/revolutionslider_settings.css" media="screen" />
	<link rel="stylesheet" href="css/responsive.css">
	<script src="js/vendor/modernizr-2.6.2.min.js"></script>
</head>

<body class="style-14 index-3">
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
<header>
	<!-- Top bar starts -->
	<div class="top-bar">
		<div class="container">

			<!-- Contact starts -->
			<div class="tb-contact pull-left">
				<!-- Email -->
				<i class="fa fa-envelope color"></i> &nbsp; <a href="mailto:contact@domain.com">contact@domain.com</a>
				&nbsp;&nbsp;
				<!-- Phone -->
				<i class="fa fa-phone color"></i> &nbsp; +1 (342)-(323)-4923
			</div>
			<!-- Contact ends -->

			     <!-- Shopping kart starts -->
                    <div class="tb-shopping-cart pull-right">
                        <!-- Link with badge -->
                        <a href="#" class="btn btn-white btn-xs b-dropdown"><i class="fa fa-shopping-cart"></i> <i class="fa fa-angle-down color"></i> <span class="badge badge-color">2</span></a>
                        <!-- Dropdown content with item details -->
                        <div class="b-dropdown-block">
                            <!-- Heading -->
                            <h4><i class="fa fa-shopping-cart color"></i> Your Items</h4>

                            <!-- ************forEach function start************** -->
                            <ul>
                                <c:forEach var="cart" items="${cartlist}">
                                    <li>
                                        <!-- Item image -->
                                        <div class="cart-img">
                                           
                                            <a href="#"><img src="img/ecommerce/view-cart/${cart.productname}" alt="" class="img-responsive" /></a>
                                        </div>
                                        <!-- Item heading and price -->  
                                        <div class="cart-title">
                                            <h5><a href="#">${cart.quentity}</a></h5>
                                            <!-- Item price -->
                                            <span class="label label-color label-sm">"${cart.totalprice}"</span>
                                        </div>
                                        <div class="clearfix"></div>
                                    </li>
                                </c:forEach>
                            </ul>
                            <a href="#" class="btn btn-white btn-sm">View Cart</a> &nbsp; <a href="#" class="btn btn-color btn-sm">Checkout</a>
                        </div>
                    </div>

                    <!-- ************forEach function End************** -->
 
                    <!-- Shopping kart ends -->
			<!-- Langauge starts -->
			<div class="tb-language dropdown pull-right">
				<a href="#" data-target="#" data-toggle="dropdown"><i class="fa fa-globe"></i> English <i class="fa fa-angle-down color"></i></a>
				<!-- Dropdown menu with languages -->
				<ul class="dropdown-menu dropdown-mini" role="menu">
					<li><a href="#">Germany</a></li>
					<li><a href="#">France</a></li>
					<li><a href="#">Brazil</a></li>
				</ul>
			</div>
			<!-- Language ends -->

			<!-- Search section for responsive design -->
			<div class="tb-search pull-left">
				<a href="#" class="b-dropdown"><i class="fa fa-search square-2 rounded-1 bg-color white"></i></a>
				<div class="b-dropdown-block">
					<form>
						<!-- Input Group -->
						<div class="input-group">
							<input type="text" class="form-control" placeholder="Type Something">
									<span class="input-group-btn">
										<button class="btn btn-color" type="button">Search</button>
									</span>
						</div>
					</form>
				</div>
			</div>
			<!-- Search section ends -->

			<!-- Social media starts -->
			<div class="tb-social pull-right">
				<div class="brand-bg text-right">
					<!-- Brand Icons -->
					<a href="#" class="facebook"><i class="fa fa-facebook square-2 rounded-1"></i></a>
					<a href="#" class="twitter"><i class="fa fa-twitter square-2 rounded-1"></i></a>
					<a href="#" class="google-plus"><i class="fa fa-google-plus square-2 rounded-1"></i></a>
				</div>
			</div>
			<!-- Social media ends -->

			<div class="clearfix"></div>
		</div>
	</div>

	<!-- Top bar ends -->

	<!-- Header One Starts -->
	<div class="header-1">

		<!-- Container -->
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-sm-4">
					<!-- Logo section -->
					<div class="logo">
						<h1><a href="index"><i class="fa fa-bookmark-o"></i> LookCare</a></h1>
					</div>
				</div>
				<div class="col-md-6 col-md-offset-2 col-sm-5 col-sm-offset-3 hidden-xs">
					<!-- Search Form -->
					<div class="header-search">
						<form>
							<!-- Input Group -->
							<div class="input-group">
								<input type="text" class="form-control" placeholder="Type Something">
										<span class="input-group-btn">
											<button class="btn btn-color" type="button">Search</button>
										</span>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

		<!-- Navigation starts -->

		<div class="navi">
			<div class="container">
				<div class="navy">
					<ul>
						<!-- Main menu -->
						<li><a href="#">Home</a>
							<!-- Submenu -->
							<ul>

								<li><a href="index">Home 1</a></li>
								<li><a href="index-2"><span>Home 2</span></a></li>
								<li><a href="index-3"><span>Home 3</span></a></li>

							</ul>
						</li>

						<li><a href="#">Features</a>
							<ul>
								<li><a href="#">Footer</a>
									<ul>
										<li><a href="footer-one">Footer1</a></li>
										<li><a href="footer-two">Footer2</a></li>
										<li><a href="footer-three">Footer3</a></li>
									</ul>
								</li>
								<li><a href="#">Price Table</a>
									<ul>
										<li><a href="price-table-one">Price Table1</a></li>
										<li><a href="price-table-two">Price Table2</a></li>

									</ul>
								</li>

							</ul>
						</li>

						<li><a href="#">Category</a>
							<ul>
								<li><a href="#">Laptop</a>
									<ul>
										<li><a href="#">Vaio</a></li>
										<li><a href="#">Samsung</a></li>
										<li><a href="#">Toshiba</a></li>
										<li><a href="#">HP</a></li>

									</ul>
								</li>
								<li><a href="#">Smartphone</a>
									<ul>
										<li><a href="#">Iphone</a></li>
										<li><a href="#">Oppo</a></li>
										<li><a href="#">Nokia</a></li>
										<li><a href="#">Sony</a></li>
										<li><a href="#">Samsung</a></li>

									</ul>
								</li>
								<li><a href="#">Accessories</a>
									<ul>
										<li><a href="#">Headphone</a></li>
										<li><a href="#">Adapter</a></li>
										<li><a href="#">Bag</a></li>
										<li><a href="#">Baby doll</a></li>

									</ul>
								</li>
								<!-- Multi level menu -->
								<li><a href="#">Multi Level Menu</a>
									<ul>
										<!-- Sub menu -->
										<li><a href="#">Menu #1</a></li>
										<li><a href="#">Menu #1</a></li>
										<li><a href="#">Menu #1</a>
											<ul>
												<!-- Sub menu -->
												<li><a href="#">Menu #2</a></li>
												<li><a href="#">Menu #2</a></li>
												<li><a href="#">Menu #2</a>
													<ul>
														<!-- Sub menu -->
														<li><a href="#">Menu #3</a></li>
														<li><a href="#">Menu #3</a></li>
														<li><a href="#">Menu #3</a></li>
													</ul>
												</li>
											</ul>
										</li>
									</ul>
								</li>
							</ul>
						</li>

						<li><a href="#">Blog</a>
							<ul>
								<li><a href="blog"><span>Blog Default</span></a></li>
								<li><a href="blog-masonry"><span>Blog Masonry</span></a></li>
								<li><a href="blog-full-width"><span>Blog Full Width</span></a></li>
								<li><a href="single-post"><span>Single Page 1</span></a></li>
								<li><a href="single-post-v2"><span>Single Page 2</span></a></li>
							</ul>
						</li>

						<li><a href="#">Pages</a>
							<ul>
								<li><a href="shop"><span>Shop</span></a></li>
								<li><a href="single-product"><span>Single product</span></a></li>
								<li><a href="shopping-cart"><span>Cart</span></a></li>
								<li><a href="checkout"><span>Checkout</span></a></li>
								<li><a href="wishlist"><span>Wishlist</span></a></li>
								<li><a href="signin"><span>Sign In</span></a></li>
								<li><a href="signup"><span>Sign Up</span></a></li>
								<li><a href="404"><span>404 Page</span></a></li>
							</ul>
						</li>

						<li><a href="about">About Us</a></li>
						<li><a href="contact">Contact Us</a></li>
					</ul>
				</div>
			</div>
		</div>

		<!-- Navigation ends -->

	</div>

	<!-- Header one ends -->

</header>
<!-- end header -->

<!-- start main content -->
<main class="main-container">

	<!-- new collection directory -->
	<section class="block no-padding">


					<div class="main-slider overlape">
						<div id="full-slider-wrapper">
							<div id="layerslider" style="width:100%;height:450px; ">

								<div class="ls-slide" data-ls="transition3d:all; timeshift:-1000; slidedelay: 7000;">

									<img  src="img/resource/main-slide3.jpg" class="ls-bg" alt="Slide background"/>

									<div class="ls-slide" style=" font-size:45px; font-weight:900; top:175px; left:30px; text-transform:uppercase; color:#ffffff;" data-ls="easingin:easeOutBack;  delayin:2000; rotatexin:90; durationin:2000;">top brands 2016</div>

									<div class="ls-slide" style=" font-size:14px; top:230px; left:70px; color:#ffffff;" data-ls="easingin:easeOutExpo; delayin:2500; rotatexin:90; durationin:2000;">Hi,I need help creating a powerpoint presentation</div>

									<a href="#" title="" class="ls-slide bg-color" style="padding:11px 13px; color:#ffffff; border-radius:3px; font-family:Lato; font-size:13px; top:270px; left:135px;" data-ls="easingin:easeOutBack; delayin:2000; offsetxin:bottom; rotatexin:90; durationin:2000;">More Know</a>

									<a href="#" title="" class="ls-slide text-color border-color" style="padding:9px 13px; border-radius:3px; border:2px solid #ffffff; color: #ffffff;  font-size:13px; top:270px; left:235px;" data-ls="easingin:easeOutBack; delayin:2500; offsetxin:bottom; rotatexin:90; durationin:2000;">Buy Now</a>

								</div>
								<!-- Slide 1 -->

								<div class="ls-slide" data-ls="transition3d:all; timeshift:-1000; slidedelay: 7000;">

									<img  src="img/resource/main-slide2.jpg" class="ls-bg" alt="Slide background"/>

									<i class="ls-slide fa fa-shopping-bag " style=" font-family:fontawesome; font-size:220px; color:#e9e9eb; top:100px; left:800px;" data-ls="easingin:easeOutBack; delayin:500; offsetxin:right; durationin:2000;"></i>

									<div class="ls-slide" style=" font-size:15px; font-weight:300; color:#333333; letter-spacing:3px; top:180px; font-style:italic; left:750px;" data-ls="easingin:easeOutBack; delayin:1000; offsetxin:top; scalexin:1.3; durationin:2000;">Hi,I need help Creating a Powerpoint </div>

									<h4 class="ls-slide" style="font-size:40px;  font-weight:900; top:205px; text-transform:uppercase; left:660px; color:#1c1c1c;" data-ls="easingin:easeOutElastic; offsetxin:-100px; rotatexin:90; delayin:1500; durationin:2000;">Amazing Online store</h4>

									<a href="#" title="" class="ls-slide bg-color" style="padding:11px 13px; color:#ffffff; border-radius:3px; font-family:Lato; font-size:13px; top:280px; left:817px;" data-ls="easingin:easeOutBack; delayin:2000; offsetxin:bottom; rotatexin:90; durationin:2000;">More Know</a>

									<a href="#" title="" class="ls-slide" style="padding:9px 13px; color:#333333; border-radius:3px; border:2px solid #555555; font-family:Lato; font-size:13px; top:280px; left:917px;" data-ls="easingin:easeOutBack; delayin:2500; offsetxin:bottom; rotatexin:90; durationin:2000;">Buy Now</a>
								</div>
								<!-- Slide 2 -->

								<div class="ls-slide" data-ls="transition3d:all; timeshift:-1000; slidedelay: 6000;">

									<img  src="img/resource/main-slide1.jpg" class="ls-bg" alt="Slide background"/>

									<div class="ls-slde" style="color:#333333; font-family:lato; font-size:15px; font-weight:300; top:160px; left:50px; text-transform:uppercase;" data-ls="rotatexin:90; offsetxin:0; delayin:1000; easingin:easeOutElastic; fadein:false; fadeout:false; durationin:2000;">Great Collection</div>

									<div class="ls-slide" style=" font-size:40px; font-weight:900; top:180px; left:50px; text-transform:uppercase; color:#1c1c1c;" data-ls="rotateyin:45; offsetyin:100px; delayin:1500; easingin:easeOutExpo; durationin:2000;">top brands 2016</div>

									<div class="ls-slide bg-color" style=" top:225px; left:50px; font-size:13px; text-transform:uppercase; color:#ffffff; padding:5px 20px;" data-ls="offsetyin:left; easingin:easeOutElastic; delayin:2000; durationin:2000;">Smarter Shopping,Better Living!</div>
								</div>
								<!-- Slide 3 -->

							</div>
						</div>
					</div><!-- Main Slider -->


	</section>

	<section class="block gray no-padding">
		<!-- prefooter -->
		<div class="lookcare-slider-bottom-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-md-3 col-xs-6 look-offer">
						<div class="offer-details">
							<h3>Sale up to 40%</h3>
							<p>Vivamus consequat, felis at aliquam elementum</p>
							<a href="#" class="btn btn-min btn-solid">Take a Look</a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6 helix-product clearfix">
						<div class="img-wrapper">
							<img src="img/shop/img-7.jpg" alt="" class="img-responsive">
						</div>
						<div class="product-detail">
							<a href="#"><h3>Deluxe Belt</h3></a>
							<h4>$8.99</h4>
							<a href="#" class="link-btn">Shop Now<i class="ion-arrow-right-c"></i></a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6 helix-product clearfix">
						<div class="img-wrapper">
							<img src="img/shop/img-9.jpg" alt="" class="img-responsive">
						</div>
						<div class="product-detail">
							<a href="#"><h3>Ball</h3></a>
							<h4>$29.00</h4>
							<a href="#" class="link-btn">Shop Now<i class="ion-arrow-right-c"></i></a>
						</div>
					</div>
					<div class="col-md-3 col-xs-6 helix-product clearfix">
						<div class="img-wrapper">
							<img src="img/shop/img-11.jpg" alt="" class="img-responsive">
						</div>
						<div class="product-detail">
							<a href="#"><h3>Pilates Adjustable</h3></a>
							<h4>$29.00</h4>
							<a href="#" class="link-btn">Shop Now<i class="ion-arrow-right-c"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end new collection directory -->





	<!-- Shop Filter
    ============================================= -->
	<section id="shop" class="shop-4 pt-0">
		<div class="container">
			<div class="row">
				<!-- Projects Filter
                ============================================= -->
				<div class="col-xs-12 col-sm-12 col-md-12 shop-filter">
					<ul class="list-inline">
						<li>
							<a class="active-filter" href="#" data-filter="*">All Products</a>
						</li>
						<li>
							<a href="#" data-filter=".filter-best">Best Selling</a>
						</li>
						<li>
							<a href="#" data-filter=".filter-featured">Featured</a>
						</li>
						<li>
							<a href="#" data-filter=".filter-sale">On Sale</a>
						</li>
					</ul>
				</div>
				<!-- .projects-filter end -->
			</div>
			<!-- .row end -->
			<!-- Projects Item
            ============================================= -->
			<div id="shop-all" class="row">
				<!-- Product Item #1 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-best">
					<div class="product-img">
						<img src="img/shop/index3_product1.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">CST/Berger</a>
						</h4>
						<p class="product-price">$68.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #2 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-sale">
					<div class="product-img">
						<img src="img/shop/index3_product2.png" alt="product">
						<div class="product-sale">
							sale
						</div>
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">Titan Measures</a>
						</h4>
						<p class="product-price">
							<span>$40.00</span>
							$32.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #3 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-best">
					<div class="product-img">
						<img src="img/shop/index3_product3.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">Charger/Radio</a>
						</h4>
						<p class="product-price">$180.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #4 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-featured">
					<div class="product-img">
						<img src="img/shop/index3_product4.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">Plate Compactor</a>
						</h4>
						<p class="product-price">$230.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #5 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-best">
					<div class="product-img">
						<img src="img/shop/index3_product5.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">Black Tape</a>
						</h4>
						<p class="product-price">$12.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #6 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-best filter-featured">
					<div class="product-img">
						<img src="img/shop/index3_product6.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">ICS Concrete Saw</a>
						</h4>
						<p class="product-price">$40.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #7 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-featured">
					<div class="product-img">
						<img src="img/shop/index3_product7.png" alt="product">
						<div class="product-new">
							new
						</div>
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">NorthStar Asphalt</a>
						</h4>
						<p class="product-price">$150.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->

				<!-- Product Item #8 -->
				<div class="col-xs-12 col-sm-6 col-md-3 product-item filter-best">
					<div class="product-img">
						<img src="img/shop/index3_product8.png" alt="product">
						<div class="product-hover">
							<div class="product-cart">
								<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
							</div>
						</div>
					</div>
					<!-- .product-img end -->
					<div class="product-bio">
						<h4>
							<a href="#">Keson Fiberglass</a>
						</h4>
						<p class="product-price">$550.00</p>
					</div>
					<!-- .product-bio end -->

				</div>
				<!-- .product-item end -->
			</div>
			<!-- .row end -->

			<div class="row">
				<div class="col-xs-12 col-sm-12 col-md-12 text-center">
					<a class="btn btn-secondary" href="#">more products <i class="fa fa-plus ml-xs"></i></a>
				</div>
				<!-- .col-md-12 end -->
			</div>
			<!-- .row End -->
		</div>
		<!-- .container end -->
	</section>


	<!-- Start Our Shop Items -->

	<!-- recommend  items Starts -->
	<section id="recent-product">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="recent-items">

						<!-- Block heading two -->
						<div class="block-heading-two">
							<h3><span>Recommended Items</span></h3>
						</div>

						<!-- Owl carousel block starts -->
						<!-- Change values of data-items, data-auto-play, data-pagination & data-single-item based on your needs -->
						<div class="owl-carousel" data-items="5" data-auto-play="true" data-pagination="true" data-single-item="false">
							<!-- Carousel item -->
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class=" product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product1.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product2.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product3.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product4.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product5.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product6.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product7.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product8.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product1.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
							<div class="owl-content">
								<!-- Product Item #8 -->
								<div class="product-item filter-best">
									<div class="product-img">
										<img src="img/shop/index3_product2.png" alt="product">
										<div class="product-hover">
											<div class="product-cart">
												<a class="btn btn-secondary btn-block" href="#">Add To Cart</a>
											</div>
										</div>
									</div>
									<!-- .product-img end -->
									<div class="product-bio">
										<h4>
											<a href="#">Keson Fiberglass</a>
										</h4>
										<p class="product-price">$550.00</p>
									</div>
									<!-- .product-bio end -->

								</div>
								<!-- .product-item end -->
							</div>
						</div>
						<!-- Owl carousel block ends -->

					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- recommend items Ends -->

	<!-- End Our Shop Items -->


	<section class="block parallax-block">
		<div class="layer">
			<div data-velocity="-.3" style="background: url(img/resource/main-slide2.jpg) repeat scroll 50% 422.28px transparent;" class="parallax no-repeat"></div><!-- PARALLAX BACKGROUND IMAGE -->
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="lookbook-product">
							<h2><a href="#" title="">Collection 2016 </a></h2>
							<ul class="simple-cat-style">
								<li><a href="#" title="">Dresses</a></li>
								<li><a href="#" title="">Coats & Jackets</a></li>
								<li><a href="#" title="">Jeans</a></li>
							</ul>
							<a href="#" title="">read more</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Start Our Clients -->

	<section id="Clients" class="light-wrapper">
		<div class="container inner">
			<div class="row">
				<div class="Last-items-shop col-md-3">

					<!-- Block heading two -->
					<div class="block-heading-two block-heading-three">
						<h3><span>Special Offer</span></h3>
					</div>
					<!--<div class="Top-Title-SideBar">
						<h3>Special Offer</h3>
					</div>-->
					<div class="Last-post">
						<ul class="shop-res-items">
							<li>
								<a href="#"><img src="img/small/50.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$28.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/51.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$40.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/52.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$150.00</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="Last-items-shop col-md-3">
					<!-- Block heading two -->
					<div class="block-heading-two block-heading-three">
						<h3><span>Best Sellers</span></h3>
					</div>
					<!--<div class="Top-Title-SideBar">
						<h3>Best Sellers</h3>
					</div>-->
					<div class="Last-post">
						<ul class="shop-res-items">
							<li>
								<a href="#"><img src="img/small/53.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$28.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/54.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$40.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/55.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$150.00</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="Last-items-shop col-md-3">
					<!-- Block heading two -->
					<div class="block-heading-two block-heading-three">
						<h3><span>Featured</span></h3>
					</div>
					<!--<div class="Top-Title-SideBar">
						<h3>Featured</h3>
					</div>-->
					<div class="Last-post">
						<ul class="shop-res-items">
							<li>
								<a href="#"><img src="img/small/56.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$28.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/57.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$40.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/55.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$150.00</span>
							</li>
						</ul>
					</div>
				</div>
				<div class="Last-items-shop col-md-3">
					<!-- Block heading two -->
					<div class="block-heading-two block-heading-three">
						<h3><span>Sales</span></h3>
					</div>
					<!--<div class="Top-Title-SideBar">
						<h3>Sales</h3>
					</div>-->
					<div class="Last-post">
						<ul class="shop-res-items">
							<li>
								<a href="#"><img src="img/small/55.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$28.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/58.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$40.00</span>
							</li>
							<li>
								<a href="#"><img src="img/small/50.jpg" alt=""></a>
								<h6><a href="#">Stockholm Chair high Mosta gruancy</a></h6>
								<span class="sale-date">$150.00</span>
							</li>
						</ul>
					</div>
				</div>

			</div>
		</div>
	</section>

	<!-- End Our Clients  -->


	<section class="block gray no-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="content-box no-margin go-simple">
						<div class="mini-service-sec">
							<div class="row">
								<div class="col-md-3">
									<div class="mini-service">
										<i  class="fa fa-paper-plane"></i>
										<div class="mini-service-info">
											<h3>Worldwide Delivery</h3>
											<p>unc tincidunt, on cursusau gmetus, lorem Hore</p>
										</div>
									</div><!-- Mini Service -->
								</div>
								<div class="col-md-3">
									<div class="mini-service">
										<i  class="fa  fa-newspaper-o"></i>
										<div class="mini-service-info">
											<h3>Worldwide Delivery</h3>
											<p>unc tincidunt, on cursusa ugmetus, lorem Hore</p>
										</div>
									</div><!-- Mini Service -->
								</div>
								<div class="col-md-3">
									<div class="mini-service">
										<i  class="fa fa-medkit"></i>
										<div class="mini-service-info">
											<h3>Friendly Stuff</h3>
											<p>unc tincidunt, on cursusau gmetus, lorem Hore</p>
										</div>
									</div><!-- Mini Service -->
								</div>
								<div class="col-md-3">
									<div class="mini-service">
										<i  class="fa  fa-newspaper-o"></i>
										<div class="mini-service-info">
											<h3>24/h Support</h3>
											<p>unc tincidunt, on cursusa ugmetus, lorem Hore</p>
										</div>
									</div><!-- Mini Service -->
								</div>
							</div>
						</div><!-- Mini Service Sec -->
					</div>
				</div>
			</div>
		</div>
	</section>
	<div class="clearfix"></div>

</main>
<!-- end main content -->






<!-- start footer area -->
<footer class="footer-area-content">

	<div class="container">
		<div class="footer-wrapper style-3">
			<div class="type-1">
				<div class="footer-columns-entry">
					<div class="row">
						<div class="col-md-3">
							<img alt="" src="img/footer-logo.png" class="footer-logo">
							<div class="footer-description">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod.</div>
							<div class="footer-address">30 South Avenue San Francisco<br> Phone: +78 123 456 123<br> Email: <a href="mailto:Support@demo.com">Support@demo.com</a><br>
								<a target="_blank" href="http://iglyphic.com/"><b>www.lookcare.com</b></a>
							</div>
							<div class="clear"></div>
						</div>
						<div class="col-md-3">
							<div class="index-three-footer-widget how-to-buy">
								<h3 class="heading2">How to Buy</h3>
								<ul>
									<li><a href="#" title="">Become an Amazon Vendor</a></li>
									<li><a href="#" title="">Advertise Your Products</a></li>
									<li><a href="#" title="">Sell on Amazon Business</a></li>
									<li><a href="#" title="">Subscribe to receive inspiration</a></li>
								</ul>
							</div><!-- Widget -->
						</div>
						<div class="col-md-3">
							<div class="index-three-footer-widget customer-services">
								<h3 class="heading2">Customer Service</h3>
								<ul>
									<li><a href="#" title="">Refund Policy</a></li>
									<li><a href="#" title="">How to Shop on Flaiva</a></li>
									<li><a href="#" title="">Track Your Order</a></li>
									<li><a href="#" title="">Shipping Policy</a></li>
								</ul>
							</div><!-- Widget -->
						</div>
						<div class="col-md-3">
							<div class="index-three-footer-widget news-letter">
								<h3 class="heading2">NewsLetter Signup</h3>
								<p>Subscribe to receive inspiration, ideas, and news in your inbox.</p>
								<form>
									<input type="text" placeholder="Enter your Email" />
									<button type="submit"><i class="fa fa-search"></i></button>
								</form>
								<ul class="social-buttons">
									<li><a href="#" title=""><i class="fa fa-facebook"></i></a></li>
									<li><a href="#" title=""><i class="fa fa-google-plus"></i></a></li>
									<li><a href="#" title=""><i class="fa fa-twitter"></i></a></li>
									<li><a href="#" title=""><i class="fa fa-rss"></i></a></li>
									<li><a href="#" title=""><i class="fa fa-tumblr"></i></a></li>
								</ul>
							</div><!-- Widget -->
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>


	<div class="footer-bottom footer-wrapper style-3">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="footer-bottom-navigation">
						<div class="cell-view">
							<div class="footer-links">
								<a href="#">Site Map</a>
								<a href="#">Search</a>
								<a href="#">Terms</a>
								<a href="#">Advanced Search</a>
								<a href="#">Orders and Returns</a>
								<a href="#">Contact Us</a>
							</div>
							<div class="copyright">Created with by <a target="_blank" href="http://iglyphic.com/">iGlyphic</a> . All right reserved</div>
						</div>
						<div class="cell-view">
							<div class="payment-methods">
								<a href="#"><img alt="" src="img/payment-method-1.png"></a>
								<a href="#"><img alt="" src="img/payment-method-2.png"></a>
								<a href="#"><img alt="" src="img/payment-method-3.png"></a>
								<a href="#"><img alt="" src="img/payment-method-4.png"></a>
								<a href="#"><img alt="" src="img/payment-method-5.png"></a>
								<a href="#"><img alt="" src="img/payment-method-6.png"></a>
							</div>
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>



</footer>
<!-- footer area end -->


<!-- All script -->
<script src="js/vendor/jquery-1.10.2.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/smoothscroll.js"></script>
<!-- Scroll up js
============================================ -->
<script src="js/jquery.scrollUp.js"></script>
<script src="js/menu.js"></script>


<script src="js/pluginse209.js?v=1.0.0"></script>

<!-- Magnific Popup -->
<script src="js/jquery.magnific-popup.min.js"></script>

<script src="js/jquery.countdown.min.js"></script>


<script src="js/jquery.scrolly.js"></script>


<!-- External libraries: jQuery & GreenSock -->
<script src="layerslider/js/greensock.js" type="text/javascript"></script>
<!-- LayerSlider script files -->
<script src="layerslider/js/layerslider.transitions.js" type="text/javascript"></script>
<script src="layerslider/js/layerslider.kreaturamedia.jquery.js" type="text/javascript"></script>


<!-- Owl carousel -->
<script src="js/owl.carousel.min.js"></script>
<script src="js/main.js"></script>



<script type="text/javascript">
	$(document).ready(function() {

		"use strict";

		//** Slider  **//
		jQuery("#layerslider").layerSlider({
			responsive: true,
			responsiveUnder: 1170,
			layersContainer: 1170,
			skin: 'v5',
			hoverPrevNext: true,
			navPrevNext: true,
			navStartStop: false,
			navButtons: false,
			skinsPath: 'layerslider/skins/'
		});


		/*=================== Parallax ===================*/
		$('.parallax').scrolly({bgParallax: true});


		/* Owl carousel */
		$(".owl-carousel").owlCarousel({
			slideSpeed : 500,
			rewindSpeed : 1000,
			mouseDrag : true,
			stopOnHover : true
		});
		/* Own navigation */
		$(".owl-nav-prev").click(function(){
			$(this).parent().next(".owl-carousel").trigger('owl.prev');
		});
		$(".owl-nav-next").click(function(){
			$(this).parent().next(".owl-carousel").trigger('owl.next');
		});


	});
</script>


</body>


</html>