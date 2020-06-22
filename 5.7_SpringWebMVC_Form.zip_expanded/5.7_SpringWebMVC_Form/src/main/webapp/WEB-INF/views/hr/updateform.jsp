<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>채용/학업정보 수정</h1>
<form action="./update" method="post">
<table border="1">
<tr>
	<th>채용정보</th>
</tr>
<tr>
	<th>ENT_ID</th>
	<td><input type="number" name="employeeId" value="${emp.employeeId}" readonly></td>
</tr>
<tr>
	<th>ENT_NAME</th>
	<td><input type="text" name="firstName" value="${emp.firstName}"></td>
</tr>
<tr>
	<th>PAPER_END</th>
	<td><input type="text" name="lastName" value="${emp.lastName}" required></td>
</tr>
<tr>
	<th>INTERVIEW1</th>
	<td><input type="text" name="email" value="${emp.email}" required></td>
</tr>
<tr>
	<th>INTERVIEW2</th>
	<td><input type="text" name="phoneNumber" value="${emp.phoneNumber}"></td>
</tr>
<tr>
	<th>INTERVIEW3</th>
	<td><input type="date" name="hireDate" value="${emp.hireDate}" required></td>
</tr>
<tr>
	<th>학업정보</th>
	<%-- <td>
		<select name="jobId">
		<c:forEach var="job" items="${jobList}">
			<c:if test="${emp.jobId == job.jobId}">
				<option value="${job.jobId}" selected>${job.title}</option>
			</c:if>
			<c:if test="${emp.jobId != job.jobId}">
				<option value="${job.jobId}">${job.title}</option>
			</c:if>
		</c:forEach>
		</select>
	</td> --%>
</tr>
<tr>
	<th>LEC_ID</th>
	<td><input type="number" name="salary" value="${emp.salary}"></td>
</tr>
<tr>
	<th>LEC_NAME</th>
	<td><input type="number" name="commissionPct" value="${emp.commissionPct}" step="0.1" min="0" max="0.99"></td>
</tr>
<tr>
	<th>LEC_START</th>
	<td>
		<select name="managerId">
		<c:forEach var="manager" items="${managerList}">
			<c:if test="${emp.managerId == manager.managerId}">
				<option value="${manager.managerId}" selected>${manager.firstName}</option>
			</c:if>
			<c:if test="${emp.managerId != manager.key}">
				<option value="${manager.managerId}">${manager.firstName}</option>
			</c:if>
		</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>LEC_END</th>
	<td>
		<select name="departmentId">
		<c:forEach var="department" items="${deptList}">
			<c:if test="${emp.departmentId == department.managerId}">
				<option value="${department.departmentId}" selected>${department.departmentName}</option>
			</c:if>
			<c:if test="${emp.departmentId != department.departmentId}">
				<option value="${department.departmentId}">${department.departmentName}</option>
			</c:if>
		</c:forEach>
		</select>
	</td>
</tr>
<tr>
	<th>&nbsp;</th>
	<td>
		<input type="submit" value="수정"> 
		<input type="reset" value="취소">
	</td>
</tr>
</table>
</form>
</body>
</html>