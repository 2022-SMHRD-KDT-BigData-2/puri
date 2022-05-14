<%@page import="kr.puri.entity.Member"%>
<%@page import="kr.puri.entity.Myplant"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="${cpath}/resources/css/Mypage.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">

<head>
<style type="text/css">
/*게이지바*/
progress {
	appearance: none;
}

progress::-webkit-progress-bar {
	background: #e9f2d6;
	border-radius: 10px;
	/*box-shadow: inset 3px 3px 10px #ccc;*/
}

progress::-webkit-progress-value {
	border-radius: 10px;
	background: #0ab639;
	background: -webkit-linear-gradient(to right, #c3dc8d, #89d47d);
	background: linear-gradient(to right, #c3dc8d, #89d47d);
}
</style>
<title>Puri-Mypage</title>

</head>

<body>
	<%
		HttpSession session = request.getSession();
	Member vo = (Member) session.getAttribute("vo");
	%>
	<!-- 상단메뉴 -->
	<header class="top-bar">
		<div class="col-lg-12 col-md-12 coml-sm-4 col-xs-4">
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
					<li><a href="<c:url value="/goSuggestion.do"/>">반려식물 매칭 </a></li>
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

	<!-- 고양이 -->
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<!-- 이미지 -->
					<div class="preview col-md-6">
						<h4 class="Nick" style="margin-bottom: 1.5em;"><%=vo.getNick()%></h4>
						<ul class="puricenter">
							<li><img src="./resources/puri/re1.png" class="smallsize"
								id="img3"></li>
							<li style="margin-top: 1.5em;">출석 &nbsp <progress id="jb2" value="100" min="0"
									max="100"></progress></li>
							<li>댓글 &nbsp <progress id="jb" value="100" min="0" max="100"></progress></li>
						</ul>
						<div class="action" style="text-align: center;">
							<button id="btn2" onclick="jbFunc()" style="width: 30%;">진화</button>
						</div>
					</div>
					<script type="text/javascript">
						function jbFunc() {
							if (document.getElementById('jb2').value != '100') {
								btn2.style.display = 'block';
							} else {
								document.getElementById('jb2').value = '0';
								document.getElementById('jb').value = '0';
								document.getElementById("img3").src = "./resources/puri/re2.png";
								btn2.style.display = 'none';
							}
						}
					</script>


					<div id="coma" class="details col-md-6">

						<h3 class="product-title">Plant list</h3>

						<c:forEach var="pvo" items="${list}">
							<div class="preview col-md-12">
								<table class="table" style="table-layout: fixed; border: none;">
									<tr>
										<th class="nanna" style="border: none;"></th>
										<td>${pvo.plant_name1}</td>
										<td>${pvo.plant_name2}</td>
										<td>${pvo.plant_name3}</td>
									</tr>

								</table>
							</div>
						</c:forEach>

					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>