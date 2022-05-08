<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="${path}/resources/js/bootstrap.js">
<link href="${path}/resources/js/bootstrap.min.js">
<link href="${path}/resources/css/main3.css" rel="stylesheet" />
<link href="${path}/resources/css/Tool.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">

<head>
<style type="text/css">
</style>
<title>Puri</title>
</head>

<body class="homepage is-preload">
	<%
		HttpSession session = request.getSession();
	Member vo = (Member) session.getAttribute("vo");
	out.print(vo);
	%>
	<form action="${path}/goTool.do" method="get">
		<!-- 상단메뉴 -->
		<header class="top-bar">
			<div class="col-lg-4 col-md-4 coml-sm-2 col-xs-2">
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
			</div>
		</header>

		<!-- 여기부터 도구 설명 -->
		<div class="container">
			<div class="card">
				<div class="container-fliud">
					<div class="wrapper row">
						<div class="preview col-md-12" id="tool_info">
							<h1>도구 정보</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="card">
				<div class="container-fliud">
					<div class="wrapper row">

						<c:forEach var="vo" items="${list}">
							<div class="preview col-md-4">
								<div id="tool">
									<!-- <p id="group">${vo.tool_group}</p> -->
									<img class="toolimg" src="${vo.tool_img }">
									<h3>${vo.tool_name}</h3>
									<p>${vo.tool_info}</p>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>