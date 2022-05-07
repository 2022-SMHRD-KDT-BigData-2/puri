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
                  <a href="#" class="image featured first"><img
                     src="./resources/images/banuer01.png" alt="" /></a>
               </div>
               <header>
                  <h2>
                     아디안텀<br>Adiantum
                  </h2>
               </header>
               <table>
                  <tr>
                     <td class="title">물주기</td>
                     <td>봄부터 가을까지 연수를 규치적으로 주고, 겨울철 휴면기에는 물을 적게 준다.
                     토양이 말랐는지 확인 하고 물을 주도록 한다.
                     높은 습도를 유지하기 위해 물뿌리개를 이용하여 자주 분무해준다.
                        </td>
                  </tr>
                  <tr>
                     <td class="title">빛</td>
                     <td>간접광이나 그늘을 선호하며, 직사광은 피해야합니다.</td>
                  </tr>
                  <tr>
                     <td class="title">온도</td>
                     <td>따뜻한 곳을 좋아하며, 5℃까지 견딜 수 있습니다.</td>
                  </tr>
               </table>
            </section>
            <section class="col-6 col-12-narrower feature">
               <div class="wrap_center" style="overflow-y:hidden; ">
                  <div class="container">
                     <div class="img_wrap">
                        <div class="image-wrapper first">
                           <ul class="rollimgs">
                              <li><img src="./resources/images/tw.png"></img></li>
                              <li><img src="./resources/images/gen.png"></img></li>
                              <li><img src="./resources/images/jjh.png"></img></li>
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




         <!--  <section class="col-6 col-12-narrower feature">
               <div class="image-wrapper">
                  <a href="#" class="image featured"><img
                     src="./resources/images/tw.png" alt="" /></a>
               </div>
               <header>
                  <h2>
                     호프셀렘 <br>Philodendron selloum
                  </h2>
               </header>
               <table>
                  <tr>
                     <td class="title">물주기</td>
                     <td>호프셀럼은 공중 습도는 촉촉한 것을 좋아하는 것에 반해 흙은 습한 것을 실허합니다.
                     과습에 주의하여 물을 주어야 합니다. 화분의 흙이 1/3이 말랐을 때 물을 줍니다.
                     겨울에는 물주기를 늦춰 1/2 이상 말린 후 물을 주어야 합니다.
                     과습일 경우 잎이 노랗게 변하며 떨어질 수 있습니다.
                     물이 충분하지 않으면 잎이 갈변될 수 있습니다.</td>
                  </tr>
                  <tr>
                     <td class="title">빛</td>
                     <td>셀럼은 밝은 그늘에서 키우는 것이 좋습니다.
                     반양지나 반음지에서 5~6시간 정도 빛을 받으면 잘 성장합니다.
                      창문에서 가장 가까운 자리, 하루 한시간 이상 창문을 거친 직사광선이 드는 곳이 이와같은 자리입니다.
                     지갓 광선에서는 3~4시간 정도가 적당합니다.
                      장시간 동안 직사광선에 노출될 경우 잎이 탈 수 있어 주의해야 합니다.
                     </td>
                  </tr>
                  <tr>
                     <td class="title">온도</td>
                     <td>남미, 미국 동부 등에서 자라기 때문에 습도가 높고 온난한 기후에서 잘 성장합니다.
                     호프셀렘이 성장하기 좋은 온도는 16~26℃이며 겨울에는 13℃ 잍으로 떨어지지 않게 해야합니다.
                     한국의 겨울은 습도 가 낮기 때문에 분무를 해주면 좋습니다.
                     겨울에는 실내로 들여 키워야 냉해를 피할 수 있습니다.
                     온도차가 많이 날 경우 잎에 반점이 생길 수 있습니다.</td>
                  </tr>
               </table>
            </section>
            <section class="col-6 col-12-narrower feature">
               <div class="image-wrapper first">
                  <a href="#" class="image featured first"><img
                     src="./resources/images/gen.png" alt="" /></a>
               </div>
               <header>
                  <h2>
                     겐지야자<br>Kentia palm
                  </h2>
               </header>
               <table>
                  <tr>
                     <td class="title">물주기</td>
                     <td>켄차 야자가 빠르게 성장하는 봄~가을에는 보통 주 1회 겉흙이 마르면 화분 밑으로 물이 흘러 나올만큼 듬뿍 주세요.
                     물을 준 뒤 통풍이 잘 되는 곳에서 관리해주세요.
                     여름 장마철과 겨울에는 성장속도가 느려지기 때문에 물 주는 주기를 늘려주세요.
                     물주기는 계절과 키우는 환경에 따라 변하기 때문에 식물의 건강을 생각한다면 식물이 물을 필요로 할 때 주는 것이 좋아요.
                     화분안의 흙이 항상 물에 잠겨 있으면 뿌리가 숨쉬기 힘들어요.
                     화분에 손가락을 넣었을 때 건조하거나, 화분을 들었을 때 무게가 가볍거나,
                     잎에 힘이 없어보이고 얇아지거나 쭈글해졌을 때 물을 주는 것이 좋아요.</td>
                  </tr>
                  <tr>
                     <td class="title">빛</td>
                     <td>햇빛은 식물이 살아가는데 있어서 꼭 필요한 요소에요.
                     켄차 야자는 창문이나 커튼을 거친 부드러운 햇빛을 좋아해요.
                     직접적인 햇빛을 오랜시간 받으면 잎이 탈 수 있으니 주의해주세요.
                     잎이 탔다면 소독한 가위로 말끔하게 잘라내주세요.</td>
                  </tr>
                  <tr>
                     <td class="title">온도</td>
                     <td>18~30℃ - 포근한 온도에서 무난하게 잘 자라요.
                     따뜻한 온도에서 빠르게 성장하지만 온도가 낮아질수록 성장속도가 느려져요.
                     추위에 약해 10℃ 이하에서는 냉해를 입을 수 있으니 추운 겨울철에는 실내의 따뜻한 곳에서 키우는 것이 좋아요.</td>
                  </tr>
               </table>-->


         <!--  <ul class="actions">
                  <li><a href="<c:url value="/"/>" class="button">자세히보기</a></li>
                  <!-- https://blog.naver.com/flowernews24 
               </ul>-->
         <!--  </section>
            <section class="col-6 col-12-narrower feature">
               <div class="image-wrapper">
                  <a href="#" class="image featured"><img
                     src="./resources/images/jjh.png" alt="" /></a>
               </div>
               <header>
                  <h2>
                     몬스테라 보르시지아나 알보<br>Monstera Borsigiana Albo
                  </h2>
               </header>
               <table>
                  <tr>
                     <td class="title">물주기</td>
                     <td>한번 물을 줄때 화분 밑 구멍으로 물이 흐를정도로 흠뻑젖도록 준다.
                     겉표면의 흙이 자신이 키우는 화분의 크기에 따라서 최소한 손가락 한마디~두마디 정도는 마를때까지 다음 물 주기를 기다린다.
                     보통 한여름엔 일주일에 한 두번 정도, 겨울엔 일주일 또는 그 이상 기간으로 상태를 봐가면서 급수한다.
                     과습에 주의.
                  </tr>
                  <tr>
                     <td class="title">빛</td>
                     <td>필터링을 걸친 햇빛을 좋아하므로 직광을(특히 오후) 받지 않도록 조심한다.
                     간접광이 비치는 반그늘의 지역에서 키우는게 적당하나 온전히 실내 형광등에만 의지해야하는 환경은 그냥 음지나 다름없어서 웃자랄 수 있음으로 주의한다.
                  </tr>
                  <tr>
                     <td class="title">온도</td>
                     <td>18~25℃ - 포근한 온도에서 무난하게 잘 자라요.
                     따뜻한 온도에서 빠르게 성장하지만 온도가 낮아질수록 성장속도가 느려져요.
                     5℃ 이하에서는 냉해를 입을 수 있으니 추운 겨울철에는 베란다의 따뜻한 곳에서 키우는 것이 좋아요.</td>
                  </tr>
               </table>
            </section>
         </div>
      </div>
   </div>
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
      </ul>
         <ul class="menu">
            <li>&copy; Untitled. All rights reserved.</li>
            <li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
         </ul>-->
      </div>
   </div>
</body>
</html>