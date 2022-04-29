<%@page import="kr.puri.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Puri-Mypage</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" />
<!-- css적용안됨 -->
<link href="${path}/resources/css/userin.css" rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="#!">Start Bootstrap</a>
			<!-- 로고 -->
			<!-- 오른쪽 버튼  
				<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>-->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
					<li class="nav-item"><a class="nav-link" href="#!">반려식물추천</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">병해충판독</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">커뮤니티</a></li>
					<li class="nav-item"><a class="nav-link" href="#!">마이페이지</a></li>
					<li class="nav-item dropdown">

						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="#!">All Products</a></li>
							<li><hr class="dropdown-divider" /></li>
							<li><a class="dropdown-item" href="#!">Popular Items</a></li>
							<li><a class="dropdown-item" href="#!">New Arrivals</a></li>
						</ul>
					</li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- Product section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 my-5">
			<div class="row gx-4 gx-lg-5 align-items-center">
				<div class="col-md-6">
					<img class="card-img-top mb-5 mb-md-0"
						src="./resources/images/banban.png" alt="Puri" />
					<div style="text-align: center;">
						<label>출석 </label>
						<meter value="50"></meter>
						<br> <label>댓글 </label>
						<meter min="0" max="100" value="64"></meter>
						<br> <br> <br>
						<!--<div class="d-flex" style="text-align: center;" >-->
						<!--버튼-->
						<button class="btn btn-outline-dark flex-shrink-0" type="button">도감</button>
						&nbsp&nbsp
						<button class="btn btn-outline-dark flex-shrink-0" type="button">진화</button>
					</div>
				</div>
				<div class="col-md-6">
					<h1 class="display-5 fw-bolder">마이룸</h1>
					<div class="fs-5 mb-5">
						<span><h4>My plant list</h4></span>
					</div>

						<ul>
							<li>번</li>
							<li>반</li>
							<li>빈</li>
						</ul>

				</div>
			</div>
		</div>
		<!-- Footer-->
		<footer class="py-5 bg-dark">
			<div class="container">
				<p class="m-0 text-center text-white">Copyright &copy; Your Website 2022</p>
			</div>
		</footer>
		<!-- Bootstrap core JS-->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
		<!-- Core theme JS-->
		<script src="js/scripts.js"></script>
</body>
</html>