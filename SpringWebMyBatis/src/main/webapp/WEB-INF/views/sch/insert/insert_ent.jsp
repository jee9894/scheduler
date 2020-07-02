<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>기업 정보 입력</title>
<style>
#tmp {
	margin-left: 50%;
	color: #81898E;
}
</style>
<link rel="stylesheet"
		href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
		integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
		crossorigin="anonymous">
</head>
<body>
	

	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #87AFEB;">
		<div class="container">

			<a class="navbar-brand"><img src="../images/내일로고.jpg" height="40"
				width="70"></a>
			<!-- <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			    <span class="navbar-toggler-icon"></span>
			  </button>
	 -->
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item "><a class="nav-link" href="../home">홈 <span
							class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item "><a class="nav-link" href="../lecture">수강
							정보</a></li>
					<li class="nav-item active"><a class="nav-link"
						href="../enterprise">지원 기업</a></li>


				</ul>
				<!-- <form class="form-inline my-2 my-lg-0">
			      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
			      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
			    </form> -->
			</div>
		</div>
	</nav>
	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: #E3EEFC;">
		<div class="container">

			<span id="tmp" class="navbar-item">기업 정보 입력</span>
		</div>
	</nav>
	<br>

	<form action="<c:url value='/enterprise/insert'/>" method="post">
		<div class="container">


			<table class="table table-hover">
				<colgroup>
					<col width="15%" />
					<col width="85%" />
				</colgroup>
				<!-- <tr>
					<th scope="col">기업 ID</th>
					<td><input type="number" id="id" name="ent_id" class="notnull"
						placeholder="필수입력" required></td>
				</tr> -->
				<tr>
					<th scope="col">기업명</th>
					<td><input type="text" id="name" name="ent_name"
						class="notnull" placeholder="필수입력" required></td>
				</tr>
				<tr>
					<th scope="col">서류마감일</th>
					<td><input type="date" name="paper_end" value="2999-12-31"></td>
				</tr>
				<tr>
					<th scope="col">1차 면접일</th>
					<td><input type="date" name="interview1" value="2999-12-31"></td>
				</tr>
				<tr>
					<th scope="col">2차 면접일</th>
					<td><input type="date" name="interview2" value="2999-12-31"></td>
				</tr>
				<tr>
					<th scope="col">3차 면접일</th>
					<td><input type="date" name="interview3" value="2999-12-31"></td>
				</tr>

			</table>
			<br> <input class="btn btn-outline-info btn-sm" id="submit"
				type="submit" value="저장">
	</form>
	<a class="btn btn-outline-info btn-sm" href="../enterprise">취소</a>


	</div>


</body>
</html>