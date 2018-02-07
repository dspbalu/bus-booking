<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>HOME</title>

<script
	src="${pageContext.request.contextPath}/lib/lib/jquery/jquery.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/superfish/hoverIntent.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/superfish/superfish.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/tether/js/tether.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/stellar/stellar.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/bootstrap/js/bootstrap.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/counterup/counterup.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/waypoints/waypoints.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/easing/easing.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/stickyjs/sticky.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/parallax/parallax.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/lib/lockfixed/lockfixed.min.js"></script>

<script
	src="${pageContext.request.contextPath}/lib/bootbox.min.js"></script>
<script
	src="${pageContext.request.contextPath}/lib/js/jslib/bootstrap.js"></script>
<script src="${pageContext.request.contextPath}/lib/js/project.js"></script>

<!-- Template Specisifc Custom Javascript File -->
<script src="${pageContext.request.contextPath}/lib/js/custom.js"></script>
<script>
	$(document).ready(function() {

		$('#twitter').click(function() {
			bootbox.alert("twitter", function() {
			});
		});
	});
</script>


<!-- Favicon -->
<link href="${pageContext.request.contextPath}/lib/img/favicon.ico"
	rel="icon">

<!-- Google Fonts -->
<link href="${pageContext.request.contextPath}/lib/css/css.css"
	rel="stylesheet">

<!-- Bootstrap CSS File -->
<link
	href="${pageContext.request.contextPath}/lib/lib/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Libraries CSS Files -->
<link
	href="${pageContext.request.contextPath}/lib/lib/font-awesome/css/font-awesome.min.css"
	rel="stylesheet">

<link href="${pageContext.request.contextPath}/lib/css/style.css"
	rel="stylesheet">
<style>
.mainfooter {
	padding: 15px 0 25px 0;
}

.mainfooter .col1 {
	margin-left: 80px;
	width: auto;
}

.col1, .col2, .col3 {
	float: left;
}

.mainfooter a:after {
	content: "|";
	padding-left: 5px;
	color: #aaa;
}
</style>
</head>

<body>

	<!-- Header -->
	<header id="header">
		<div class="container">

			<div id="logo" class="pull-left">
				<a href="index.html"><img id="twitter"
					src="${pageContext.request.contextPath}/lib/images/ticket-icon.png"
					alt="" title="" /></a>
				<!-- Uncomment below if you prefer to use a text image -->
				<!--<h1><a href="#hero">Bell</a></h1>-->
			</div>

			<nav id="nav-menu-container">
				<ul class="nav-menu">
					<li><a href="${pageContext.request.contextPath}/goto/index.html">About</a></li>
					<li><a
						href="${pageContext.request.contextPath}/goto/register.html">Register</a></li>
					<li><a
						href="${pageContext.request.contextPath}/goto/login.html">Login</a></li>
				</ul>
			</nav>
			<!-- #nav-menu-container -->

			<nav class="nav social-nav pull-right hidden-sm-down">
				<a href="#"><i class="fa fa-twitter"></i></a> <a href="#"><i
					class="fa fa-facebook"></i></a> <a href="#"><i
					class="fa fa-linkedin"></i></a> <a href="#"><i
					class="fa fa-envelope"></i></a>
			</nav>
		</div>
	</header>
	<!-- #header -->



	<div class="container jumbotron col-md-5 col-md-offset-7">
		<h1 class="center">Registration</h1>

		<form name="myform">
			<hr>
			<div id='user1'>
				<input type="text" name="user" id="user" placeholder="Username"
					class="form-control" required />
			</div>
			<div id="name1">
				<input type="text" name="name" id="name" placeholder="Name"
					class="form-control" required />
			</div>
			<div id='email1'>
				<input type="text" name="email" id="email" placeholder="Email"
					class="form-control" required />
			</div>
			<div id='phone1'>
				<input type="text" name="phone" id="phone"
					placeholder="Phone number" class="form-control" required />
			</div>

			<div id="pass1">
				<input type="password" name="password" id="pass"
					placeholder="Password" class="form-control" required />
			</div>
			<br>
			<p>
				By clicking Register, you agree on our <a href="#">terms and
					condition</a>.
			</p>
			<input type="button" value="register" id="sub" class="btn">

		</form>
		<br>
		<section id="foot">
			<h4>
				if you're already registered <a href="#">click here</a>
			</h4>
		</section>
		<br>
	</div>
	<!-- @component: footer -->


	<footer class="site-footer">
		<div class="container">
			<div class="bottom">
				<div class="row">

					<div id="mainfooter" class="mainfooter">
						<div class="clearfix">
							<div class="col1 col-md-4">
								<h3>Popular Routes</h3>
								<ul>
									<li><a href="#">Hyderabad - Bangalore </a></li>
									<li><a href="#">Pune - Shirdi </a></li>
									<li><a href="#">Chennai - Coimbatore </a></li>
									<li><a href="#">Hyderabad - Visakhapatnam </a></li>
									<li><a href="#">Bangalore - Hyderabad </a></li>
									<li><a href="#">Bangalore - Vijayawada </a></li>
									<li><a href="#">Hyderabad - Chennai </a></li>
								</ul>
							</div>

							<div class="col2 col-md-3">
								<br>
								<ul>
									<li><a href="#">Delhi - Manali </a></li>
									<li><a href="#">Mumbai - Bangalore </a></li>
									<li><a href="#">Chennai - Bangalore </a></li>
									<li><a href="#">Indore - Bhopal </a></li>
									<li><a href="#">Hyderabad - Bangalore </a></li>
									<li><a href="#">Pune - Mumbai </a></li>
									<li><a href="#">Ahmedabad - Mumbai </a></li>
								</ul>
							</div>
							<div class="col3 col-md-4">

								<h3>Popular Bus Operators</h3>
								<a href="#">APSRTC</a> <a href="#">TSRTC</a> <a href="#">GSRTC</a>
								<a href="#">HRTC</a><br> <a href="#">VRL Travels </a> <a
									href="#">SRS Travels </a> <a href="#">Orange Travels </a> <a
									href="#">Kesineni Travels </a> <a href="#">Morning Star
									Travels </a> <a href="#">KPN Travels </a> <a href="#">Kaveri
									Travels </a><br> <a href="#">Kallada Travels </a> <a href="#">Kaleswari
									Travels </a> <a href="#">Neeta Travels </a> <a href="#">SVR
									Travels </a> <a href="#">Diwakar Travels </a> <a href="#">Paulo
									Travels </a> <a href="#">Meghana Travels </a> <a href="#">Royal
									Cruiser Travels </a> <a href="#">SRE_Travels</a> <a href="#">SRM
									Travels</a> <a href="#">HKB Travels</a> <a href="#">Rathimeena
									Travels </a> <a href="#">Seabird Travels </a> <a href="#">Jai
									Bharat</a> <a href="#">Bharathi</a><br> <a href="#">Sri
									Krishna Travels</a> <a href="#">Transit BUS</a><br> <a
									href="#">Parveen Travels </a> <a href="#">Gujarat Travels </a>
								<a href="#">Sharma Transport </a> <a href="#">Reddy Express</a>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>


	<!-- Required JavaScript Libraries -->



</body>
</html>