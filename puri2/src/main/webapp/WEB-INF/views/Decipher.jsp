<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />


<link href="${cpath}/resources/js/bootstrap.js">
<link href="${cpath}/resources/js/bootstrap.min.js">
<link href="${cpath}/resources/css/Decipher.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">
<head>
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style type="text/css">
.image-upload {
   flex: 1;
   display: flex;
   flex-direction: column;
   /* justify-content: center; */
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
   width: 90%;
   height: 30px;
}

#fileName {
   margin-left: 5px;
}

.image-show {
   z-index: -1;
   /* display: flex; */
   justify-content: center;
   align-items: center;
   position: absolute;
   width: 100%;
   height: 100%;
}

.img {
   position: absolute;
}

#image-show-contain {
   width: 100%;
   height: 70%;
   /* border: 2px solid;
   border-color: black;  */
   border-radius: 20px;
   margin-top: 60px;
   margin-bottom: 30px;
}
</style>

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
         url : 'http://210.223.207.51:9900/upload', 
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
   function callback(rs) {      
      location.href = "dicipherResult.do?rs=" + rs;
      
   }
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
               <li><a href="<c:url value="/goSuggestion.do"/>">반려식물 매칭 </a></li>
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
   <div class="container">
      <h1 style="font-size: 30pt; margin-top:2em; margin-bottom: 20px;">병해충 판독</h1>
      <hr class="mb-4" style="margin-bottom: 1em; margin-top: 2em;" >
      <span class="spanst">병해충 판독할 이미지 파일(.png)을 업로드 해주세요.</span>
      
      <!-- 버튼 -->
      <div onclick="colorchage()" class="button" id="title" style="width: 15%; white-space: nowrap; float: right; color: #008040;">
         <label style="display: inline-block;" for="chooseFile"> 파일 선택 </label>
      </div>
      <script type="text/javascript">
         const title = document.querySelector("#title");
         function colorchage() {
            title.style.color = '#c2c7cc';
            title.style.border = 'solid 3px #c2c7cc';
            
         }
         title.addEventListener("click", handleClick);
      </script>
      <!-- 사진 -->
      <div id="image-show-contain">
         <div class="image-show" id="image-show"></div>
      </div>
      <div class="image-upload" id="image-upload">
         <form action="${path}/upload.do" method="post"
            enctype="multipart/form-data">

            <input type="file" id="chooseFile" name="file" accept="image/*"
               onchange="loadFile(this)"><br>
               <hr class="mb-4" style="margin-bottom: 1em;">
            <div class="fileContainer">
               <div class="fileInput">
                  <p>파일 이름 |</p>
                  <p id="fileName"></p>
               </div>
               <div class="buttonContainer">
                  <input type="button" value="업로드" onclick="imageUpload();" style="font-family: 'SF_HailSnow'; color: #008040;">
<!--                   <input type="button"  onclick="imageUpload();loaction.href='/goDecipherResult.do'" value="업로드" 
                     style="font-family: 'SF_HailSnow'; color: #008040;"> -->
               </div>
            </div>
         </form>
      </div>
   </div>



</body>
</html>