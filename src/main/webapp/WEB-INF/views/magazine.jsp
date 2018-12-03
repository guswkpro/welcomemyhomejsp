<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>





<!DOCTYPE html>
<html>
<head>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>


<title>놀러와마이홈 - 매거진</title>
</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0"
	width="100%" height="100%">

	<!-- Page Content -->
	<div class="container" style="margin-top: 130px;">
		<div class="row" style="margin-top: 30px;">
			<div class="col-lg-4 col-sm-6 portfolio-item">
				<c:forEach items="${MagazineList}" var="magazine">
					<div class="card h-100" style="height: 280px; width: 348px;">
						<div class="card h-100" style="height: 280px; width: 348px;">
							<img class="card-img-top" style="height: 220px; width: 100%;src="
								" onclick="location.href='magazinedetail'">
							<div class="card-body">
								<table style="width: 100%;">
									<tr>
										<td style="width: 70%;">
											<div>
												<h5>${magazine.magazine_title}</h5>
											</div>
										</td>
									</tr>
								</table>
								<div class="hit-like-post">
									<table style="width: 100%;">
										<tr>
											<td style="width: 15%;"><span><iclass ="fa
														fa-heart" style="color: red;"> </i></span>${magazine.magazine_like_count}</td>
											<td style="width: 15%;"><span><iclass="fafa-comment">
													</i></span>${magazine.magazine_comment_count}</td>
											<td style="width: 15%;"><span><iclass="fafa-eye">
													</i></span>${magazine.magazine_hit_count}</td>
											<td align="right"><span><i class="fa fa-calendar"></i>
											</span>${magazine.magazine_post_date}</td>
										</tr>
									</table>
								</div>
							</div>
				</c:forEach>
			</div>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg nav">
		<div class="nav-logo">
			<a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
		</div>
		<div class="collapse navbar-collapse nav-menu">
			<ul class="navbar-nav mr-auto nav-ul">
				<li class="nav-item nav-li-magazine"><a class="nav-a-text3"
					href='http://127.0.0.1:8080/magazines'>매거진</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/community'>커뮤니티</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/preinspection'>사전점검</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/estimatelist?offset=0'>견적요청</a></li>
			</ul>
		</div>
		<div class="nav-div-form">
			<form>
				<button class="btn btn-secondary my-sm-0 nav-button-login"
					onclick="location.href = 'http://127.0.0.1:8080/login'"
					type="button">로그인</button>
				<button class="btn btn-secondary my-sm-0 nav-button-signup"
					onclick="location.href = 'http://127.0.0.1:8080/signup'"
					type="button">회원가입</button>
			</form>
		</div>
	</nav>
</body>
</html>

