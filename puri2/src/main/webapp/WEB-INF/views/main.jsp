<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!--  <script
   src="//maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>-->

<link href="${cpath}/resources/js/bootstrap.js">
<link href="${cpath}/resources/js/bootstrap.min.js">
<link href="${cpath}/resources/css/main3.css" rel="stylesheet" />
<html>
<meta charset="EUC-KR">

<head>
<style type="text/css">
::-webkit-scrollbar {
    display: none;
}
</style>
<title>Puri</title>
</head>

<body class="homepage is-preload">
   <%
      HttpSession session = request.getSession();
   Member vo = (Member) session.getAttribute("vo");
   out.print(vo);
   %>

   <!--  <div id="page-wrapper">-->
   <!-- Header -->
   <!-- 영상 -->
   <div class="imges">
      <div class="col-xs-12">
         <!-- id="header-wrapper" -->
         <video muted autoplay loop src="./resources/videos/Plant.mp4"></video>
      </div>
   </div>
   <!--  <div id="header" class="container"></div>-->
   <!-- 상단메뉴 -->
   <header class="top-bar">
      <div class="col-lg-4 col-md-4 coml-sm-2 col-xs-2">
         <h1 class="log col-xs-6"">
            <a href="<c:url value="/main.do"/>"> <img
               src="./resources/images/logo555.png" alt="" /></a>
         </h1>
         <nav>
            <ul class="menu col-xs-6">
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
   <!-- 게시글 --> 
   <div class="wrapper">
      <div class="container">
         <div class="row">
            <section class="col-6 col-12-narrower feature">
               <div class="image-wrapper first">
                  <a href="#" class="image featured first"><img src="./resources/images/Adiantum1.png" style="height: 100%;"></a>
               </div>
               <div style="margin-right: 1em;"></div>
            </section>
            <section class="col-6 col-12-narrower feature">
               <div class="wrap_center" style="overflow-y:hidden; ">
                  <div class="container">
                     <div class="img_wrap">
                        <div class="image-wrapper first">
                           <ul class="rollimgs" >
                              <li><img src="./resources/images/PhilodendronSelloum1.png"></img></li>
                              <li><img src="./resources/images/KentiaPalm1.png"></img></li>
                              <li><img src="./resources/images/MonsteraBorsigianaAlbo1.png"></img></li>
                           </ul>
                        </div>
                     </div>
                  </div>
               </div>
         </section>

         </div>
         <script type="text/javascript">
            let banner = {
               rollId : null,
               interval : 2000,

               //롤링 배너 초기화
               rollInit : function(newinterval) {
                  if (parseInt(newinterval) > 0) {
                     this.interval = newinterval;
                  }
                  //현재 배너
                  let firstitem = document.querySelector('.rollimgs li');
                  if (firstitem) {
                     firstitem.classList.add('currentroll');
                  }
                  //다음 배너
                  let seconditem = document
                        .querySelectorAll('.rollimgs li')[1];
                  if (seconditem) {
                     seconditem.classList.add('nextroll');
                  }
                  //이전 배너
                  document.querySelector('.rollimgs li:last-child').classList
                        .add('prevroll');
                  this.rollId = setInterval(this.rollNext, this.interval);//롤링 인터벌 호출
               },

               //다음 배너 롤링
               rollNext : function() {
                  if (document.querySelector('.prevroll')) {
                     document.querySelector('.prevroll').classList
                           .remove('prevroll');
                  }
                  if (document.querySelector('.currentroll')) {
                     document.querySelector('.currentroll').classList
                           .add('prevroll');
                     document.querySelector('.currentroll').classList
                           .remove('currentroll');
                  }
                  if (document.querySelector('.nextroll')) {
                     document.querySelector('.nextroll').classList
                           .add('currentroll');
                     document.querySelector('.nextroll').classList
                           .remove('nextroll');
                  }
                  //다음 이미지 있으면 다음 롤링 이미지로 선택, 없으면 첫번째 이미지를 롤링 이미지로 지정
                  if (document.querySelector('.currentroll').nextElementSibling) {
                     document.querySelector('.currentroll').nextElementSibling.classList
                           .add('nextroll');
                  } else {
                     document.querySelector('.rollimgs li').classList
                           .add('nextroll');
                  }
               }
            }
            document.addEventListener('DOMContentLoaded', function() {
               banner.rollInit(4000); // 배너 롤링
            });
         </script>

   </div>
</body>
</html>