<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/community.css" />
<link rel="stylesheet" type="text/css" href="css/nav.css" />


<title>놀러와 마이홈 - 커뮤니티</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">

	<!-- Page Content -->
	<div class="container" style="width: 50%; height: 100%; margin-top: 5%">

		<div style="width: 100%; height: 30px;">
			<button class="btn btn-secondary btn-sm" style="float: right;" onclick="location.href = 'http://13.124.196.226:3000/communityposting'">작성</button>
		</div>

		<div>
			<c:forEach items="${CommunityList}" var="community">

				<div class="row" style="width: 100%; height: auto; margin: 0px 0px 20px 0px; border-radius: 5px; box-shadow: 0px 0px 3px #000; border: 1px solid black;">
					<div class="community_post_img_div" style="width: 25%; height: 100%;">
						<a href="/communitydetail"> <img class="community_post_img" style="width: 100%; height: 100%; border: 4px;" src="${community.community_thumbnail_path}" alt="">
						</a>
					</div>
					<div class="posting_content" style="width: 75%; height: 100%; padding: 10px 20px 0px 20px; border-left: 0.2px solid gray;">
						<div>
							<table style="width: 100%;">
								<tr>
									<td>
										<h4>${community.community_title}</h4>
									</td>
									<td align="right">
										<div>
											<span><i class="fa fa-user"></i></span> ${community.user_idx}
										</div>
									</td>
								</tr>
							</table>
						</div>

						<p style="color: gray;">${community.community_content}</p>
						<div class="hit-like-post" style="padding-top: 0px">
							<table style="width: 100%;">
								<tr>
									<td style="width: 10%;"><span><i class="fa fa-heart" style="color: red;"></i></span>${community.community_like_count}</td>
									<td style="width: 10%;"><span><i class="fa fa-comment"></i></span> ${community.community_comment_count}</td>
									<td style="width: 10%;"><span><i class="fa fa-eye"></i> </span>${community.community_hit_count}</td>
									<td align="right"><span><i class="fa fa-calendar"></i> </span> ${community.community_post_date}</td>
								</tr>
							</table>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>

		<hr />
		<div style="text-align: center;">
			<pagination total-items="totalItems" max-size="maxSize" class="pagination-sm" boundary-links="true" rotate="false" num-pages="numPages" items-per-page="itemsPerPage"></pagination>
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


	<script>
		for (i = 0; i < $community.length; i++) {
			var string = $community[i].community_content;
			var str = string.substr(0, 20);
			$community[i].community_content = str + "...";
		}
	</script>

</body>

</html>
