<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<!doctype html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width">
  <link rel="stylesheet" href="./css/home.css">  
  <link href="https://fonts.googleapis.com/css?family=Roboto&display=swap" rel="stylesheet">
  <title>취준스케줄러</title>
  <script type = "text/javascript" src="<c:url value ='./js/home.js'/>"></script>
  
	
<!-- /* 	$(document).ready(function() { -->
<!-- 		$("#getEmp").click(function() { -->
<!-- 			$("#result").html(""); -->
<!-- 			$.ajax({ -->
<!-- 				type: 'GET', -->
<!-- 				url: './hr/json/'+$("#empid").val(), -->
<!-- 				success: function(data) { -->
<!-- 					var serverData = JSON.stringify(data); -->
<!-- 					$("#result").html(serverData); -->
<!-- 				}, -->
<!-- 				error : function(error) { -->
<!-- 					console.log(error); -->
<!-- 				} -->
<!-- 			}) -->
<!-- 		}) -->
<!-- 		$("#getEmp2").click(function() { -->
<!-- 			var formData = $('#form').serializeArray(); -->
<!-- 			console.log(JSON.stringify(formData)); -->
<!-- 			$("#result").html(""); -->
<!-- 			$.ajax({ -->
<!-- 				type: 'POST', -->
<!-- 				url: './hr/ajax', -->
<!-- 				headers : { -->
<!-- 					'Accept' : 'application/json', -->
<!-- 					'Content-Type' : 'application/json' -->
<!-- 				}, -->
<!-- 				data: JSON.stringify(formData), -->
<!-- 				success: function(data) { -->
<!-- 					var serverData = JSON.stringify(data); -->
<!-- 					$("#result").html(serverData); -->
<!-- 				}, -->
<!-- 				error : function(error) { -->
<!-- 					console.log(error); -->
<!-- 				} -->
<!-- 			}) -->
<!-- 		}) -->
<!-- 	}); */ -->
	
</head>
<body>
<h1>지원기업 수: ${key}</h1>
  <div class="main">
    <div class="content-wrap">
      <div class="content-left">
        <div class="main-wrap">
          <div id="main-day" class="main-day"></div>
          <div id="main-date" class="main-date"></div>
        </div>
        <div class="todo-wrap">
          <div class="todo-title">To do List</div>
          <div class="input-wrap">
            <input type="text" placeholder="please write here!!" id="input-box" class="input-box">
            <button type="button" id="input-data" class="input-data">INPUT</button>
            <div id="input-list" class="input-list"></div>
          </div>
        </div>
      </div>
      <div class="content-right">
        <table id="calendar" align="center">
          <thead>
            <tr class="btn-wrap clearfix">
              <td>
                <label id="prev">
                    &#60;
                </label>
              </td>
              <td align="center" id="current-year-month" colspan="5"></td>
              <td>
                <label id="next"> 
                    &#62;
                </label>
              </td>
            </tr>
            <tr>
                <td class = "sun" align="center">Sun</td>
                <td align="center">Mon</td>
                <td align="center">Tue</td>
                <td align="center">Wed</td>
                <td align="center">Thu</td>
                <td align="center">Fri</td>
                <td class= "sat" align="center">Sat</td>
              </tr>
          </thead>
          <tbody id="calendar-body" class="calendar-body"></tbody>
        </table>
      </div>
    </div>
  </div>
</body>
</html>