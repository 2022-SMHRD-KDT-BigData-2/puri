<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>

<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="${path}/resources/js/bootstrap.js">
<link href="${path}/resources/js/bootstrap.min.js">
<link href="${path}/resources/css/semain.css" rel="stylesheet" />
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
   
   %>
   <form action="${path}/Suggestion2.do" method="post">
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

      <!-- 여기부터 추천 -->
      <div id="center">
         <h1 class="topmenu">
            <progress id="progress" value="0" min="0" max="100"></progress>
         </h1>

         <!-- 퀴즈 1 -->
         <fieldset class="fie1">
            <fieldset>
               <p>집에 오면 제일 먼저 뭐부터 했어?</P>
               <div id="q_img" >
                  <img src="./resources/images/question1.png" />
               </div>
               
            </fieldset>

            <div class="cmd">
                     <button id="answer1" type="submit" name="q_1"
                        class="btn btn-primary" value=1>어.. 당연히 옷 벗기도 전에 침대에
                        누웠죠..</button>
                     <button id="answer2" type="submit" name="q_1"
                        class="btn btn-primary" value=0>음.. 우선 씻고 나와서 할 일부터
                        했는데요.</button>
               
            </div>

         </fieldset>
      </div>

   </form>
</body>
</html>