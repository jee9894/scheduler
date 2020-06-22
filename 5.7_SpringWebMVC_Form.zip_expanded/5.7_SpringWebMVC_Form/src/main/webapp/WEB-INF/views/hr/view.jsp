<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>채용/강의정보 상세 조회</h1>
<table border="1">
<tr>
	<th>채용정보</th>
	<td></td>
</tr>
<tr>
	<th>ENT_ID</th>
	<td>${emp.employeeId}</td>
</tr>
<tr>
	<th>ENT_NAME</th>
	<td>${emp.firstName}</td>
</tr>
<tr>
	<th>PAPER_END</th>
	<td>${emp.lastName}</td>
</tr>
<tr>
	<th>INTERVIEW1</th>
	<td>${emp.email}</td>
</tr>
<tr>
	<th>INTERVIEW2</th>
	<td>${emp.phoneNumber}</td>
</tr>
<tr>
	<th>INTERVIEW3</th>
	<td>${emp.hireDate}</td>
</tr>
<tr>
	<th>학업정보</th>
	<td></td>
</tr>
<tr>
	<th>LEC_ID</th>
	<td>${emp.jobId}</td>
</tr>
<tr>
	<th>LEC_NAME</th>
	<td>${emp.salary}</td>
</tr>
<tr>
	<th>LEC_START</th>
	<td>${emp.commissionPct}</td>
</tr>
<tr>
	<th>LEC_END</th>
	<td>${emp.managerId}</td>
</tr>
<%-- <tr>
	<th>DEPARTMENT_ID</th>
	<td>${emp.departmentId}</td>
</tr> --%> 
</table>
<a href="update?empid=${emp.employeeId}">수정하기</a> 
<a href="delete?empid=${emp.employeeId}">삭제하기</a>
</body>
</html>