<%@page import="kr.puri.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puri-login</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
   integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
   crossorigin="anonymous">
   <link href="${cpath}/resources/css/login.css" rel="stylesheet" />
<style type="text/css">

</style>

</head>
<body>
   <div class="container col-md-12">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
            
            <h4 class="mb-3" id="login">로그인</h4>
            <form class="validation-form" novalidate action="${cpath}/login.do" method="post">
               <div class="row">
                  <div class="col-md-12 mb-3">
                     <label for="name">아이디</label> <input type="text"
                        class="form-control" id="id" name="id" placeholder="" value="" required>
                     <div class="invalid-feedback">아이디을 입력해주세요.</div>
                  </div>
               </div>

               <div class="row">
                  <div class="col-md-12 mb-3">
                     <label for="name">비밀번호</label>
                     <input type="password" class="form-control" id="pw" name="pw" placeholder=""onchange="check_pw()" required>
                     <div class="invalid-feedback">비밀번호를 입력해주세요.</div>
                  </div>
               </div>
               <div class="where">
                  <a href="register.php">회원가입</a>&nbsp;| <a href="">아이디/비밀번호 찾기</a>
               </div>
               <div class="mb-4"></div>
               <button id="btn" class="btn btn-primary btn-lg btn-block"
                  type="submit">로그인</button>
            </form>
         </div>
      </div>
   </div>
   <!--입력칸 빈칸-->
   <script>
    window.addEventListener('load', () => {
      const forms = document.getElementsByClassName('validation-form');

      Array.prototype.filter.call(forms, (form) => {
        form.addEventListener('submit', function (event) {
          if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
          }

          form.classList.add('was-validated');
        }, false);
      });
    }, false);
  </script>
   <!--아이디비밀번호 일치-->
   <script>
//      document.querySelector("#btn").addEventListener("click", () => {
//         
//    if(id == document.querySelector("#id").value) {
//        if(password == document.querySelector("#pw").value) {
//            alert("환영합니다!");
//        }
//        else {
//            alert("비밀번호가 맞지 않습니다.");
//        }
//    }
//    
//});
//
 </script>
</body>
</html>