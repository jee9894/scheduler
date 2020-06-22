<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<h1>학업 정보 </h1>
<a href="<c:url value='/hr/insert'/>">채용 정보 입력</a>
<a href="<c:url value='/hr/insert'/>">강의 정보 입력</a>

<table border="1">
<tr>
	<th>학업 정보</th>
	<th>강의ID</th>
	<th>강의명</th>
	<th>시작일</th>
	<th>마감일</th>
	
</tr>
<c:forEach var="lec" items="${lecList}">
<tr>
	<td>${lec.LEC_ID}</td>
	<td>${lec.LEC_NAME}</td>
	<td>${lec.LEC_START}</td>
	<td>${lec.LEC_END}</td>
	
</tr>
</c:forEach>
</table>
</body>
</html>