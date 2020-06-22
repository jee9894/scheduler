<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 정보</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button>강의 정보</button>
<button onclick="location.href='./enterprise'" >지원 기업</button>
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