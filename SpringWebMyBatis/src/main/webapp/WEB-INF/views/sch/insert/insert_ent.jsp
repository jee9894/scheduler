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
<h1>기업 정보 입력</h1>
<table border="1">

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