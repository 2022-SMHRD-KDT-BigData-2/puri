<%@page import="kr.puri.entity.Member"%>
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
</style>
<title>Puri-Mypage</title>
</head>

<body>
	<%
      HttpSession session = request.getSession();
   Member vo = (Member) session.getAttribute("vo");
   out.print(vo.getId());
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

	<!-- 고양이 -->
	<div class="container">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<!-- 이미지 -->
					<div class="preview col-md-6">


						<h4 class="Nick"><%=vo.getNick()%></h4>


						<ul class="puricenter">
							<li><img src="./resources/images/re1.png" class="smallsize"></li>
							<li>출석 &nbsp <progress id="progress" value="20" min="0"
									max="100"></progress></li>
							<li>댓글 &nbsp <progress id="progress" value="50" min="0"
									max="100"></progress></li>
						</ul>
						<div class="action" style="text-align: center;">
							<button>도감</button>
							<button>진화</button>
						</div>
					</div>


					<div id="coma" class="details col-md-6">
						<!-- 자기소개 -->
						<div class="form-group">
							<h3 class="product-title">Plant Story</h3>
							<textarea style="width: 95%;" class="form-control" rows="7"
								id="content" name="content" placeholder="내용 작성"></textarea>
							<button id="mar" class="save">저장</button>
							<button class="save">수정</button>
						</div>

						<h3 class="product-title">Plant list</h3>
						<ul>
							<c:forEach var="vo" items="${list}">
								<li>목록</li>

							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>

</html>