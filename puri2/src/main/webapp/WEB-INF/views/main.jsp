<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!--  <script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>-->

<link href="${cpath}/resources/js/bootstrap.js">
<link href="${cpath}/resources/js/bootstrap.min.js">
<link href="${cpath}/resources/css/main3.css" rel="stylesheet" />
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

	<!--  <div id="page-wrapper">-->
	<!-- Header -->
	<!-- 영상 -->
	<div class="imges">
		<div class="col-xs-12">
			<!-- id="header-wrapper" -->
			<video muted autoplay loop src="./resources/videos/Plant.mp4"></video>
		</div>
	</div>
	<div id="header" class="container"></div>
	<!-- 상단메뉴 -->
	<header class="top-bar">
		<div class="col-lg-4 col-md-4 coml-sm-2 col-xs-2">
			<h1 class="log col-xs-6"">
				<a href="<c:url value="/main.do"/>"> <img
					src="./resources/images/logo555.png" alt="" /></a>
			</h1>
			<nav>
				<ul class="menu col-xs-6">
					<%
						if (vo == null) {
					%>
					<!-- <li><a id="popup_layer"
                           href="<c:url value="/loginout.do"/>">로그인 </a></li> -->
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
					<li style="margin-right: 10em"><a href="${cpath}/logout.do">로그아웃
					</a></li>
					<%
						}
					%>
				</ul>
			</nav>
		</div>

	</header>
	<!-- 게시글 -->
	<div class="wrapper">
		<div class="container">
			<div class="row">
				<section class="col-6 col-12-narrower feature">
					<div class="image-wrapper first">
						<a href="#" class="image featured first"><img
							src="./resources/images/banuer01.png" alt="" /></a>
					</div>
					<header>
						<h2>
							아디안텀<br>Adiantum
						</h2>
					</header>
					<table>
						<tr>
							<td class="title">물주기</td>
							<td>높은 공중습도를 필요로하고, 조금만 건조해도 생육저하가 온다. 60% 이상의 습도를 선호하기 때문에
								건조한 계절 에는 관리요구도가 높아진다.한번 건조 피해를 받은 식물은 다시 살리기 힘드므로 수분관리가 필요하다.
								여름철 에도 매일 분무를 해주어 공중습도를 높여준다.</td>
						</tr>
						<tr>
							<td class="title">빛</td>
							<td>아디안텀은 개울 옆의 습한 지역,틈새 및 산림 가장자리에서 자라는 반음지 식물로 광을 크게 필요로
								하지 않으나 너무 어두운 곳에서 키우면 가늘고 길게 자라며 수형이 엉성해지니 광조절을 잘해주어야한다. 봄,여름철
								강한 직사광선에 두면 잎이 타기 쉬우므로 주의한다.</td>
						</tr>
						<tr>
							<td class="title">온도</td>
							<td>생육하기 좋은 온도는 16~21˚C이고, 내한성이 약해 겨울에는 15˚C이상 유지해주어야 한다.</td>
						</tr>
					</table>


					<!--  <ul class="actions">
                  <li><a href="<c:url value="/"/>" class="button">자세히보기</a></li>
                  <!-- https://blog.naver.com/flowernews24 
               </ul>-->
				</section>
				<section class="col-6 col-12-narrower feature">
					<div class="image-wrapper">
						<a href="#" class="image featured"><img
							src="./resources/images/tw.png" alt="" /></a>
					</div>
					<header>
						<h2>
							호프셀렘 <br>Philodendron selloum
						</h2>
					</header>
					<table>
						<tr>
							<td class="title">물주기</td>
							<td>셀렘이 어디에 위치하는지 셀렘화분에 흙이 많고 적음에 따라서 물주는 주기는 좀 달라져야한다.
								기본적으로 통상 1주일에 한번정도 물을 주면되는데 꼭 주기전에는 흙이 말랐는지를 확인해야한다. 줄기가 두꺼운
								호프셀렘의 경우에는 일반셀렘보다 물을 더 많이 보유하고 있는 편이라서 과습에 약하다.</td>
						</tr>
						<tr>
							<td class="title">빛</td>
							<td>아디안텀은 개울 옆의 습한 지역,틈새 및 산림 가장자리에서 자라는 반음지 식물로 광을 크게 필요로
								하지 않으나 너무 어두운 곳에서 키우면 가늘고 길게 자라며 수형이 엉성해지니 광조절을 잘해주어야한다. 봄,여름철
								강한 직사광선에 두면 잎이 타기 쉬우므로 주의한다.</td>
						</tr>
						<tr>
							<td class="title">온도</td>
							<td>생육하기 좋은 온도는 16~21˚C이고, 내한성이 약해 겨울에는 15˚C이상 유지해주어야 한다.</td>
						</tr>
					</table>
				</section>
				<section class="col-6 col-12-narrower feature">
					<div class="image-wrapper first">
						<a href="#" class="image featured first"><img
							src="./resources/images/gen.png" alt="" /></a>
					</div>
					<header>
						<h2>
							겐지야자<br>Kentia palm
						</h2>
					</header>
					<table>
						<tr>
							<td class="title">물주기</td>
							<td>높은 공중습도를 필요로하고, 조금만 건조해도 생육저하가 온다. 60% 이상의 습도를 선호하기 때문에
								건조한 계절 에는 관리요구도가 높아진다.한번 건조 피해를 받은 식물은 다시 살리기 힘드므로 수분관리가 필요하다.
								여름철 에도 매일 분무를 해주어 공중습도를 높여준다.</td>
						</tr>
						<tr>
							<td class="title">빛</td>
							<td>아디안텀은 개울 옆의 습한 지역,틈새 및 산림 가장자리에서 자라는 반음지 식물로 광을 크게 필요로
								하지 않으나 너무 어두운 곳에서 키우면 가늘고 길게 자라며 수형이 엉성해지니 광조절을 잘해주어야한다. 봄,여름철
								강한 직사광선에 두면 잎이 타기 쉬우므로 주의한다.</td>
						</tr>
						<tr>
							<td class="title">온도</td>
							<td>생육하기 좋은 온도는 16~21˚C이고, 내한성이 약해 겨울에는 15˚C이상 유지해주어야 한다.</td>
						</tr>
					</table>


					<!--  <ul class="actions">
                  <li><a href="<c:url value="/"/>" class="button">자세히보기</a></li>
                  <!-- https://blog.naver.com/flowernews24 
               </ul>-->
				</section>
				<section class="col-6 col-12-narrower feature">
					<div class="image-wrapper">
						<a href="#" class="image featured"><img
							src="./resources/images/jjh.png" alt="" /></a>
					</div>
					<header>
						<h2>
							몬스테라 보르시지아나 알보<br>Monstera Borsigiana Albo
						</h2>
					</header>
					<table>
						<tr>
							<td class="title">물주기</td>
							<td>높은 공중습도를 필요로하고, 조금만 건조해도 생육저하가 온다. 60% 이상의 습도를 선호하기 때문에
								건조한 계절 에는 관리요구도가 높아진다.한번 건조 피해를 받은 식물은 다시 살리기 힘드므로 수분관리가 필요하다.
								여름철 에도 매일 분무를 해주어 공중습도를 높여준다.</td>
						</tr>
						<tr>
							<td class="title">빛</td>
							<td>아디안텀은 개울 옆의 습한 지역,틈새 및 산림 가장자리에서 자라는 반음지 식물로 광을 크게 필요로
								하지 않으나 너무 어두운 곳에서 키우면 가늘고 길게 자라며 수형이 엉성해지니 광조절을 잘해주어야한다. 봄,여름철
								강한 직사광선에 두면 잎이 타기 쉬우므로 주의한다.</td>
						</tr>
						<tr>
							<td class="title">온도</td>
							<td>생육하기 좋은 온도는 16~21˚C이고, 내한성이 약해 겨울에는 15˚C이상 유지해주어야 한다.</td>
						</tr>
					</table>
				</section>
			</div>
		</div>
	</div>
	<div id="copyright" class="container">
		<!--   <ul class="menu">
         <li class="icon brands fa-twitter"><a href="#"><span
               class="extra"></span></a></li>
         <li class="icon brands fa-facebook-f"><a href="#"><span
               class="extra"></span></a></li>
         <li class="icon brands fa-youtube"><a href="#"><span
               class="extra"></span></a></li>
         <li class="icon brands fa-instagram"><a href="#"><span
               class="extra"></span></a></li>
      </ul>-->
		<ul class="menu">
			<li>&copy; Untitled. All rights reserved.</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>
	</div>


</body>
</html>