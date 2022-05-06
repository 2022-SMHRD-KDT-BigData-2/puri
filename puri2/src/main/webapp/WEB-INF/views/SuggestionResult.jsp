<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<c:set var="cpath" value="${pageContext.request.contextPath}" />
<link href="${cpath}/resources/js/bootstrap.js">
<link href="${cpath}/resources/js/bootstrap.min.js">
<link href="${cpath}/resources/css/main3.css" rel="stylesheet" />
<link href="${cpath}/resources/css/SuggestionResult.css"
	rel="stylesheet" />

<html>
<meta charset="EUC-KR">

<head>
<style type="text/css">
</style>
<title>Puri-Mypage</title>
</head>

<body class="homepage is-preload">
	<%
		HttpSession session = request.getSession();
	Member vo = (Member) session.getAttribute("vo");
	out.print(vo);
	%>
	<form action="${path}/SuggestionResult.do" method="post">
		<header class="top-bar">

			<h1 class="log">
				<a href="<c:url value="/main.do"/>"><img
					src="./resources/images/logo555.png" alt="" /></a>
			</h1>
			<nav>
				<ul class="menu">
					<%
						if (vo == null) {
					%>
					<li><a href="<c:url value="/goLogin.do"/>">로그인 </a></li>
					<li style="margin-right: 10em"><a
						href="<c:url value="/goSignUp.do"/>">회원가입</a></li>

					<%
						} else {
					%>
					<li><a href="<c:url value="/goSuggestion.do"/>">반려식물 추천 </a></li>
					<li><a href="<c:url value="/goDecipher.do"/>">병해충 판독</a></li>
					<li><a href="<c:url value="/goCommunity.do"/>">커뮤니티</a></li>
					<li><a href="<c:url value="/goMypage.do"/>">마이페이지</a></li>
					<li style="margin-right: 10em"><a href="${path}/logout.do">로그아웃
					</a></li>
					<%
						}
					%>
				</ul>
			</nav>
		</header>

		<!-- 추천 결과 -->
		<div class="S_result">식물 분류
			이름
			이미지
			정보
		
		
		</div>

	

		<!-- 하단 -->
		<div id="copyright" class="container">
			<ul class="menu">
				<li>&copy; Untitled. All rights reserved.</li>
				<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
			</ul>
		</div>
	</form>
</body>