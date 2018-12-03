<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="./css/nav.css" />
<link rel="stylesheet" type="text/css" href="./css/estimateList.css" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>estimatelist 페이지</title>
</head>
<body>
	<div class="container estimateList-div">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
					<th>답변수</th>
				</tr>
			</thead>
			<tbody>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>60</td>
					<td>견적요청 드립니다!!</td>
					<td>user30</td>
					<td>2018-11-27</td>
					<td>2</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>59</td>
					<td>누수가 있어요</td>
					<td>user74</td>
					<td>2018-11-27</td>
					<td>0</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>58</td>
					<td>방을 유럽풍으로 하고 싶어요</td>
					<td>user25</td>
					<td>2018-11-26</td>
					<td>7</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>57</td>
					<td>도색을 다시하고 싶어요</td>
					<td>user48</td>
					<td>2018-11-26</td>
					<td>0</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>56</td>
					<td>바닥을 다시 새로하고 싶어요</td>
					<td>user2</td>
					<td>2018-11-26</td>
					<td>5</td>
				</tr>
			</tbody>
		</table>

		<hr />
		<input type="button" value="작성" class="estimateList-float-right"
			onclick="location.href = 'http://127.0.0.1:8080/estimate'" />

		<div class="pagenation">
			<button>Previous</button>
			1/2
			<button>Next</button>
		</div>
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