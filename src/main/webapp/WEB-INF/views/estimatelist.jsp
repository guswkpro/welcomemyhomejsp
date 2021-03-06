<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimateList.css" />

<title>놀러와 마이홈</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<div class="container estimateList-div">
		<table>
			<thead>
				<tr>
					<th class="text_align_center">번호</th>
					<th class="text_align_left">제목</th>
					<th class="text_align_center">작성자</th>
					<th class="text_align_left">날짜</th>
					<th class="text_align_center">답변수</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${EstimateList}" var="estimate">
					<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
						<td class="text_align_center">${estimate.estimate_idx}</td>
						<td class="text_align_left">${estimate.estimate_title}</td>
						<td class="text_align_center">${estimate.user_idx}</td>
						<td class="text_align_left">${estimate.estimate_date}</td>
						<td class="text_align_center">${estimate.estimate_answer_count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		<hr />
		<input type="button" value="작성" class="estimateList-float-right" onclick="location.href = 'http://127.0.0.1:8080/estimate'" />

		<div class="pagenation">
			<input type="button" value="사용자 글" class="estimateList-float-left" /> <input type="button" value="내 글보기" class="estimateList-float-left" />
			<button>Previous</button>
			1/4
			<button>Next</button>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg nav">
		<div class="nav-logo">
			<a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
		</div>
		<div class="collapse navbar-collapse nav-menu">
			<ul class="navbar-nav mr-auto nav-ul">
				<li class="nav-item nav-li-magazine"><a class="nav-a-text3" href='http://127.0.0.1:8080/magazine?offset=0'>매거진</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/community?offset=0'>커뮤니티</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/preinspection'>사전점검</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/estimatelist?offset=0'>견적요청</a></li>
			</ul>
		</div>
		<div class="nav-div-form">
			<form>
				<button class="btn btn-secondary my-sm-0 nav-button-login" onclick="location.href = 'http://127.0.0.1:8080/login'" type="button">로그인</button>
				<button class="btn btn-secondary my-sm-0 nav-button-signup" onclick="location.href = 'http://127.0.0.1:8080/signup'" type="button">회원가입</button>
			</form>
		</div>
	</nav>
</body>
</html>