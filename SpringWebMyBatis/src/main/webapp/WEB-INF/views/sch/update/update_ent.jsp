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
<h1>기업 정보 수정</h1>
<form action="<c:url value='/enterprise/update'/>" method="post">
	<table border="1">
	<tr>
		<th>기업 ID</th>
		<td><input type="text" name="ent_id" value= ${ent.ent_id} ></td>
	</tr>
	<tr>
		<th>기업명</th>
		<td><input type="text" name="ent_name" value= ${ent.ent_name}></td>
	</tr>
	<tr>
		<th>서류마감일</th>
		<td><input type="text" name="paper_end" value= ${ent.paper_end}></td>
	</tr>
	<tr>
		<th>1차 면접일</th>
		<td><input type="text" name="interview1" value= ${ent.interview1}></td>
	</tr>
	<tr>
		<th>2차 면접일</th>
		<td><input type="text" name="interview2" value= ${ent.interview2}></td>
	</tr>
	<tr>
		<th>3차 면접일</th>
		<td><input type="text" name="interview3" value= ${ent.interview3}></td>
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