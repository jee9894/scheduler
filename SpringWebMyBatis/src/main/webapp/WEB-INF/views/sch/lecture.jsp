<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>강의 정보</title>
</head>
<body>
<c:forEach var="lec" items="${lec_list}">
<ul>
	<li>-----강의 정보------</li>
	<li>id: ${lec.lec_id}</li>
	<li>강의명: ${lec.lec_name}</li>
	<li>강의 시작일: ${lec.lec_start}</li>
	<li>강의 종료일: ${lec.lec_end}</li>
	 <% int cnt = 1;%>
	<c:forEach var="assign" items="${assign_list}">
		<c:if test = "${assign.lec_id == lec.lec_id}">
			<li>------과제     <%= cnt%>-------</li>
			<li>과제명: ${assign.asign_name}</li>
			<li>과제 마감일: ${assign.asign_end}</li>
			<%cnt++; %>
		</c:if>
	</c:forEach>
</ul>
</c:forEach>


</body>
</html>