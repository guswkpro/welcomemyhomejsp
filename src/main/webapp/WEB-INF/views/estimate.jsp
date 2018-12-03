<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>estimate 페이지</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimate.css" />

</head>
<body>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>제목</th>
						<td><input type="text" placeholder="제목을 입력하세요. "
							class="form-control" /></td>
					</tr>
					<tr>
						<th>주소</th>
						<td><input type="text" placeholder="주소를 입력하세요. "
							class="form-control" /></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input id='fileselector' type="file"
							placeholder="파일을 선택하세요." accept="image/*" multiple /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="10" rows="10" placeholder="내용을 입력하세요."
								class="form-control"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="취소" onclick="location.href = 'http://127.0.0.1:8080/estimatelist'"
							class="estimate-float-right" /> <input type="button" value="등록" onclick="location.href = 'http://127.0.0.1:8080/estimatelist'"
							class="estimate-float-right" /></td>
					</tr>
				</form>
			</tbody>
		</table>
	</div>
	<nav class="navbar navbar-expand-lg nav">
		<div class="nav-logo">
			<a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
		</div>
		<div class="collapse navbar-collapse nav-menu">
			<ul class="navbar-nav mr-auto nav-ul">
				<li class="nav-item nav-li-magazine"><a class="nav-a-text3"
					href='http://127.0.0.1:8080/magazine'>매거진</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/talk'>커뮤니티</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/precheck'>사전전검</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/estimatelist'>견적요청</a></li>
			</ul>
		</div>
		<div class="div_login">
			<form>
				<button class="btn btn-secondary my-sm-0 nav-button-mypage"
					onclick="location.href = 'http://127.0.0.1:8080/mypage'"
					type="button">마이페이지</button>
				<button class="btn btn-secondary my-sm-0 nav-button-logout"
					onclick="location.href = 'http://127.0.0.1:8080/'" type="button">로그아웃</button>
			</form>
		</div>
	</nav>
</body>
</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${EstimateList}" var="estimate">
				<tr>
					<td>${estimate.estimate_title}</td>
					<td>${estimate.estimate_content}</td>
					<td>${estimate.estimate_date}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>x