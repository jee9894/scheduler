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

<!-- 삭제 추가 -->
<form action="./lecture/update/{lec_id}">
	<h1>강의 정보 수정</h1>
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
		<th>&nbsp;</th>
		<td>
			<input type="submit" value="수정"> 
			<input type="reset" value="취소">
		</td>
	</tr>
	</table>
</form>
<form action="./enterprise/update/{ent_id}">
	<h1>기업 정보 수정</h1>
	<table border="1">
	<tr>
		<th>기업 ID</th>
		<td><input type="text" name="ent_id" value= ${ent.ent_id} required></td>
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