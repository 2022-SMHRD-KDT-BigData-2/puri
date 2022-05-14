<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<link href="${path}/resources/css/Community.css" rel="stylesheet" />
<link href="${path}/resources/js/bootstrap.js">
<link href="${path}/resources/js/bootstrap.min.js">

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
               <li><a href="<c:url value="/goSuggestion.do"/>">반려식물 매칭 </a></li>
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
               <tr style="height: 3em; line-height: 3em;">
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
      <div class="paging" style="padding-top: 3em;">
         <a href="#">이전</a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
         <a href="#">4</a> <a href="#">다음</a>
      </div>
   </div>

</body>
</html>