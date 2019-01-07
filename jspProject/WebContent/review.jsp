<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<!--
	Escape Velocity by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
<head>
<title>리뷰페이지</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<style type="text/css">
#crud1 {
	text-decoration: none;
	float: right;
	font-size: 10px;
	text-align: right;
	display:
}
#heart {
	position: relative;
	width: 25px;
	height: 22.5px;
}

#heart:before,
#heart:after {
	position: absolute;
	content: "";
	left: 12.5px;
	top: 0px;
	width: 12.5px;
	height: 20px;
	background: #f98780;
	border-radius: 12.5px 12.5px 0 0;
	transform: rotate(-45deg);
	transform-origin: 0 100%
}
#heart:after {
	left: 0;
	transform: rotate(45deg);
	transform-origin: 100% 100%;
}

</style>
<link rel="stylesheet" href="assets/css/main.css" />
</head>
<body class="right-sidebar is-preload">
	<div id="page-wrapper">

		<!-- Header -->
		<section id="header" class="wrapper">

			<!-- Logo -->
			<div id="logo">
				<h1>
					<a href="index.html">상단 큰글씨</a>
				</h1>
				<p>상단 작은글씨</p>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href="#">Dropdown</a>
						<ul>
							<li><a href="#">Lorem ipsum</a></li>
							<li><a href="#">Magna veroeros</a></li>
							<li><a href="#">Etiam nisl</a></li>
							<li><a href="#">Sed consequat</a>
								<ul>
									<li><a href="#">Lorem dolor</a></li>
									<li><a href="#">Amet consequat</a></li>
									<li><a href="#">Magna phasellus</a></li>
									<li><a href="#">Etiam nisl</a></li>
									<li><a href="#">Sed feugiat</a></li>
								</ul></li>
							<li><a href="#">Nisl tempus</a></li>
						</ul></li>
					<li><a href="left-sidebar.html">Left Sidebar</a></li>
					<li class="current"><a href="right-sidebar.html">Right
							Sidebar</a></li>
					<li><a href="no-sidebar.html">No Sidebar</a></li>
				</ul>
			</nav>

		</section>

		<!-- Main -->
		<section id="main" class="wrapper style2">
			<div class="title">Right Sidebar</div>
			<div class="container">
				<div class="row gtr-150">
					<div class="col-8 col-12-medium">

						<!-- Content -->
						<div id="content">
							<article class="box post">
								<header class="style1">
									<div>
										<a href="#" class="crud1">수정</a> <a href="#" class="crud1">삭제</a>
									</div>
									<h2>리뷰 페이지 제목</h2>
									<p>리뷰 페이지</p>
								</header>
								<div>
									<ul class="style2">
										<li>
											<article class="box post-excerpt">
												<a href="#" class="image left"><img
													src="images/pic08.jpg" alt="" /></a>
												<h3>
													<a href="#">리뷰1</a>
												</h3>
												<p>Duis odio diam, luctus et vulputate vitae, vehicula
													ac dolor. Pellentesque at urna eget tellus sed etiam.</p>
											</article>
										</li>
										<li>
											<article class="box post-excerpt">
												<a href="#" class="image left"><img
													src="images/pic09.jpg" alt="" /></a>
												<h3>
													<a href="#">리뷰2</a>
												</h3>
												<p>Duis odio diam, luctus et vulputate vitae, vehicula
													ac dolor. Pellentesque at urna eget tellus sed etiam.</p>
											</article>
										</li>
										<li>
											<article class="box post-excerpt">
												<a href="#" class="image left"><img
													src="images/pic10.jpg" alt="" /></a>
												<h3>
													<a href="#">리뷰3</a>
												</h3>
												<p>Duis odio diam, luctus et vulputate vitae, vehicula
													ac dolor. Pellentesque at urna eget tellus sed etiam.</p>
											</article>
										</li>
									</ul>
								</div>
							</article>
						</div>

					</div>
					<div class="col-4 col-12-medium">

						<!-- Sidebar -->
						<div id="sidebar">
							<section class="box">
								<header>
									<a href="#" id="heart"></a>
									<h2>네임카드</h2>
								</header>
							</section>
							<section class="box">
								<ul class="style2">
									<li>
										<article class="box post-excerpt">
											<a href="#" class="image left"><img
												src="images/pic08.jpg" alt="" /></a>
											<h3>
												<a href="#">닉네임</a>
											</h3>
											<p>닉네임</p>
										</article>
									</li>
								</ul>
								<br> <a href="#" class="button style1">주문하기</a>
							</section>
							<section class="box">
								<header>
									<h2>그 외 링크</h2>
								</header>
								<ul class="style3">
									<li><a href="#">Nulla iaculis egestas varius</a></li>
									<li><a href="#">Augue massa feugiat quam pretium</a></li>
									<li><a href="#">Orci sem vel libero cras nisi odio</a></li>
									<li><a href="#">Sed hendrerit massa nam mattis</a></li>
									<li><a href="#">Turpis vel leo accumsan aliquet</a></li>
									<li><a href="#">Dapibus mi fermentum fusce non</a></li>
									<li><a href="#">Arcu laoreet sapien tempus</a></li>
									<li><a href="#">Nulla iaculis egestas varius</a></li>
									<li><a href="#">Augue massa feugiat quam pretium</a></li>
									<li><a href="#">Orci sem vel libero cras nisi odio</a></li>
									<li><a href="#">Sed hendrerit massa nam mattis</a></li>
								</ul>
							</section>
						</div>

					</div>
				</div>
			</div>
		</section>

		<!-- Highlights -->
		<section id="highlights" class="wrapper style3">
			<div class="title">The Endorsements</div>
			<div class="container">
				<div class="row aln-center">
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="images/pic02.jpg" alt="" /></a>
							<h3>
								<a href="#">Aliquam diam consequat</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="images/pic03.jpg" alt="" /></a>
							<h3>
								<a href="#">Nisl adipiscing sed lorem</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="highlight">
							<a href="#" class="image featured"><img
								src="images/pic04.jpg" alt="" /></a>
							<h3>
								<a href="#">Mattis tempus lorem</a>
							</h3>
							<p>Eget mattis at, laoreet vel amet sed velit aliquam diam
								ante, dolor aliquet sit amet vulputate mattis amet laoreet
								lorem.</p>
							<ul class="actions">
								<li><a href="#" class="button style1">Learn More</a></li>
							</ul>
						</section>
					</div>
				</div>
			</div>
		</section>

		<!-- Footer -->
		<section id="footer" class="wrapper">
			<div class="title">The Rest Of It</div>
			<div class="container">
				<header class="style1">
					<h2>Ipsum sapien elementum portitor?</h2>
					<p>
						Sed turpis tortor, tincidunt sed ornare in metus porttitor mollis
						nunc in aliquet.<br /> Nam pharetra laoreet imperdiet volutpat
						etiam feugiat.
					</p>
				</header>
				<div class="row">
					<div class="col-6 col-12-medium">

						<!-- Contact Form -->
						<section>
							<form method="post" action="#">
								<div class="row gtr-50">
									<div class="col-6 col-12-small">
										<input type="text" name="name" id="contact-name"
											placeholder="Name" />
									</div>
									<div class="col-6 col-12-small">
										<input type="text" name="email" id="contact-email"
											placeholder="Email" />
									</div>
									<div class="col-12">
										<textarea name="message" id="contact-message"
											placeholder="Message" rows="4"></textarea>
									</div>
									<div class="col-12">
										<ul class="actions">
											<li><input type="submit" class="style1" value="Send" /></li>
											<li><input type="reset" class="style2" value="Reset" /></li>
										</ul>
									</div>
								</div>
							</form>
						</section>

					</div>
					<div class="col-6 col-12-medium">

						<!-- Contact -->
						<section class="feature-list small">
							<div class="row">
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-home">Mailing Address</h3>
										<p>
											Untitled Corp<br /> 1234 Somewhere Rd<br /> Nashville, TN
											00000
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-comment">Social</h3>
										<p>
											<a href="#">@untitled-corp</a><br /> <a href="#">linkedin.com/untitled</a><br />
											<a href="#">facebook.com/untitled</a>
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-envelope">Email</h3>
										<p>
											<a href="#">info@untitled.tld</a>
										</p>
									</section>
								</div>
								<div class="col-6 col-12-small">
									<section>
										<h3 class="icon fa-phone">Phone</h3>
										<p>(000) 555-0000</p>
									</section>
								</div>
							</div>
						</section>

					</div>
				</div>
				<div id="copyright">
					<ul>
						<li>&copy; Untitled.</li>
						<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
					</ul>
				</div>
			</div>
		</section>

	</div>

	<!-- Scripts -->
	<script src="assets/js/jquery.min.js"></script>
	<script src="assets/js/jquery.dropotron.min.js"></script>
	<script src="assets/js/browser.min.js"></script>
	<script src="assets/js/breakpoints.min.js"></script>
	<script src="assets/js/util.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>