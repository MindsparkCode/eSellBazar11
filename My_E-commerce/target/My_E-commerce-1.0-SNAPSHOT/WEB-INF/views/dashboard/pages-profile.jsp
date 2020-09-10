<%-- 
    Document   : pages-profile
    Created on : Aug 5, 2020, 9:06:46 AM
    Author     : Saiful
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Responsive Web UI Kit &amp; Dashboard Template based on Bootstrap">
	<meta name="author" content="AdminKit">
	<meta name="keywords" content="adminkit, bootstrap, web ui kit, dashboard template, admin template">

	<link rel="shortcut icon" href="dcss/img/icons/icon-48x48.png" />

	<title>Profile | AdminKit Demo</title>

	<link href="dcss/css/app.css" rel="stylesheet">
</head>

<body>
	 <div class="wrapper">
            
            
            <%@ include file='./sidebar/saidbar.jsp'%>
            
            
            
            
            <div class="main">
                
            <%@ include file='./sidebar/navbar.jsp'%>
                
                
                
                <main class="content">
				<div class="container-fluid p-0">

					<h1 class="h3 mb-3">Profile</h1>

					<div class="row">
						<div class="col-md-4 col-xl-3">
							<div class="card mb-3">
								<div class="card-header">
									<h5 class="card-title mb-0">Profile Details</h5>
								</div>
								<div class="card-body text-center">
									<img src="dcss/img/avatars/avatar-4.jpg" alt="Christina Mason" class="img-fluid rounded-circle mb-2" width="128" height="128" />
									<h5 class="card-title mb-0">${user.firstname} ${user.lastname}</h5>
									<div class="text-muted mb-2">Lead Developer</div>

									<div>
										<a class="btn btn-primary btn-sm" href="#">Follow</a>
										<a class="btn btn-primary btn-sm" href="#"><span data-feather="message-square"></span> Message</a>
									</div>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">Skills</h5>
									<a href="#" class="badge badge-primary mr-1 my-1">HTML</a>
									<a href="#" class="badge badge-primary mr-1 my-1">JavaScript</a>
									<a href="#" class="badge badge-primary mr-1 my-1">Sass</a>
									<a href="#" class="badge badge-primary mr-1 my-1">Angular</a>
									<a href="#" class="badge badge-primary mr-1 my-1">Vue</a>
									<a href="#" class="badge badge-primary mr-1 my-1">React</a>
									<a href="#" class="badge badge-primary mr-1 my-1">Redux</a>
									<a href="#" class="badge badge-primary mr-1 my-1">UI</a>
									<a href="#" class="badge badge-primary mr-1 my-1">UX</a>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">About</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><span data-feather="home" class="feather-sm mr-1"></span> Lives in <a href="#">${user.district}</a></li>

										<li class="mb-1"><span data-feather="briefcase" class="feather-sm mr-1"></span> Works at <a href="#">unemployed Society</a></li>
										<li class="mb-1"><span data-feather="map-pin" class="feather-sm mr-1"></span> From <a href="#">${user.address}</a></li>
									</ul>
								</div>
								<hr class="my-0" />
								<div class="card-body">
									<h5 class="h6 card-title">Elsewhere</h5>
									<ul class="list-unstyled mb-0">
										<li class="mb-1"><span class="fas fa-globe fa-fw mr-1"></span> <a href="https://www.linkedin.com/in/saiful93/">LinkedIn</a></li>
										<li class="mb-1"><span class="fab fa-twitter fa-fw mr-1"></span> <a href="https://twitter.com/gmsifulalam93">Twitter</a></li>
										<li class="mb-1"><span class="fab fa-facebook fa-fw mr-1"></span> <a href="https://www.facebook.com/Saifulalam93">Facebook</a></li>
										<li class="mb-1"><span class="fab fa-instagram fa-fw mr-1"></span> <a href="#">Instagram</a></li>
										<li class="mb-1"><span class="fab fa-linkedin fa-fw mr-1"></span> <a href="https://github.com/SaifulAlam93">Git hub</a></li>
									</ul>
								</div>
							</div>
						</div>

						<div class="col-md-8 col-xl-9">
							<div class="card">
								<div class="card-header">

									<h5 class="card-title mb-0">Activities</h5>
								</div>
								<div class="card-body h-100">

									<div class="media">
										<img src="dcss/img/avatars/yasir.jpg" width="36" height="36" class="rounded-circle mr-2" alt="Img not support">
										<div class="media-body">
											<small class="float-right text-navy">5m ago</small>
											<strong>Yasir arafat</strong> started following <strong>${user.firstname} ${user.lastname}</strong><br />
											<small class="text-muted">Today 7:51 pm</small><br />

										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/jafrul.jpg" width="36" height="36" class="rounded-circle mr-2" alt="jafrul">
										<div class="media-body">
											<small class="float-right text-navy">30m ago</small>
											<strong>Jafrul Ahsan</strong> posted something on <strong>${user.firstname} ${user.lastname}</strong>'s timeline<br />
											<small class="text-muted">Today 7:21 pm</small>

											<div class="border text-sm text-muted p-2 mt-1">ভাই ❤️
অনেক দিন হয় দেখিনা আপনাকে । আমার রুমের দরজা খুললেই ২২৬ নম্বর রুমটাই চোখে পরে সবার আগে । সবি আছে, কিন্তু আপনি নেই । আপনিই প্রাণবন্ত করে রাখতেন পুরো ফ্লোরটাকে ।
আপনার মুখে ডাকা "নুরু" কিংবা "শালা বাবু" ডাকগুলো খুব মিস করছি ভাই । সেই সাথে একসাথে রান্না করে খাওয়া, গান গাওয়া সময় গুলো খুব মনে পরছে ।
											</div>

											<a href="#" class="btn btn-sm btn-danger mt-1"><i class="feather-sm" data-feather="heart"></i> Like</a>
										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/avatar-4.jpg" width="36" height="36" class="rounded-circle mr-2" alt="Christina Mason">
										<div class="media-body">
											<small class="float-right text-navy">1h ago</small>
											<strong>Christina Mason</strong> posted a new blog<br />

											<small class="text-muted">Today 6:35 pm</small>
										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/faysal.jpg" width="36" height="36" class="rounded-circle mr-2" alt="William Harris">
										<div class="media-body">
											<small class="float-right text-navy">3h ago</small>
											<strong>Faysal Mia</strong> posted two photos on <strong>${user.firstname} ${user.lastname}</strong>'s timeline<br />
											<small class="text-muted">Today 5:12 pm</small>

											<div class="row no-gutters mt-1">
												<div class="col-6 col-md-4 col-lg-4 col-xl-3">
													<img src="dcss/img/photos/unsplash-3.jpg" class="img-fluid pr-2" alt="Unsplash">
												</div>
												<div class="col-6 col-md-4 col-lg-4 col-xl-3">
													<img src="dcss/img/avatars/faysal.jpg" class="img-fluid pr-2" alt="Unsplash">
												</div>
											</div>

											<a href="#" class="btn btn-sm btn-danger mt-1"><i class="feather-sm" data-feather="heart"></i> Like</a>
										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/avatar-2.jpg" width="36" height="36" class="rounded-circle mr-2" alt="William Harris">
										<div class="media-body">
											<small class="float-right text-navy">1d ago</small>
											<strong>William Harris</strong> started following <strong>Christina Mason</strong><br />
											<small class="text-muted">Yesterday 3:12 pm</small>

											<div class="media mt-1">
												<a class="pr-3" href="#">
                <img src="dcss/img/avatars/avatar-4.jpg" width="36" height="36" class="rounded-circle mr-2" alt="Christina Mason">
              </a>
												<div class="media-body">
													<div class="border text-sm text-muted p-2 mt-1">
														Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus.
													</div>
												</div>
											</div>
										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/avatar-4.jpg" width="36" height="36" class="rounded-circle mr-2" alt="Christina Mason">
										<div class="media-body">
											<small class="float-right text-navy">1d ago</small>
											<strong>Christina Mason</strong> posted a new blog<br />
											<small class="text-muted">Yesterday 2:43 pm</small>
										</div>
									</div>

									<hr />
									<div class="media">
										<img src="dcss/img/avatars/avatar.jpg" width="36" height="36" class="rounded-circle mr-2" alt="Charles Hall">
										<div class="media-body">
											<small class="float-right text-navy">1d ago</small>
											<strong>Charles Hall</strong> started following <strong>Christina Mason</strong><br />
											<small class="text-muted">Yesterdag 1:51 pm</small>
										</div>
									</div>

									<hr />
									<a href="#" class="btn btn-primary btn-block">Load more</a>
								</div>
							</div>
						</div>
					</div>

				</div>
			</main>

			<footer class="footer">
				<div class="container-fluid">
					<div class="row text-muted">
						<div class="col-6 text-left">
							<p class="mb-0">
								<a href="index.html" class="text-muted"><strong>AdminKit Demo</strong></a> &copy;
							</p>
						</div>
						<div class="col-6 text-right">
							<ul class="list-inline">
								<li class="list-inline-item">
									<a class="text-muted" href="#">Support</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Help Center</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Privacy</a>
								</li>
								<li class="list-inline-item">
									<a class="text-muted" href="#">Terms</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</footer>
		</div>
	</div>

<!--	<script src="dcss/js/vendor.js"></script>-->
	<script src="dcss/js/app.js"></script>

</body>

</html>