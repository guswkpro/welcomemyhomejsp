<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<!DOCTYPE html>
<html lang="ko" ng-app="magazinedetail">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">

  <!-- jQuery -->
  <script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
  <link rel="stylesheet" type="text/css" href="css/nav.css" />
  <link rel="stylesheet" type="text/css" href="css/magazinedetail.css" />
  <title>��� ����Ȩ</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">


  <div class="card card-body align-middle vh-100" style="width:60%; border-radius:20px;">
    <div class="card-title" style="margin-top:15px;">
      <h5>����� ���� ���׸���</h5>
      <div class="heart"></div>
    </div>

    <div id="Indicators" class="carousel slide carousel-fade" data-ride="carousel">
      <ol class="carousel-indicators">
        <li data-target="#Indicators" data-slide-to="0" class="active"></li>
        <li data-target="#Indicators" data-slide-to="1" ></li>
        <li data-target="#Indicators" data-slide-to="2"></li>
      </ol>
      <div class="carousel-inner" role="listbox">
        <div class="carousel-item active">
          <img class="d-block w-100" src="../public/15-2018-11-01/1.jpg" alt="First slide">
            </div>
          <div class="carousel-item">
            <img class="d-block w-100" src="../public/15-2018-11-01/2.jpg" alt="Second slide">
            </div>
            <div class="carousel-item">
              <img class="d-block w-100" src="../public/15-2018-11-01/3.jpg" alt="Third slide">
            </div>

            </div>
            <a class="carousel-control-prev" href="#Indicators" role="button" data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">����</span>
          </a>
            <a class="carousel-control-next" href="#Indicators" role="button" data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">����</span>
          </a>
          </div>


          <div class="card-userReact">
            <form class="writeComment" method="POST" align="center">

              <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
              <section class="content-item" id="comments">
                <div class="container">
                  <div class="row">
                    <div class="col-sm-12">

                          <form>
                            <div class="newcommentheader">
                              <h3 class="pull-left">��� ����</h3>
                              <button type="submit" class="btn btn-normal pull-right">���</button>
                            </div>

                            <div class="newcommentbody">
                              <table style="width:100%;">
                                <tr>
                                  <td>
                                    <div style="margin-right: 10px;">
                                      <img class="img-responsive" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="" style="height: 100px; width:100px;">
                                    </div>
                                  </td>
                                  <td style="width:100%;">
                                    <div style="height: 100%;">
                                      <textarea class="form-control" id="message" placeholder="Your message" required="" style="width:100%; height:100px;"></textarea>
                                    </div>
                                  </td>
                                </tr>
                              </table>
                            </div>
                          </form>

                          <div>
                            <br />
                          </div>

                            <div class="media">
                              <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar1.png" alt=""></a>
                              <div class="media-body">
                                <h4 class="media-heading" align="left">���¿�</h4>
                                <p>���������̳׿� ����</p>
                                <ul class="list-unstyled list-inline media-detail pull-left">
                                  <li><i class="fa fa-calendar"></i>2018-11-25</li>
                                </ul>
                              </div>
                            </div>
                            <div class="media">
                              <a class="pull-left" href="#"><img class="media-object" src="https://bootdey.com/img/Content/avatar/avatar4.png" alt=""></a>
                              <div class="media-body">
                                <h4 class="media-heading" align="left">�����</h4>
                                <p>������</p>
                                <ul class="list-unstyled list-inline media-detail pull-left">
                                  <li><i class="fa fa-calendar"></i>2018-11-25</li>
                                </ul>
                              </div>
                            </div>
                          </div>
                        </div>
                    </div>
              </section>

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
                <a class="nav-a-text4" href='http://127.0.0.1:8080/estimate' ng-click="checkauth()">������û</a>
              </li>
            </ul>
          </div>
          <div class="nav-div-form" ng-init="load()" ng-style="div_login">
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
