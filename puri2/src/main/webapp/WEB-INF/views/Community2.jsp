<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page session="false"%>
   
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
   pageContext.setAttribute("br", "<br/>");
   pageContext.setAttribute("cn", "\n");
   
   %>
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link href="${cpath}/resources/css/Mypage.css" rel="stylesheet" />
<link href="${cpath}/resources/css/font-awesome.min.css"
	rel="stylesheet">
<html>
<meta charset="EUC-KR">


<head>
<style type="text/css">
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

		<h1 class="log">
			<a href="<c:url value="/main.do"/>"><img
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

	</header>

	<!-- 고양이 -->
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<!-- 이미지 -->
					<div class="preview col-md-6">

						<ul class="puricenter">
							<li><img src="./resources/images/${bvo.write_img}"
								class="smallsize" /></li>

						</ul>

					</div>


					<div id="coma" class="details col-md-6">
						<!-- 자기소개 -->
						<div class="form-group">
							<h3 style="text-align: left;" class="product-title">${bvo.write_title}</h3>

							<span class="form-control"
                        style="width: 100%; height: auto; font-size: 15pt;"
                        id="sizetext" name="content">${fn:replace(bvo.write_content,cn,br)}</span>
						</div>
						<div class="action" style="text-align: right;">
							<c:if test="${bvo.id ==vo.id}">
							<button>
								<a href="<c:url value='/boardDelete.do/${bvo.write_seq}' />"
									role="button">삭제</a>
							</button>
									</c:if>
						</div>



					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>