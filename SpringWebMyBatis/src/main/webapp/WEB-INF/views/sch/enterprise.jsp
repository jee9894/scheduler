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
<p>---지원 기업 정보---</p>
<c:forEach var="ent" items="${ent_list}">
<ul>
	<li>id: ${ent.ent_id}</li>
	<li>기업명: ${ent.ent_name}</li>
	<li>서류마감일: ${ent.paper_end}</li>
	<li>1차인터뷰: ${ent.interview1}</li>
	<li>2차인터뷰: ${ent.interview2}</li>
	<li>3차인터뷰: ${ent.interview3}</li>

</ul>
	
</c:forEach>

</body>
</html>