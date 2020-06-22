<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상세 정보</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button onclick="location.href='./lecture'">강의 정보</button>
<button onclick="location.href='./enterprise'">지원 기업</button>

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