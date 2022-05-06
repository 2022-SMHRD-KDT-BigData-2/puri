<%@page import="kr.puri.entity.Member"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
   language="java"%>
<c:set var="path" value="${pageContext.request.contextPath}" />
<script src="${path}/resources/js/test.js"></script>
<link href="${path}/resources/css/font-awesome.min.css" rel="stylesheet">
<link href="${path}/resources/css/main3.css" rel="stylesheet" />
<link href="${path}/resources/css/Suggestion.css" rel="stylesheet" />
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</head>
<body>
    <%
      HttpSession session = request.getSession();
   Member vo = (Member) session.getAttribute("vo");
   %>
 
<div class="container">
  <h2>MVC Framework 04</h2>
  <div class="panel panel-default">
    <div class="panel-heading">BOARD</div>
    <div class="panel-body">
            <form action="${path}/BoardInsert2.do" method="post" enctype="multipart/form-data">
               <div class="form-group">
                  <label class="control-label col-sm-2" for="title">제목:</label>
                  <div class="col-sm-10">
                     <input type="text" class="form-control" name="write_title"
                        placeholder="Enter title">
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="content">내용:</label>
                  <div class="col-sm-10">
                     <textarea rows="10" name="write_content" class="form-control"></textarea>
                  </div>
               </div>
               <div class="form-group">
                  <label class="control-label col-sm-2" for="writer">작성자:<%=vo.getId()%></label>
                  <div class="col-sm-10">
                     
                  </div>
               </div>
               <div class="form-group">
                  <div class="col-sm-offset-2 col-sm-10">
                  
                     <input type="file" name="file"><br> 
                  
                     <button type="submit" class="btn btn-primary">등록</button>
                     <button type="reset" class="btn btn-warning">취소</button>
                  </div>
               </div>
            </form>
         </div>
    <div class="panel-footer">빅데이터 분석 서비스 개발자과정()</div>
  </div>
</div>

</body>
</html>