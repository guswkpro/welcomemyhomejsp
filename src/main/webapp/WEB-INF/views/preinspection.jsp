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
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery.min.js"></script>
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

<script src="script/preinspection.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/preinspection.css" />

<title>놀러와 마이홈</title>

<script>
	//$(document).ready(function() {
	//	$.get("/getpreinspectionblueprint"), fucntion(result){
	//		console.log(result);
	//	}
	//})
</script>

<script>
$(document).ready(function($) {
/* 	var images = [];
	var recourcive = function(index) {
	var input = document.getElementById('fileselector');
	var fr = new FileReader(); */
	
	console.log($("#base_img").attr("name") + "AAAA");
	
/* 	fr.readAsDataURL(input.files[index]);
	fr.onload = function() {
		var str = fr.result.split(',')[1];
		var image = {
			image : str + "!--!"
		};
		images.push(image);
		if (index == input.files.length - 1) {
			$.post("/addpreinspectionmodal", {
				"image" : images,
				"pin_x": pin_arr[cloneCount-1].x,
                "pin_y": pin_arr[cloneCount-1].y,
			})
		} else {
			recourcive(index + 1);
		}
		recourcive(0);
	}
	 */
})
</script>

</head>
<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<div class="container preinspection-div">
		<div id="div-pin">
			<img id="my_pin" class="pin-img" src="./image/pin.png" style="position: absolute">
		</div>
		<div style="position: relative">
			<table class="table table-bordered">
				<tbody>
					<tr>
						<th>도면 사진</th>
						<td style="position: relative">
							<div id="base_img" class="wrapper" name="${preinspection_idx}">
								<img id="plan" src="${PreinspectionBlueprint}" alt="이미지 없음">
							</div>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
		<div>
			<input type="button" value="새 도면 등록" class="preinspection-float-right" onclick="location.href = 'http://127.0.0.1:8080/preinspectioncreate'" />
		</div>

		<div id="dialog" class="modal" title="Basic dialog">
			<div id="modal-content" class="modal-content">
				<span class="close">x</span>
				<table class="table table-bordered">
					<tbody>
						<form>
							<tr>
								<th>사진 등록</th>
								<td><input id='fileselector' type="file" placeholder="이미지를 선택하세요." accept="image/*" multiple /></td>
							</tr>
							<tr>
								<th>사진</th>
								<td>
									<div id="append"></div>
								</td>
							</tr>
							<tr>
								<th>체크 항목</th>
								<td><input type="text" id="check" name="pin_type" placeholder="체크항목을 입력하세요. " class="form-control" /></td>
							</tr>
							<tr>
								<th>내용</th>
								<td><textarea cols="10" id="content" rows="10" name="pin_content" placeholder="내용을 입력하세요." class="form-control"></textarea></td>
							</tr>
							<tr>
								<td colspan="2"><input type="submit" value="등록" class="preinspection-float-right" /></td>
							</tr>
						</form>
					</tbody>
				</table>
			</div>
		</div>
		<nav class="navbar navbar-expand-lg nav">
			<div class="nav-logo">
				<a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
			</div>
			<div class="collapse navbar-collapse nav-menu">
				<ul class="navbar-nav mr-auto nav-ul">
					<li class="nav-item nav-li-magazine"><a class="nav-a-text3" href='http://127.0.0.1:8080/magazines'>매거진</a></li>
					<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/community'>커뮤니티</a></li>
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
	</div>
</html>
