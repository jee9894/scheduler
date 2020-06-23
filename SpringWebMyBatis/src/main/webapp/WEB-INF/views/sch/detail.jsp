<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 정보</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: #87AFEB;">

	  		<a class="navbar-brand" href="./">취준생을 위한 스케줄러</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
	
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="./">홈 <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./lecture">수강 정보</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="./enterprise">지원 기업</a>
			      </li>
			
			     
			    </ul>
			    <!-- <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form> -->
		  	</div>
		  	 
		</nav>

<form>
<h1>기업 상세 정보</h1>
<table class="table table-hover" >
	<tr>
		<th scope="col">기업 ID</th scope="col">
		<td>${ent.ent_id}</td>
	</tr>
	<tr>
		<th scope="col">기업명</th scope="col">
		<td>${ent.ent_name}</td>
	</tr>
	<tr>
		<th scope="col">서류마감일</th scope="col">
		<td>${ent.paper_end}</td>
	</tr>
	<tr>
		<th scope="col">1차 면접일</th scope="col">
		<td>${ent.interview1}</td>
	</tr>
	<tr>
		<th scope="col">2차 면접일</th scope="col">
		<td>${ent.interview2}</td>
	</tr>
	<tr>
		<th scope="col">3차 면접일</th scope="col">
		<td>${ent.interview3}</td>
	</tr>
	
	</table>
	
	<a href="./enterprise/update?ent_id=${ent.ent_id}">수정하기</a> 
	<a href="./enterprise/delete?ent_id=${ent.ent_id}">삭제하기</a>

</form>
</body>
</html>