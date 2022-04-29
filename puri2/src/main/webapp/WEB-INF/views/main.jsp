<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<script src="${path}/resources/js/test.js"></script>

<link href="${path}/resources/css/main2.css" rel="stylesheet"/> 	
<html>
<meta charset="EUC-KR">

<head>

	<title>Puri</title>
	<style type="text/css">
	
@font-face {
    font-family: 'OTWelcomeRA';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2110@1.0/OTWelcomeRA.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
body{
	font-family: OTWelcomeRA, sans-serif}
}
</style>
</head>

<body class="homepage is-preload">
		<div id="page-wrapper">

			<!-- Header -->
			<div class="imges">
				<div id="header-wrapper">
				<img src="./resources/images/banner9.png" >
			</div>
			</div>
					<div id="header" class="container">
				</div>
						<!-- Logo -->
							<!--  <h1 id="logo"><a href="index.html">Puri</a></h1>-->
							<!-- <h1 id="logo"><a href="home"><img src="./resources/images/logo2.png" alt="" /></a></h1> -->

						<!-- Nav -->
						
						<header class="top-bar" >
							<nav id="nav" >
								<ul>
									<li><a href="#">반려식물추천</a></li>
									<li><a href="#">병해충판독</a></li>
									<li><a href="#">커뮤니티</a></li>
									<li><a href="#">마이페이지</a></li>
									<!--  <li class="break"><a href="right-sidebar.html">Right Sidebar</a></li>
									<li><a href="no-sidebar.html">No Sidebar</a></li>-->
								</ul>
							</nav>
							</header>
					</div>

					 <!-- Hero -->
				
                  <section id="hero" class="container">
                  
                  </section>
				</div>

			<!-- Features 1 -->
				<div class="wrapper">
					<div class="container">
						<div class="row">
							<section class="col-6 col-12-narrower feature">
								<div class="image-wrapper first">
									<a href="#" class="image featured first"><img src="./resources/images/pic01.jpg" alt="" /></a>
								</div>
								<header>
									<h2>Full Name</h2>
								</header>
								<p>안녕하세요 저는 민서입니다.</p>
								<ul class="actions">
									<li><a href="<c:url value='/goSignUp.do'/>" class="button">Elevate my awareness</a></li>
								</ul>
							</section>
							<section class="col-6 col-12-narrower feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="./resources/images/pic02.jpg" alt="" /></a>
								</div>
								<header>
									<h2>Full Name</h2>
								</header>
								<p>Lorem ipsum dolor sit amet consectetur et sed adipiscing elit. Curabitur vel
								sem sit dolor neque semper magna. Lorem ipsum dolor sit amet consectetur et sed
								adipiscing elit. Curabitur vel sem sit.</p>
								<ul class="actions">
									<li><a href="#" class="button">Elevate my awareness</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>

			<!-- Promo -
				<div id="promo-wrapper">
					<section id="promo">
						<h2>Neque semper magna et lorem ipsum adipiscing</h2>
						<a href="#" class="button">Breach the thresholds</a>
					</section>
				</div>->

			<!-- Features 2 -->
				<div class="wrapper">
					<section class="container">
						<header class="major">
							<h2>Sed magna consequat lorem curabitur tempus</h2>
							<p>Elit aliquam vulputate egestas euismod nunc semper vehicula lorem blandit</p>
						</header>
						<div class="row features">
							<section class="col-4 col-12-narrower feature">
								<div class="image-wrapper first">
									<a href="#" class="image featured"><img src="./resources/images/pic03.jpg" alt="" /></a>
								</div>
								<p>Lorem ipsum dolor sit amet consectetur et sed adipiscing elit. Curabitur
								vel sem sit dolor neque semper magna lorem ipsum.</p>
							</section>
							<section class="col-4 col-12-narrower feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="./resources/images/pic04.jpg" alt="" /></a>
								</div>
								<p>Lorem ipsum dolor sit amet consectetur et sed adipiscing elit. Curabitur
								vel sem sit dolor neque semper magna lorem ipsum.</p>
							</section>
							<section class="col-4 col-12-narrower feature">
								<div class="image-wrapper">
									<a href="#" class="image featured"><img src="./resources/images/pic05.jpg" alt="" /></a>
								</div>
								<p>Lorem ipsum dolor sit amet consectetur et sed adipiscing elit. Curabitur
								vel sem sit dolor neque semper magna lorem ipsum.</p>
							</section>
						</div>
						<ul class="actions major">
							<li><a href="#" class="button">Elevate my awareness</a></li>
						</ul>
					</section>
				</div>

			<!-- Footer -->
				<!--  <div id="footer-wrapper">-->
					<!--  <div id="footer" class="container">-->
						
						<!--  <div class="row">-->
							<!--  <section class="col-6 col-12-narrower">
								<form method="post" action="#">
									<div class="row gtr-50">
										<div class="col-6 col-12-mobile">
											<input name="name" placeholder="Name" type="text" />
										</div>
										<div class="col-6 col-12-mobile">
											<input name="email" placeholder="Email" type="text" />
										</div>
										<div class="col-12">
											<textarea name="message" placeholder="Message"></textarea>
										</div>
										<div class="col-12">
											<ul class="actions">
												<li><input type="submit" value="Send Message" /></li>
												<li><input type="reset" value="Clear form" /></li>
											</ul>
										</div>
									</div>
								</form>
							</section>-->
							<!--  <section class="col-6 col-12-narrower">
								<div class="row gtr-0">
									<ul class="divided icons col-6 col-12-mobile">
										<li class="icon brands fa-twitter"><a href="#"><span class="extra">twitter.com/</span>untitled</a></li>
										<li class="icon brands fa-facebook-f"><a href="#"><span class="extra">facebook.com/</span>untitled</a></li>
										<li class="icon brands fa-dribbble"><a href="#"><span class="extra">dribbble.com/</span>untitled</a></li>
									</ul>
									<ul class="divided icons col-6 col-12-mobile">
										<li class="icon brands fa-instagram"><a href="#"><span class="extra">instagram.com/</span>untitled</a></li>
										<li class="icon brands fa-youtube"><a href="#"><span class="extra">youtube.com/</span>untitled</a></li>
										<li class="icon brands fa-pinterest"><a href="#"><span class="extra">pinterest.com/</span>untitled</a></li>
									</ul>
								</div>
							</section>-->
						<!--  </div>-->
					<!--  </div>-->
					<div id="copyright" class="container">
						<ul class="menu">
						<li class="icon brands fa-twitter"><a href="#"><span class="extra"></span></a></li>
						<li class="icon brands fa-facebook-f"><a href="#"><span class="extra"></span></a></li>
						<li class="icon brands fa-youtube"><a href="#"><span class="extra"></span></a></li>
						<li class="icon brands fa-instagram"><a href="#"><span class="extra"></span></a></li>
						</ul>
						<ul class="menu">
							<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
						</ul>
					</div>
				</div>

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
