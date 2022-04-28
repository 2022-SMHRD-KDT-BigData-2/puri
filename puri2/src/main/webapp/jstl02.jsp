<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="a" value="11"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${a%2==0}">
	짝수입니다.
</c:if>
<c:if test="${a%2!=0}">
	홀수입니다.
</c:if>
<br>
<!-- else는 없음 -->

<c:choose>
	<c:when test="${a%2==0}">
		짝수입니다.
	</c:when>
	<c:when test="${a%2!=0}">
		홀수입니다.
	</c:when>
	<c:otherwise>
		^^^^
	</c:otherwise>
</c:choose>
</body>
</html>