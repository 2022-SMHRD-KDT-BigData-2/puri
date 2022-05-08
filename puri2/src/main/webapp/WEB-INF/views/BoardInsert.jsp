<%@page import="kr.puri.entity.Member"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puri</title>
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
<%
    HttpSession session = request.getSession();
    Member vo = (Member) session.getAttribute("vo");
   %>
   
   <div class="container col-md-12">
      <div class="input-form-backgroud row">
         <div class="input-form col-md-12 mx-auto">
           <form action="${cpath}/BoardInsert2.do" method="post" enctype="multipart/form-data"> 
            <h4 class="mb-3" id="login" >글쓰기</h4>
            <hr class="mb-4">
            
               <div class="row">
                  <div class="col-md-12 mb-3">
                     <label  for="name">제목:</label> <input type="text"
                        class="form-control" id="id" name="write_title" placeholder="" value="" required>
                  </div>
               </div>

               <div class="row">
                  <div class="col-md-12 mb-3">
                     <label for="name">내용:</label>
                     <textarea style="resize: none;" rows="10" name="write_content" class="form-control" id="pw" name="write_content" required></textarea>
                  </div>
               </div>
            
               <div>
               
               <input type="file" name="file"><br>
               
               </div>
      

               <div class="mb-4"></div>
               <button id="btn" class="btn btn-primary btn-lg btn-block"
               style="border-color: #69b27a; background-color: #69b27a;"
                  type="submit">등록</button>
            </form>
         </div>
      </div>
   </div>

</body>
</html>