 <%@page import="kr.puri.entity.Member"%>
 <%@page import="kr.puri.entity.Disease_Info"%>
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
      <h1 style="font-size: 30pt; margin-top: 2.5em; margin-bottom: 0.5em;">${info.disease_name}</h1>
      <hr class="mb-4" style="margin-bottom: 1em; margin-top: 2em;">
      <div class="card">
         <div class="container-fliud">
            <div class="wrapper row">
               <!-- 이미지 -->
               <div class="preview col-md-6">
                  <ul class="puricenter">
                     <li><img alt="사진넣어" src="${info.disease_img}" class="smallsize"></li>
                  </ul>
               </div>
               <!-- 코멘트 -->
               <div id="coma" class="details col-md-6">
                  <!-- 자기소개 -->
                  <div class="form-group">
                     <h3 class="product-title" style="text-align: left;">해충 설명</h3>
                     <span style="width: 95%; height: auto; font-size: 17px; margin-bottom:20px;" class="form-control"
                        id="content">
                        ${info.disease_sym}</span>
                  </div>

                  <h3 class="product-title" style="text-align: left;">관리방법</h3>
                  <span style="width: 95%; height: auto; font-size: 17px;" class="form-control"
                     id="content">
                     ${info.disease_manage} </span>
               </div>
            </div>
               <div style="text-align:center; ; margin-top: 1em; margin-right: 2em;" >
                  <a href="main.do"><button>확인</button></a>
               </div>
         </div>
      </div>
   </div>
</body>

</html>