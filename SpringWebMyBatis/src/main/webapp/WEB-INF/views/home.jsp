<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <title>취준스케줄러</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto+Condensed" rel="stylesheet">
    <link rel="stylesheet" href="css/demo.css"/>
    <link rel="stylesheet" href="css/theme1.css"/>
    <link rel="stylesheet" href="css/theme2.css">
<link rel="stylesheet" href="css/theme3.css">

</head>
<body>
<h1>지원기업 수: ${key}</h1>
<button>홈</button>
<button onclick =" location.href='./lecture'">강의 정보</button>
<button onclick="location.href='./enterprise'" >지원 기업</button>

    <div id="caleandar">

    </div>

    <script type="text/javascript" src="js/caleandar.js"></script>
    <script type="text/javascript" src="js/demo.js"></script>
  </body>
</html>