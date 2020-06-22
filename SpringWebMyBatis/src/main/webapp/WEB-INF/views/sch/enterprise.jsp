<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>기업 정보</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button onclick="location.href='./lecture'">강의 정보</button>
<button>지원 기업</button>
<a href="<c:url value='/enterprise/insert'/>">기업 추가 입력</a>
<p>기업 정보</p>

<form>
	<table border="1">
	
	<tr>
		<th>id</th>
		<th>기업명</th>
		<th>서류마감일</th>
		<th>1차인터뷰</th>
		<th>2차인터뷰</th>
		<th>3차인터뷰</th>
	
	</tr>
	<c:forEach var="ent" items="${ent_list}">
	<tr>
		<td><a href="<c:url value='/enterprise/${ent.ent_id}'/>">${ent.ent_id}</a></td>
		<td>${ent.ent_name}</td>
		<td> ${ent.paper_end}</td>
		<td> ${ent.interview1}</td>
		<td> ${ent.interview2}</td>
		<td> ${ent.interview3}</td>
	
	</tr>	
	</c:forEach>
	</table>
</form>
</body>
</html>