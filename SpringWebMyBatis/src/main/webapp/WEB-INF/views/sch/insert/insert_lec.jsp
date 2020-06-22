<%@ page contentType="text/html; charset=UTF-8"%>

<!-- jstl을 선언해줘야 밑에서 <c:url /> 활용 가능 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>

<!-- ServlectConfig 참고 -->
<script src='/myapp/js/insertform.js'></script>
<%-- <script src="<c:url value = '/js/insertform.js'/>"></script> --%>

</head>
<body>
<h1>강의 정보 입력</h1>
<table border="1">
	<tr>
		<th>강의 ID</th>
		<td><input type="number" name="lec_id" value= ${lec.lec_id} required></td>
	</tr>
	<tr>
		<th>강의명</th>
		<td><input type="text" name="lec_name" value= ${lec.lec_name} required></td>
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
			<input id = "submit" type="submit" value="저장"> 
			<input type="reset" value="취소">
		</td>
	</tr>
</table>


</body>
</html>