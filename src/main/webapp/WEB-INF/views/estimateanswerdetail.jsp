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
<title>estimateanswerdetail ������</title>
</head>
<body>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>����</th>
						<td>
							<div>���� �亯�Դϴ�.</div>
						</td>
					</tr>
				<tr>
					<th>����</th>
					<td>
						<div>
							<img width="500" height="300" src="public/����.jpg" alt="�̹��� ����"><br />
							<img width="500" height="300" src="public/��.jpg" alt="�̹��� ����"><br />
							<img width="500" height="300" src="public/����.jpg" alt="�̹��� ����"><br />
						</div>
					</td>
				</tr>
				<tr>
					<th>����</th>
					<td>
						<div>
							��û�Ͻ� ���׸��� ��ҿ� ���� �����Դϴ�.<br>
							�ִ��� ������ ���⿡ �´� ������ �غ��Ͽ����ϴ�.<br>
							<br>
							���� <br> 
							���� : 5~7��,<br> 
							���� �ð� : 2��,<br> 
							<br> 
							ħ��<br>
							���� : 30~40��,<br>
							���� �ð� : 7~8��,<br>
							<br>
							����<br>
							���� : 100~150��,<br>
							�ҿ� �ð� : �� �� ~ �� �� <br>
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
					href='http://127.0.0.1:8080/magazine'>�Ű���</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/talk'>Ŀ�´�Ƽ</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/precheck'>��������</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4"
					href='http://127.0.0.1:8080/estimatelist'>������û</a></li>
			</ul>
		</div>
		<div class="div_login">
			<form>
				<button class="btn btn-secondary my-sm-0 nav-button-mypage"
					onclick="location.href = 'http://127.0.0.1:8080/mypage'"
					type="button">����������</button>
				<button class="btn btn-secondary my-sm-0 nav-button-logout"
					onclick="location.href = 'http://127.0.0.1:8080/'" type="button">�α׾ƿ�</button>
			</form>
		</div>
	</nav>
</body>
</html>