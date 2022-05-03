<%@page import="kr.puri.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
	
</script>
</head>
<body>
<form action = "goSuggestion">
	<div class="container">
		<h2>Spring MVC 01</h2>
		<div class="panel panel-default">
			<div class="panel-heading">BOARD</div>
			<div class="panel-body">
			
				<table class="table table-bordered table-hover">
					<tr>
						<td>번호</td>
						<td>번호</td>
						<td>번호</td>
						<td>번호</td>
						<td>번호</td>
						
						
					</tr>
					<c:forEach var="vo" items="${list}">
						
						<tr>
							<td>${vo.id}</td>
							<td>${vo.pw}</td>
							<td>${vo.nick}</td>
							<td>${vo.gender}</td>
							<td>${vo.age}</td>
						
						</tr>
					</c:forEach>
					
				</table>
			</div>
			<div class="panel-footer">빅데이터 분석서비스 개발자과정(신다홍)</div>
		</div>
	</div>
</form>
</body>
</html>