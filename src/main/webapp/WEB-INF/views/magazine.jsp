<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/magazine.css" />

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l" crossorigin="anonymous"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c" crossorigin="anonymous"></script>

<title>놀러와마이홈 - 매거진</title>
</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<!-- Page Content -->
	<div class="container" style="margin-top: 30px;">
		<div class="row" style="margin-top: 30px;">
			<c:forEach items="${MagazineList}" var="magazine">
				<div class="col-lg-4 col-sm-6 portfolio-item">
					<div class="card" style="height: 320px; width: 348px; float: left;">
						<img class="card-img-top" src="${magazine.magazine_thumbnail_path}" style="height: 220px; width: 100%;" onclick="location.href='http://127.0.0.1:8080/magazinedetail?magazine_idx=${magazine.magazine_idx}'">
						<div class="card-body list-body">
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
										<td style="width: 15%;"><span><i class="fa fa-heart" style="color: red;"></i></span>${magazine.magazine_like_count}</td>
										<td style="width: 15%;"><span><i class="fa fa-comment"></i></span> ${magazine.magazine_comment_count}</td>
										<td style="width: 15%;"><span><i class="fa fa-eye"></i> </span> ${magazine.magazine_hit_count}</td>
										<td align="right"><span><i class="fa fa-calendar"></i> </span> ${magazine.magazine_post_date}</td>
									</tr>
								</table>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
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
