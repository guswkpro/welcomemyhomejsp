<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/preinspectionCreate.css" />

<title>놀러와 마이홈</title>

<script>
$(document).ready(function($){
	var image_width, image_height;
	
	function readImage(file) {
		var reader = new FileReader();
		var image = new Image();
		
		reader.readAsDataURL(file);
		reader.onload = function(_file) {
			image.src = _file.target.result;
			image.onload = function() {
				image_width = this.width;
				image_height = this.height;
				console.log(image_width, image_height);
			}
		}
	}
	$("#fileselector").change(function(e){
		var F = this.files;
		if(F && F[0]) for(var i=0; i<F.length; i++) readImage(F[i]);
	});
	$("#btn-preinspectionblueprint").click(function(e) {
		console.log("click");
		e.preventDefault();
		console.log("2");
		
		$.post("/addpreinspectionblueprint", {
			"preinspection_encoded_image" : $("#fileselector").attr("name") + "!--!",
			"preinspection_width" : image_width,
			"preinspection_height" : image_height,
		})
	});
});
</script>

</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<div class="container preinspectionCreate-div">
		<table class="table table-bordered">
			<tbody>
				<form method="POST" action="/addpreinspectionblueprint">
					<tr>
						<th>도면 추가</th>
						<td><input name="preinspection_encoded_imgae" id='fileselector' type="file"
							placeholder="이미지를 선택하세요." accept="image/*"/></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="취소" 
							class="preinspectionCreate-float-right" onclick="location.href = 'http://127.0.0.1:8080/preinspection'"/> 
							<input type="button"  id="btn-preinspectionblueprint"
							value="등록" class="preinspectionCreate-float-right"/></td>
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
</html>
