<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>

</head>
<body>
<h1>기업 정보 입력</h1>
<form action="<c:url value='/enterprise/insert'/>" method="post">
<table border="1">
	<tr>
		<th>기업 ID</th>
		<td><input type="number" name="ent_id"  required></td>
	</tr>
	<tr>
		<th>기업명</th>
		<td><input type="text" name="ent_name"  required></td>
	</tr>
	<tr>
		<th>서류마감일</th>
		<td><input type="date" name="paper_end"></td>
	</tr>
	<tr>
		<th>1차 면접일</th>
		<td><input type="date" name="interview1" ></td>
	</tr>
	<tr>
		<th>2차 면접일</th>
		<td><input type="date" name="interview2"></td>
	</tr>
	<tr>
		<th>3차 면접일</th>
		<td><input type="date" name="interview3"></td>
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