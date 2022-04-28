<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="kr.board.entity.Board"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
	Board vo = new Board();
	vo.setIdx(1);
	vo.setTitle("게시판 만들기");
	vo.setContent("게시판 만들기");
	vo.setWriter("관리자");
	vo.setIndate("2022-03-21");
	vo.setCount(0);
	//request.setAttribute("vo", vo);
	List<Board> list = new ArrayList<Board>();
	list.add(vo);
	list.add(vo);
	list.add(vo);
	request.setAttribute("list", list);
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
			<td>번호</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>	
		<c:forEach var="vo" items="${list}">	
		<tr>
			<td>${vo.idx}</td>
			<td>${vo.title}</td>
			<td>${vo.writer}</td>
			<td>${vo.indate}</td>
			<td>${vo.count}</td>
		</tr>
		</c:forEach>
	</table>
</body>
</html>