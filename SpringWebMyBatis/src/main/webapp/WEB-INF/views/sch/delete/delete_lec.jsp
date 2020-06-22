<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CoderBy</title>
<script src="<c:url value = '/js/deleteform.js'/>"></script>
</head>
<body>
<form id="deleteF"action="./delete" method="post">
강의명: <input type="text" name="name" required>
<input type="hidden" name="lec_id" value="${lec.lec_id}">
<input id ="sub" type="button" value="삭제">
</form>
</body>
</html>