<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimate.css" />

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>estimateanswer 페이지</title>

<script>
	$(document).ready(function($) {
		var images = "";
		$('#addestimate').click(function() {
			var recourcive = function(index) {
				var input = document.getElementById('fileselector');
				var fr = new FileReader();
				fr.readAsDataURL(input.files[index]);
				fr.onload = function() {
					var str = fr.result.split(',')[1];
					var image = str + "!--!";
					images += image;
					if (index == input.files.length - 1) {
						console.log(images, "images");
						console.log($('#title').val(), "title");
						console.log($('#content').val(), "content");
						console.log($('#address').val(), "address");
						$.post("/addestimate", {
							"answer_encoded_image" : images,
							"answer_title" : $('#title').val(),
							"answer_content" : $('#content').val(),
							"estimate_idx" : $('#address').val()
						})
					} else {
						recourcive(index + 1);
					}
				}
			}
			recourcive(0);
		})
	})
</script>

</head>
<body>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>제목</th>
						<td><input type="text" placeholder="제목을 입력하세요. " id="title" class="form-control" /></td>
					</tr>
					<tr>
						<th>사진</th>
						<td><input id='fileselector' type="file" placeholder="파일을 선택하세요." accept="image/*" multiple /></td>
					</tr>
					<tr>
						<th>내용</th>
						<td><textarea cols="10" rows="10" placeholder="내용을 입력하세요." id="content" class="form-control"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="취소" onclick="location.href = 'http://127.0.0.1:8080/estimatelist?offset=0'" class="estimate-float-right" /> <input type="button" value="등록" class="estimate-float-right" /></td>
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