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
<title>estimatelist ������</title>
</head>
<body>
	<div class="container estimateList-div">
		<table class="table table-hover">
			<thead>
				<tr>
					<th>��ȣ</th>
					<th>����</th>
					<th>�ۼ���</th>
					<th>��¥</th>
					<th>�亯��</th>
				</tr>
			</thead>
			<tbody>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>60</td>
					<td>������û �帳�ϴ�!!</td>
					<td>user30</td>
					<td>2018-11-27</td>
					<td>2</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>59</td>
					<td>������ �־��</td>
					<td>user74</td>
					<td>2018-11-27</td>
					<td>0</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>58</td>
					<td>���� ����ǳ���� �ϰ� �;��</td>
					<td>user25</td>
					<td>2018-11-26</td>
					<td>7</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>57</td>
					<td>������ �ٽ��ϰ� �;��</td>
					<td>user48</td>
					<td>2018-11-26</td>
					<td>0</td>
				</tr>
				<tr onclick="location.href = 'http://127.0.0.1:8080/estimatedetail'">
					<td>56</td>
					<td>�ٴ��� �ٽ� �����ϰ� �;��</td>
					<td>user2</td>
					<td>2018-11-26</td>
					<td>5</td>
				</tr>
			</tbody>
		</table>

		<hr />
		<input type="button" value="�ۼ�" class="estimateList-float-right"
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