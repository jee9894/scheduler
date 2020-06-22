<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상세 정보</title>
</head>
<body>
<button onclick="location.href='./'">홈</button>
<button onclick="location.href='./lecture'">강의 정보</button>
<button onclick="location.href='./enterprise'">지원 기업</button>


<h1>강의 상세 정보</h1>
<table border="1">
<tr>
	<th>강의 ID</th>
	<td>${lec.lec_id}</td>
</tr>
<tr>
	<th>강의명</th>
	<td>${lec.lec_name}</td>
</tr>
<tr>
	<th>강의 시작일</th>
	<td>${lec.lec_start}</td>
</tr>
<tr>
	<th>강의 종료일</th>
	<td>${lec.lec_end}</td>
</tr>
</table>

<a href="update?lec_id=${lec.lec_id}">수정하기</a> 
<a href="delete?lec_id=${lec.lec_id}">삭제하기</a>
</body>
</html>