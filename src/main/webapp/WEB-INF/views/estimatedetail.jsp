<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>estimatedetail ������</title>

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<!-- CSS -->
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimate.css" />
<link rel="stylesheet" type="text/css" href="css/estimateList.css" />


</head>
<body>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>����</th>
						<td>
							<div>���׸��� ������û �帳�ϴ�!!</div>
						</td>
					</tr>
					<tr>
						<th>�ּ�</th>
						<td>
							<div>������б�����б� �̷��� 3��</div>
						</td>
					</tr>
					<tr>
						<th>����</th>
						<td>
							<div>
								<img width="500" height="300" src="/image/��.jpg" alt="�̹��� ����"><br />
							</div>
							<div>
								<img width="500" height="300" src="image/����.jpg" alt="�̹��� ����"><br />
							</div>
						</td>
					</tr>
					<tr>
						<th>����</th>
						<td>
							<div>
								���� �� ���𵨸� ���� ������û�Դϴ�. <br> ���� �������� ���׸�� �ٹ̷����ϴµ� ���� �� �ҿ�
								�ð����� ��� �亯�޾� �ּ���!! <br>
							</div>
						</td>
					</tr>
				</form>
			</tbody>
		</table>
		<div class="estimateList-float-right">
			<input type="button" value="�亯 �ޱ�" class="estimateList-float-right" class="estimateList-float-right"
				onclick="location.href = 'http://127.0.0.1:8080/estimateanswer'" />
		</div>
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
		<div class="pagenation">
			<button>Previous</button>
			1/2
			<button>Next</button>
		</div>
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