<%@page import="kr.puri.entity.Plant"%>
<%@page import="kr.puri.entity.Tool"%>
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
<link href="${cpath}/resources/css/SuggestionResult.css" rel="stylesheet" />

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
	%>
	<form action="${path}/goSuggestionResult.do" method="post">
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
		<div class="container" id="vooo">
			<div class="card">
				<div class="container-fliud">
					<p style=" margin-top: 4em; text-align: left; font-size: 20pt; margin-bottom: 0;" ><%=vo.getNick() %>님의 추천 결과</p>
					<hr width="100%">
					<div class="wrapper row">
						<!-- 이미지 -->
						<c:forEach var="qvo" items="${list}">
							<div class="preview col-md-4">
								<h2
									style="padding-bottom: 1em; display: inline; margin-right: 0.5em;">${qvo.plant_name }</h2>
								<span>${qvo.plant_group }</span>
								<p>${qvo.plant_mean }</p>
								<img class="plantsize" src="${qvo.plant_img }">

								<table class="table">
									<tr>
										<td class="font_color">난이도</td>

										<td>${qvo.plant_level }</td>
									</tr>
									<tr>
										<td class="font_color">꽃 유무</td>
										<td>${qvo.plant_flower }</td>
									</tr>
									<tr>
										<td class="font_color">사이즈</td>
										<td>${qvo.plant_size }</td>
									</tr>
									<tr>
										<td class="font_color">물 주기</td>
										<td>${qvo.plant_water }일</td>
									</tr>
									<tr>
										<td class="font_color">빛</td>
										<td>${qvo.plant_sun }</td>
									</tr>
									<tr>
										<td class="font_color">특징</td>
										<td>${qvo.plant_feature }</td>
									</tr>

								</table>
							</div>

						</c:forEach>
	
						<div class="btnb" style=" padding-left:0px;">
							<a href="<c:url value="/goSoil.do"/>">토양 보기</a>
						</div>
						<div class="btnb" style=" padding-left:20px;">
							<a href="<c:url value="/goVase.do"/>">화분 보기</a>
						</div>
						<div class="btnb" style=" padding-left:20px;">
							<a href="<c:url value="/goTool.do"/>">도구 보기</a>
						</div>
						<div class="btnb " style=" padding-left:20px; margin-left: 840px;">
							<a href="<c:url value="/main.do"/>">닫기</a>
						</div>

					<hr width="100%">
					
						<div class="container" style="padding-top:0px;">
							<div class="card">
								<div class="container-fliud">
									<div class="wrapper row" style="padding-top:0px;" >
										<c:forEach var="tvo" items="${list1}">
											<div class="preview col-md-4" style="padding-left:100px;">
												
												<div id="soil">
													<img class="toolimg" src="${tvo.tool_img}">
													<p style="font-size:25px; font-weight: bold;">${tvo.tool_name}</p>
													<p style="text-align: left">${tvo.tool_info}</p>

												</div>
											</div>
										</c:forEach>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>