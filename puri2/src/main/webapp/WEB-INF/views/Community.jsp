<%@page import="kr.puri.entity.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="cpath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html lang="en">
<head>
<title>Puri-List</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
	<nav id="navbar-example2" class="navbar navbar-light bg-light px-3">
		<a class="navbar-brand" href="#">Navbar</a>
		<ul class="nav nav-pills">
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading1">First</a></li>
			<li class="nav-item"><a class="nav-link"
				href="#scrollspyHeading2">Second</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" data-bs-toggle="dropdown" href="#"
				role="button" aria-expanded="false">Dropdown</a>
				<ul class="dropdown-menu">
					<li><a class="dropdown-item" href="#scrollspyHeading3">Third</a></li>
					<li><a class="dropdown-item" href="#scrollspyHeading4">Fourth</a></li>
					<li><hr class="dropdown-divider"></li>
					<li><a class="dropdown-item" href="#scrollspyHeading5">Fifth</a></li>
				</ul></li>
		</ul>
	</nav>
	<!--게시판-->
	<div class="page-wrapper">
		<div class="container-fluid">
			<div class="col-lg-12">
				<div class="col-lg-12">
					<h1 class="page-header">board</h1>
				</div>
				<div class="row">
					<div class="col-lg-12">
						<button type="button"
							class="btn btn-outline btn-primary pull-right">
							<i class="fa fa-edit fa-fw"></i>글작성
						</button>
					</div>
				</div>
				<div class="panel panel-default">
					<div>
						<div class="panel-body ">
							<table class="table table-hover table-bordered">
								<thead>
									<tr>
										<th>No.1</th>
										<th>제목</th>
										<th>작성자</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>1</td>
										<td>제목</td>
										<td>작성자</td>
									</tr>
								</tbody>
							</table>
							<div aria-label="Page navigation example" class="center-bar">
								<ul class="pagination justify-content-center">
									<li class="page-item disabled"><a class="page-link"
										href="#" tabindex="-1" aria-disabled="true">Previous</a></li>
									<li class="page-item"><a class="page-link" href="#">1</a></li>
									<li class="page-item"><a class="page-link" href="#">2</a></li>
									<li class="page-item"><a class="page-link" href="#">3</a></li>
									<li class="page-item"><a class="page-link" href="#">Next</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
</body>
</html>