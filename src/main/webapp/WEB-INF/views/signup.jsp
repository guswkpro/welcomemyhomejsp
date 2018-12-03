<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko" ng-app="Main">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- jQuery -->
  <script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

  <!-- Angular js -->
  <script src="https://code.angularjs.org/1.2.9/angular.min.js"></script>
  <script src="js/angularMain.js"></script>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/nav.css" />
	<link rel="stylesheet" type="text/css" href="css/signup.css" />
  <title>��� ����Ȩ</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">

    <div class="card align-middle" style="width:20rem; height:27rem; border-radius:20px;">
        <div class="card-title" style="margin-top:30px;">
            <h2 class="card-title text-center" style="color:#113366;">��͸���Ȩ</h2>
        </div>
        <div class="card-body" ng-controller="signupController">
            <form class="form-signup" name="userInfo" method="POST">
                <label for="inputid" class="sr-only">���̵��Է�</label>
                <input type="text" id="input_id" placeholder="���̵��Է�" class="form-control2" required autofocus style="padding-right:48.3px;"
                    ng-model="id">
                <label for="checkid" class="sr-only"></label>
                <button id="id_confirm" type="button" name="idconfirm" class="btn btn-outline-primary btn-sm confirmbutton">�ߺ�Ȯ��</button>
                <input type="hidden" id="id_check" value="no" />
                <div>
                    <br />
                </div>
                <label for="inputPassword" class="sr-only">�н������Է�</label>
                <input type="password" id="user_password" class="form-control2" placeholder="�н�����" style="padding-right:125px;"
                    required ng-model="pw">
                <br />
                <div>
                    <br />
                </div>
                <label for="inputPasswordCheck" class="sr-only">�н�����Ȯ��</label>
                <input type="password" id="user_password_check" class="form-control2" placeholder="�н�����Ȯ��" style="padding-right:125px;"
                    required>
                <div>
                    <br />
                </div>
                <label for="inputnickname" class="sr-only">�г���</label>
                <input type="text" id="user_nickname" class="form-control2" placeholder="�г����Է�" style="padding-right:48.3px;"
                    required ng-model="nickname">
                <label for="checknickname" class="sr-only"></label>
                <button id="nickname_confirm" type="button" name="nicknameconfirm" class="btn btn-outline-primary btn-sm confirmbutton">�ߺ�Ȯ��</button>
                <input type="hidden" id="nickname_check" value="no" /> <br>

                <div>
                    <br />
                    <br />
                </div>
                <button id="btn-Yes" class="btn btn-primary btn-block" type="submit" ng-click="pushData()"> ȸ �� �� ��</button>
            </form>
        </div>
    </div>
  <nav class="navbar navbar-expand-lg nav" ng-controller="logincheckCtrl">
    <div class="nav-logo">
      <a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
    </div>
    <div class="collapse navbar-collapse nav-menu">
      <ul class="navbar-nav mr-auto nav-ul">
        <li class="nav-item nav-li-magazine">
          <a class="nav-a-text3" href='http://127.0.0.1:8080/magazine'>�Ű���</a>
        </li>
        <li class="nav-item nav-li">
          <a class="nav-a-text4" href='http://127.0.0.1:8080/talk'>Ŀ�´�Ƽ</a>
        </li>
        <li class="nav-item nav-li">
          <a class="nav-a-text4" href='http://127.0.0.1:8080/'>��������</a>
        </li>
        <li class="nav-item nav-li">
          <a class="nav-a-text4" href='http://127.0.0.1:8080/estimatelist'>������û</a>
        </li>
      </ul>
    </div>
    <div class = "nav-div-form" ng-init="load()" ng-style="div_login">
      <form>
        <button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-login" onclick="location.href = 'http://127.0.0.1:8080/login'"
          type="button">�α���</button>
        <button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-signup" onclick="location.href = 'http://127.0.0.1:8080/signup'"
          type="button">ȸ������</button>

      </form>
    </div>
  </nav>
</body>

</html>
    