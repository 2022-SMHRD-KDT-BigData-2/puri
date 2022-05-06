<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="${path}/resources/js/bootstrap.js">
<link href="${path}/resources/js/bootstrap.min.js">
<link href="${path}/resources/css/main3.css" rel="stylesheet" />
<link href="${path}/resources/css/Suggestion.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">

<head>
<style type="text/css">
.image-upload {
    flex: 1;
    display: flex;
    flex-direction: column;
    justify-content: center;
}

.button {
    display: flex;
    justify-content: center;
}

label {
    cursor: pointer;
    font-size: 1em;
}

#chooseFile {
    visibility: hidden;
}

.fileContainer {
    display: flex;
    justify-content: center;
    align-items: center;
}

.fileInput {
    display: flex;
    align-items: center;
    border-bottom: solid 2px black;
    width: 60%;
    height: 30px;
}

#fileName {
    margin-left: 5px;
}

.buttonContainer {
    width: 15%;
    display: flex;
    justify-content: center;
    align-items: center;
    margin-left: 10px;
    background-color: black;
    color: white;
    border-radius: 30px;
    padding: 10px;
    font-size: 0.8em;

    cursor: pointer;
}

.image-show {
    z-index: -1;
    display: flex;
    justify-content: center;
    align-items: center;
    position: absolute;
    width: 100%;
    height: 100%;
}

.img {
    position: absolute;
}
</style>
<script type="text/javascript">
function loadFile(input) {
    var file = input.files[0];	//선택된 파일 가져오기

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
};
</script>
<title>Puri</title>
</head>

<body class="homepage is-preload">
	<%
		HttpSession session = request.getSession();
	Member vo = (Member) session.getAttribute("vo");
	out.print(vo);
	%>
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
					<li style="margin-right: 10em"><a href="${path}/logout.do">로그아웃</a></li>
					<%
						}
					%>
				</ul>
			</nav>
		</div>
	</header>

	<!-- 이미지 업로드 -->
	<h1>파일 업로드</h1>
	    <div class="image-show" id="image-show"></div>
	   <div class="container">
        <div class="image-upload" id="image-upload">
	<form action="${path}/upload.do" method="post" enctype="multipart/form-data">	
	   <div class="button">
        	<label for="chooseFile"> 👉 CLICK HERE! 👈 </label>
   	 	</div>
		<input type="file" id="chooseFile" name="file" accept="image/*" onchange="loadFile(this)"><br> 
		 <div class="fileContainer">
                <div class="fileInput">
                    <p>FILE NAME: </p>
                    <p id="fileName"></p>
                </div>
                <div class="buttonContainer">
                    <input type="submit" class="submitButton" id="submitButton" value="SUBMIT">              
                </div>
            </div>
	</form>
	</div>
        
        
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
</body>
</html>