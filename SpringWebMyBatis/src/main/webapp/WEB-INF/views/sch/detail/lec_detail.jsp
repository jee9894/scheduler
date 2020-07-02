<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 상세 정보</title>
<style>
	#tmp{
	    margin-left: 50%;
	    color: #81898E;
	}
</style>
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
		integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
		crossorigin="anonymous">
</head>
<body>
	

	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #87AFEB;">
	<div class="container">
		<a class="navbar-brand"><img src="../images/내일로고.jpg" height="40"
				width="70"></a>
		
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item "><a class="nav-link" href="../home">홈
						
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="../lecture">수강
						정보<span class="sr-only">(current)</span></a></li>
				<li class="nav-item"><a class="nav-link" href="../enterprise">지원
						기업</a></li>


			</ul>
			<!-- <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form> -->
		</div>
	</div>
	</nav>
<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #E3EEFC;">
		<div class="container">
		
		<span id="tmp" class="navbar-item">강의 상세 정보</span>
		</div>
		</nav>

	<br>
	<div class="container">

		<table class="table table-hover">
			<colgroup>
				<col width="15%" />
				<col width="85%" />

			</colgroup>
	<%-- 		<tr>
				<th scope="col">강의 ID</th>
				<td>${lec.lec_id}</td>
			</tr> --%>
			<tr>
				<th scope="col">강의명</th>
				<td>${lec.lec_name}</td>
			</tr>
			<tr>
				<th scope="col">강의 시작일</th>
				<td>${lec.lec_start}</td>
			</tr>
			<tr>
				<th scope="col">강의 종료일</th>
				<td>${lec.lec_end}</td>
			</tr>
		</table>
		<br> <a href="update?lec_id=${lec.lec_id}"><button
				type="button" class="btn btn-outline-info btn-sm">수정하기</button></a> <a
			href="delete?lec_id=${lec.lec_id}"><button type="button"
				class="btn btn-outline-info btn-sm">삭제하기</button></a>
		<div class="container">
</body>
</html>