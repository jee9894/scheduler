<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
</head>
<body>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
	  		<a class="navbar-brand" href="./">취준생을 위한 스케줄러</a>
			  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
	
			  <div class="collapse navbar-collapse" id="navbarSupportedContent">
			    <ul class="navbar-nav mr-auto">
			      <li class="nav-item active">
			        <a class="nav-link" href="../">홈 <span class="sr-only">(current)</span></a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="../lecture">수강 정보</a>
			      </li>
			      <li class="nav-item">
			        <a class="nav-link" href="../enterprise">지원 기업</a>
			      </li>
			
			     
			    </ul>
			    <!-- <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form> -->
		  	</div>
		  	 
		</nav>

<form action="<c:url value='/lecture/delete'/>" method="post">
<h1>강의 상세 정보</h1>
<table border="1">
	<tr>
		<th>강의 ID</th>
		<td>${lec.lec_id}</td>
	</tr>
	<tr>
		<th>강의명</th>
		<td>${lec.lec_name}</td>
	</tr>
	<tr>
		<th>강의 시작일</th>
		<td>${lec.lec_start}</td>
	</tr>
	<tr>
		<th>강의 종료일</th>
		<td>${lec.lec_end}</td>
	</tr>
	<tr>
		<td>
			<input type="hidden" name="lec_id" value="${lec.lec_id}">
			<input type="submit" value="삭제">
		</td>
	</tr>

	</table>
</form>
</body>
</html>