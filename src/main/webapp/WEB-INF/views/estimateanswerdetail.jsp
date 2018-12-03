<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimate.css" />


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>estimateanswerdetail 페이지</title>
</head>
<body>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>제목</th>
						<td>
							<div>견적 답변입니다.</div>
						</td>
					</tr>
				<tr>
					<th>사진</th>
					<td>
						<div>
							<img width="500" height="300" src="public/누수.jpg" alt="이미지 없음"><br />
							<img width="500" height="300" src="public/금.jpg" alt="이미지 없음"><br />
							<img width="500" height="300" src="public/누수.jpg" alt="이미지 없음"><br />
						</div>
					</td>
				</tr>
				<tr>
					<th>내용</th>
					<td>
						<div>
							요청하신 인테리어 요소에 관한 정보입니다.<br>
							최대한 고객님의 취향에 맞는 것으로 준비하였습니다.<br>
							<br>
							의자 <br> 
							가격 : 5~7만,<br> 
							제작 시간 : 2일,<br> 
							<br> 
							침대<br>
							가격 : 30~40만,<br>
							제작 시간 : 7~8일,<br>
							<br>
							도벽<br>
							가격 : 100~150만,<br>
							소요 시간 : 한 달 ~ 세 달 <br>
						</div>
					</td>
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
</html>