<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	String[] str = {"사과", "바나나", "오렌지", "포도", "귤"};
	request.setAttribute("str", str);
	// setAttribute만 있으면 getAttribute 할 필요가 없음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
		<tr>
			<td>과일 목록</td>
		</tr>
		<c:forEach var="f" items="${str}">
			<tr>
				<td>${f}</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>