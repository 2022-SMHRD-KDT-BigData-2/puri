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
<link href="${cpath}/resources/css/DecipherResult.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">
<head>
<style type="text/css">
</style>
<title>Puri</title>
</head>
<script type="text/javascript">
	var file;
	function loadFile(input) {
		file = input.files[0]; //선택된 파일 가져오기

		//미리 만들어 놓은 div에 text(파일 이름) 추가
		var name = document.getElementById('fileName');
		name.textContent = file.name;

		//새로운 이미지 div 추가
		var newImage = document.createElement("img");
		newImage.setAttribute("class", 'img');

		//이미지 source 가져오기
		newImage.src = URL.createObjectURL(file);

		newImage.style.width = "70%";
		newImage.style.height = "70%";
		// newImage.style.visibility = "hidden";   //버튼을 누르기 전까지는 이미지를 숨긴다
		newImage.style.objectFit = "contain";

		//이미지를 image-show div에 추가
		var container = document.getElementById('image-show');
		container.appendChild(newImage);
	}

	function imageUpload() {
		var form_data = new FormData();
		form_data.append("files", file);
		$.ajax({
			url : 'http://127.0.0.1:3000/upload', // point to server-side URL
			dataType : 'json', // what to expect back from server
			cache : false,
			contentType : false,
			processData : false,
			data : form_data,
			type : 'post',
			success : callback,
			error : function(response) {
				alert("error");
			}
		});
	}
	function callback(data) {
		// Flask에서 데이터를 받는부분
		alert(data); //?
	}
</script>
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
					<li><a href="<c:url value="/goSuggestion.do"/>">반려식물 추천 </a></li>
					<li><a href="<c:url value="/goDecipher.do"/>">병해충 판독</a></li>
					<li><a href="<c:url value="/goCommunity.do"/>">커뮤니티</a></li>
					<li><a href="<c:url value="/goMypage.do"/>">마이페이지</a></li>
					<li style="margin-right: 10em"><a href="${path}/logout.do">로그아웃</a></li>
					<%
						}
					%>
				</ul>
			</nav>
		</div>
	</header>

	<!-- 고양이 -->
	<div class="container">
		<h1 style="font-size: 30pt; margin-top: 2.5em; margin-bottom: 0.5em;">병해충 이름</h1>
		<hr class="mb-4" style="margin-bottom: 1em; margin-top: 2em;">
		<div class="card">
			<div class="container-fliud">
				<div class="wrapper row">
					<!-- 이미지 -->
					<div class="preview col-md-6">
						<ul class="puricenter">
							<li><img alt="사진넣어" src="./resources/images/question3.png" class="smallsize"></li>
						</ul>
					</div>
					<!-- 코멘트 -->
					<div id="coma" class="details col-md-6">
						<!-- 자기소개 -->
						<div class="form-group">
							<h3 class="product-title" style="text-align: left;">해충 설명</h3>
							<span style="width: 95%; height: auto;" class="form-control"
								id="content">
								설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명설명</span>
						</div>

						<h3 class="product-title" style="text-align: left;">관리방법</h3>
						<span style="width: 95%; height: auto;" class="form-control"
							id="content">
							관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리
							관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리
							관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리
							관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리관리 </span>
					</div>
				</div>
					<div style="text-align:center; ; margin-top: 1em; margin-right: 2em;" >
						<button>확인</button>
					</div>
			</div>
		</div>
	</div>
</body>

</html>