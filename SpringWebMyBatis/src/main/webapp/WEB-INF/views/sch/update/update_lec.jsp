<%@ page contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button onclick="location.href='./lecture'">강의 정보</button>
<button onclick="location.href='./enterprise'">지원 기업</button>
<h1>강의 정보 수정</h1>
<form action="<c:url value='/lecture/update'/>" method="post">
	
	<table border="1">
	<tr>
		<th>강의 ID</th>
		<td><input type="number" name="lec_id" value= ${lec.lec_id} required></td>
	</tr>
	<tr>
		<th>강의명</th>
		<td><input type="text" name="lec_name" value= ${lec.lec_name}></td>
	</tr>
	<tr>
		<th>강의 시작일</th>
		<td><input type="date" name="lec_start" value= ${lec.lec_start}></td>
	</tr>
	<tr>
		<th>강의 종료일</th>
		<td><input type="date" name="lec_end" value= ${lec.lec_end}></td>
	</tr>
	<tr>
		<td>
			<input type="submit" value="수정"> 
			<input type="reset" value="취소">
		</td>
	</tr>
	</table>
</form>
</body>
</html>