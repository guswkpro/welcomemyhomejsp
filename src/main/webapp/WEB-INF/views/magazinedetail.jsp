<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" ng-app="magazinedetail">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script src="script/like.js"></script>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/magazinedetail.css" />
<title>놀러와 마이홈</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<div class="card card-body align-middle vh-100" style="width: 60%; border-radius: 20px;">
		<form class="pushlike" action="/addmagazinelike?magazine_idx=${MagazineDetail.magazine_idx}" method="POST">
			<div class="card-title" style="margin-top: 15px;">
				<table style="width: 100%">
					<tr>
						<td>
							<h4>${MagazineDetail.magazine_title}</h4>
						</td>
						<td class="pull-right">
							<div class="heart" id="like" onclick="addmagazinelike() "></div>
						</td>
					</tr>
				</table>
			</div>
		</form>

		<div id="Indicators" class="carousel slide carousel-fade" data-ride="carousel">
			<div class="carousel-inner" role="listbox">
				<div class="carousel-item active">
					<img class="d-block w-100" src="${MagazineFirstImage}" alt="slide image">
				</div>
				<c:forEach items="${MagazinePaths}" var="magazine">
					<div class="carousel-item">
						<img class="d-block w-100" src="${magazine}" alt="slide image">
					</div>
				</c:forEach>
			</div>
			<a class="carousel-control-prev" href="#Indicators" role="button" data-slide="prev"> <span class="carousel-control-prev-icon" aria-hidden="true"></span> <span class="sr-only">이전</span>
			</a> <a class="carousel-control-next" href="#Indicators" role="button" data-slide="next"> <span class="carousel-control-next-icon" aria-hidden="true"></span> <span class="sr-only">다음</span>
			</a>
		</div>

		<div class="card-userReact">
			<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
			<section class="content-item" id="comments">
				<div class="container">
					<div class="row">
						<div class="col-sm-12">
							<form class="writeComment" action="/addmagazinecomment?magazine_idx=${MagazineDetail.magazine_idx}" method="POST" align="center">
								<div class="newcommentbody">
									<h3 class="pull-left">댓글 쓰기</h3>
									<input type="submit" id="btn-writecomment" value="등록" class="btn btn-normal pull-right" />
									<table style="width: 100%;">
										<tr>
											<td>
												<div style="margin-right: 10px;">
													<img class="img-responsive" alt="" style="height: 100px; width: 100px;">
												</div>
											</td>
											<td style="width: 100%;">
												<div style="height: 100%;">
													<textarea class="form-control" placeholder="Your message" name="comment_content" required="" style="width: 100%; height: 100px;"></textarea>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</form>
							<div>
								<br />
							</div>
							<div class="media">
								<a class="pull-left" href="#"><img class="img-responsive" alt=""></a>
								<div class="media-body">
									<c:forEach items="${MagazineComments}" var="comment">
										<h4 class="media-heading" align="left">${comment.user_nickname}</h4>
										<p>${comment.comment_content}</p>
										<ul class="list-unstyled list-inline media-detail pull-left">
											<li><i class="fa fa-calendar"></i>${comment.comment_post_date}</li>
										</ul>
										<br>
										<hr>
									</c:forEach>
								</div>
							</div>
						</div>
					</div>
				</div>
			</section>
		</div>
	</div>

	<nav class="navbar navbar-expand-lg nav" ng-controller="logincheckCtrl">
		<div class="nav-logo">
			<a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
		</div>
		<div class="collapse navbar-collapse nav-menu">
			<ul class="navbar-nav mr-auto nav-ul">
				<li class="nav-item nav-li-magazine"><a class="nav-a-text3" href='http://127.0.0.1:8080/magazine?offset=0'>매거진</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/talk'>커뮤니티</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/'>사전전검</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/estimate' ng-click="checkauth()">견적요청</a></li>
			</ul>
		</div>
		<div class="nav-div-form" ng-init="load()" ng-style="div_login">
			<form>
				<button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-login" onclick="location.href = 'http://127.0.0.1:8080/login'" type="button">로그인</button>
				<button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-signup" onclick="location.href = 'http://127.0.0.1:8080/signup'" type="button">회원가입</button>
			</form>
		</div>
	</nav>
</body>

</html>
