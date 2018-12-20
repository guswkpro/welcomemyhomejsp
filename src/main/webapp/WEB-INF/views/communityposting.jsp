<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.1.0.min.js"></script>

<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/solid.js"></script>
<script defer src="https://use.fontawesome.com/releases/v5.0.8/js/fontawesome.js"></script>

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="css/community.css" />
<link rel="stylesheet" type="text/css" href="css/nav.css" />

<script>
   $(document).ready(function($) {
      var image_width, image_height;
      var image_src;

      function readImage(file) {
         var reader = new FileReader();
         var image = new Image();

         reader.readAsDataURL(file);
         reader.onload = function(_file) {
            image.src = _file.target.result;
            image_src = image.src;
            image.onload = function() {
               image_width = this.width;
               image_height = this.height;
               console.log(image_width, image_height);
            }
         }
      }
      $("#fileselector").change(function(e) {
         var F = this.files;
         if (F && F[0])
            for (var i = 0; i < F.length; i++)
               readImage(F[i]);
      });
      
      });
   });
</script>

<title>놀러와 마이홈 - 커뮤니티</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">

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

   <!-- Page Content -->
   <div class="container" style="margin-top: 30px; margin-bottom: 10px;">
      <div class="row">
         <div class="col-lg-3">
            <div class="container">
               <div class="row" style="min-width: 1080px;">
                  <div class="col-lg-3 col-sm-6">
                     <div class="card hovercard">
                        <div class="cardheader"></div>
                        <div class="avatar">
                           <img src="./profile/<%=userInfo.getUserProfile()%>">
                        </div>
                        <div class="info">
                           <div class="title">
                              <a target="_blank" href="mypage.jsp"><%=userInfo.getUserName() %></a>
                           </div>
                           <div class="desc"><%=userInfo.getUserJob() %></div>
                           <div class="desc"><%=userInfo.getUserFavorite() %></div>
                        </div>
                        <div class="bottom"></div>
                     </div>
                  </div>
               </div>
            </div>

         </div>

         <div class="col-lg-9">
            <div class="container">
               <div class="row">
                  <form method="post" enctype="multipart/form-data" style="text-align: center; width: 85%; margin-left: 40px;">
                     <table class="table table-striped" style="text-align: center; width: 100%;">
                        <thead>
                           <tr>
                              <th colspan="3" style="text-align: center;">글쓰기 양식</th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td><input type="text" class="form-control" placeholder="글 제목" name="postTitle" maxlength="50" style="width: 100%;"></td>
                           </tr>
                           <tr>
                              <td><input type="file" class="form-control" name="postFile"></td>
                           </tr>
                           <tr>
                              <td><textarea class="form-control" placeholder="글 내용" name="postContent" maxlength="2048" style="width: 100%; height: 300px;"></textarea></td>
                           </tr>
                           <tr>
                           </tr>
                        </tbody>
                     </table>
                     <input type="submit" class="btn btn-primary pull-right" value="글쓰기">
                  </form>
               </div>
            </div>

         </div>

      </div>

   </div>

</body>

</html>