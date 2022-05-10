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
<link href="${cpath}/resources/js/bootstrap.js">
<link href="${cpath}/resources/js/bootstrap.min.js">
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
					<!-- 댓글 -->
					<div class="col-md-12">
					<p style="margin-bottom: 0.3em; font-size: 16pt;">댓글</p>
						<table>
							<tr>
								<th class="nanna" style="border: none;"></th>
								<td style="margin-right: 0.5em;"><%=vo.getNick()%></td> <!-- 닉네임 -->
								<td><input type="text" size="75px"
									style="width: 100%; border: none; margin-right: 1em;"
									placeholder="댓글을 입력해주세요."></td> <!-- 댓글 -->
								<td style="text-align: left;"><button>등록</button></td> <!-- 글작성 시 등록 버튼 활성화 -->
								<td style="text-align: left;"><button>수정</button></td> <!-- 글작성 완료 시 수정 삭제 버튼 활성화 -->
								<td style="text-align: left;"><button>삭제</button></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
</body>

</html>