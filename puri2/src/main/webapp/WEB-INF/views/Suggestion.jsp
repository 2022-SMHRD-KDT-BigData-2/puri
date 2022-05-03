<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="${path}/resources/js/test.js"></script>
<link href="${path}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}/resources/css/main3.css" rel="stylesheet" />
<link href="${path}/resources/css/Suggestion.css" rel="stylesheet" />
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
	<form novalidate action="${path}/Suggestion2.do" method="post">
		<!-- 상단메뉴 -->
		<header class="top-bar">
			<div class="col-lg-4 col-md-4 coml-sm-2 col-xs-2">
				<h1 class="log">
					<img src="./resources/images/logo555.png" alt="" />
				</h1>
				<nav>
					<ul class="menu">
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
						<li><a href="#">병해충 판독</a></li>
						<li><a href="#">커뮤니티</a></li>
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

		<!-- 여기부터 추천 -->
		<div id="center">
		  <h1 class="topmenu">어떤 식물을 키울까요~?</h1>
         
         <!-- 퀴즈 1 -->
         <fieldset class="fie1">
            <fieldset>
               <p>집에 오면 제일 먼저 뭐부터 했지?</P>
               
            </fieldset>
        
            <div class="cmd" >
            <ul>
            <li>
            
				<button id="answer1" type="submit" name="question_1" class="btn btn-primary"
					value=1>어.. 당연히 옷 벗기도 전에 침대에 누웠죠..</button> 
			
			</li>
          <li>
				<button id="answer2" type="submit" name="question_1" class="btn btn-primary"
					value=0>음.. 우선 씻고 나와서 할 일부터 했는데요.</button> 
					</li>
					</ul>
			</div>
			
         </fieldset>
        </div>










		<!-- 하단 -->
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
		</div>

		</div>

		<!-- Scripts -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.dropotron.min.js"></script>
		<script src="assets/js/browser.min.js"></script>
		<script src="assets/js/breakpoints.min.js"></script>
		<script src="assets/js/util.js"></script>
		<script src="assets/js/main.js"></script>
	</form>
</body>
</html>