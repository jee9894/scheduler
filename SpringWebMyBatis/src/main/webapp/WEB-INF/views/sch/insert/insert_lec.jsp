<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>

</head>
<body>
<h1>강의 정보 입력</h1>
<form action="<c:url value='/lecture/insert'/>" method="post">
<table border="1">
	<tr>
		<th>강의 ID</th>
		<td><input type="number" name="lec_id" required></td>
	</tr>
	<tr>
		<th>강의명</th>
		<td><input type="text" name="lec_name"  required></td>
	</tr>
	<tr>
		<th>강의 시작일</th>
		<td><input type="date" name="lec_start" ></td>
	</tr>
	<tr>
		<th>강의 종료일</th>
		<td><input type="date" name="lec_end" ></td>
	</tr>
	<tr>
		<td>
			<input id = "submit" type="submit" value="저장"> 
			<input type="reset" value="취소">
		</td>
	</tr>
</table>

</form>
</body>
</html>