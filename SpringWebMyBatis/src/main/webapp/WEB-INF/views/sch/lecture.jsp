<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 정보</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
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
<a href="<c:url value='/lecture/insert'/>">강의 추가 입력</a>
<p>강의 정보</p>
<form>
<table border="1">
<tr>
	<th>강의ID</th>
	<th>강의명</th>
	<th>시작일</th>
	<th>마감일</th>
	
</tr>
<c:forEach var="lec" items="${lec_list}">
<tr>
	<td><a href="<c:url value='/lecture/${lec.lec_id}'/>"> ${lec.lec_id}</a></td>
	<td> ${lec.lec_name}</td>
	<td> ${lec.lec_start}</td>
	<td> ${lec.lec_end}</td>
	
</tr>

</c:forEach>

</table>
<border="1">
<p>과제 정보</p>
<table border="1">
	<tr>
		<th>강의ID</th>
		<th>과제명</th>
		<th>마감일</th>
	</tr>
<c:forEach var="assign" items="${assign_list}">
	<tr>
		<td> ${assign.lec_id}</td>
		<td> ${assign.asign_name}</td>
		<td> ${assign.asign_end}</td>
	</tr>
	</c:forEach>
</table>

</form>
</body>
</html>