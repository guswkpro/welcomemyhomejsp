<%-- <%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>


<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">
    <script src="https://ajax.aspnetcdn.com/ajax/jQuery/jquery-3.3.1.min.js"></script>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/nav.css" />
    <link rel="stylesheet" type="text/css" href="css/magazine.css" />

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js" integrity="sha384-+Ga2s7YBbhOD6nie0DzrZpJes+b2K1xkpKxTFFcx59QmVPaSA8c7pycsNaFwUK6l"
        crossorigin="anonymous"></script>
    <script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js" integrity="sha384-7ox8Q2yzO/uWircfojVuCQOZl+ZZBg2D2J5nkpLqzH1HY0C1dHlTKIbpRz/LG23c"
        crossorigin="anonymous"></script>

    <script src="https://code.angularjs.org/1.2.9/angular.min.js"></script>


    <script src="js/angularMagazines.js">
    </script>



    <title>놀러와 마이홈 - 매거진</title>

</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">

    <!-- Page Content -->
    <div class="container" style="margin-top:130px;">


        <div class="row" style="margin-top:30px;">


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>산뜻한 분위기</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>특별한 연출</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>하늘과 함께</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>모던라이프</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>중국풍 대나무</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>따뜻한 카페</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>자연과 함께</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>모던 스타일</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>조던을 꿈꾸며</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>런던 라이프</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>우리 공주님</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>탁 트인 시원함</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>산뜻한 우리집</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>모던 스타일</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


            <div class="col-lg-4 col-sm-6 portfolio-item">
                <div class="card h-100" style="height:280px; width:348px;">
                    <img class="card-img-top" style="height:220px; width:100%;" src="" onclick="location.href='http://127.0.0.1:8080/magazinedetail'">

                    <div class="card-body">
                        <table style="width:100%;">
                            <tr>
                                <td style="width: 70%;">
                                    <div>
                                        <h5>꽃을 품은 집</h5>
                                    </div>
                                </td>
                                <td style="width: 30%;" align="right">
                                    <div>
                                        <a id="showcomment" class="comment-a-text4" href="http://127.0.0.1:8080/magazinedetail">댓글(2)</a>
                                    </div>
                                </td>
                            </tr>
                        </table>

                        <div class="hit-like-post">
                            <i class="fa fa-eye"></i> ( 20 )
                            <i class="fa fa-heart" style="color:red; margin-left:10px;"></i>( 4 )
                            <i class="fa fa-calendar" style="margin-left:80px;"></i> 2018-11-01
                        </div>
                    </div>
                </div>
            </div>


        </div>
    </div>

    <!-- /.row -->
    <nav class="navbar navbar-expand-lg nav" ng-controller="logincheckCtrl">
        <div class="nav-logo">
            <a class="navbar-bran" href='http://127.0.0.1:8080/'>WMH</a>
        </div>
        <div class="collapse navbar-collapse nav-menu">
            <ul class="navbar-nav mr-auto nav-ul">
                <li class="nav-item nav-li-magazine">
                    <a class="nav-a-text3" href='http://127.0.0.1:8080/magazine'>매거진</a>
                </li>
                <li class="nav-item nav-li">
                    <a class="nav-a-text4" href='http://127.0.0.1:8080/talk'>커뮤니티</a>
                </li>
                <li class="nav-item nav-li">
                    <a class="nav-a-text4" href='http://127.0.0.1:8080/'>사전전검</a>
                </li>
                <li class="nav-item nav-li">
                    <a class="nav-a-text4" href='http://127.0.0.1:8080/estimatelist'>견적요청</a>
                </li>
            </ul>
        </div>
        <div class="nav-div-form" ng-init="load()" ng-style="div_login">
            <form>
                <button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-login" onclick="location.href = 'http://127.0.0.1:8080/login'"
                    type="button">로그인</button>
                <button ng-show="showHide_logout" class="btn btn-secondary my-sm-0 nav-button-signup" onclick="location.href = 'http://127.0.0.1:8080/signup'"
                    type="button">회원가입</button>

            </form>
        </div>
    </nav>
</body>

</html> --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>

	<table>
		<thead>
			<tr>
				<th>아이디</th>
				<th>비밀번호</th>
				<th>이름</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach items="${MagazineList}" var="magazine">
				<tr>
					<td>${magazine.magazine_title}</td>
					<td>${magazine.magazine_idx}</td>
					<td>${magazine.magazine_post_date}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>


</body>
</html>

