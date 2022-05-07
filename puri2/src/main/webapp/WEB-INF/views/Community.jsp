<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="${path}/resources/js/test.js"></script>
<link href="${path}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}/resources/css/Community.css" rel="stylesheet" />

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
	%>

	<!-- 상단메뉴 -->
	<header class="top-bar">
		<div class="col-lg-4 col-md-4 coml-sm-2 col-xs-2">
			<h1 class="log">
				<a href="<c:url value="/main.do"/>"> <img
					src="./resources/images/logo555.png" alt="" /></a>
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
	<!-- 게시글 -->

	<div class="wrapper">
		<div class="gala">
			<table class="teables">
				<tr>
					<th class="sizemin">번호</th>
					<th>제목</th>
					<th class="sizemin">작성자</th>
				</tr>

				<c:forEach items="${list}" var="list">
					<c:set var="sum" value="${sum+1}" />
					<tr>
						<td><c:out value="${sum}" /></td>
						<td class="sizemin"><a
							href="<c:url value="/Community2.do?seq=${list.write_seq}"/>"><c:out
									value="${list.write_title}" /></a></td>
						<td class="sizemin"><c:out value="${list.id}" /></td>
					</tr>
				</c:forEach>
				<div class="btnb">
					<a href="<c:url value="/goBoardInsert.do"/>">글쓰기</a>
				</div>
			</table>
		</div>
		<div class="paging22"></div>
		</from>
		<!-- 페이지 버튼 -->
		<div class="paging">
			<a href="#">이전</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
			<a href="#">4</a> <a href="#">다음</a>
		</div>
	</div>

	<div id="copyright" class="container">
		<ul class="menu">
			<li>&copy; Untitled. All rights reserved.</li>
			<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
		</ul>
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