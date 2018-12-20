<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import = "estimate.estimateDAO" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "com.oreilly.servlet.MultipartRequest" %>
<%@ page import = "com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>
<%@ page import = "java.io.*" %>

    <jsp:useBean id="post" class="estimate.estimateManager" scope="page" />
    <jsp:setProperty name="post" property="estimateTitle" />
    <jsp:setProperty name="post" property="estimateContent" />
    <jsp:setProperty name="post" property="estimatePicture" />
    
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="css/nav.css" />
<link rel="stylesheet" type="text/css" href="css/estimate.css" />

<title>��� ����Ȩ</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0" width="100%" height="100%">
	<%
	/* ���� ���ε� ���� */
	int maxSize = 1024*1024*10;
	String realFolder = ""; /* ���� ��� */
	String uploadFile = ""; /* ���ϸ� */
	String savePath = request.getServletContext().getRealPath("file");
	System.out.println(savePath);
	File isDir = new File(savePath);
	if(!isDir.isDirectory()){
		System.out.println("No directory");
		isDir.mkdir();
	}
	String encoding = "euc-kr";		
	MultipartRequest multi = new MultipartRequest(request, savePath, maxSize, encoding, new DefaultFileRenamePolicy());
	uploadFile = multi.getFilesystemName("postFile");
	
	String originFile = multi.getOriginalFileName("postFile");
	String sysFilename = multi.getFilesystemName("postFile"); /* ���� �̸� �ߺ��� ���� ����� �̸� */
	/* System.out.println(sysFilename); */
	File file = new File(savePath + uploadFile);
	
	/*======================================================== */
			
		String userID = null;
		String estimateTitle = multi.getParameter("estimate_title");
		String estimateContent = multi.getParameter("estimate_content");
		/* writeForm.jsp �� �Է� form �� �ǵ���� multi������ �ޱ���� */
		
		if(session.getAttribute("id") != null){
			userID = (String) session.getAttribute("id");
		}
		if (estimateTitle == null || estimateContent == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('�Է��� �� �� ������ �ֽ��ϴ�.')");
			script.println("history.back()");
			script.println("</script>");
		}
		else
		{
			EstimateDAO estimateDAO = new EstimateDAO();
			int result = estimateDAO.write(estimateTitle, userID, estimateContent, sysFilename);
			if(result == -1)
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�۾��⿡ �����߽��ϴ�.')");
				script.println("history.back()");
				script.println("</script>");
			}
			else
			{
				PrintWriter script = response.getWriter();
				script.println("<script>");
				script.println("alert('�۾��� �Ϸ�')");
				script.println("<script>");
				response.sendRedirect("main.jsp"); 
			}
		}
		
	%>
	<div class="container estimate-div">
		<table class="table table-bordered">
			<tbody>
				<form>
					<tr>
						<th>����</th>
						<td><input type="text" name="estimate_title" placeholder="������ �Է��ϼ���. " id="title" class="form-control" /></td>
					</tr>
					<tr>
						<th>�ּ�</th>
						<td><input type="text" name="estimate_address" placeholder="�ּҸ� �Է��ϼ���. " id="address" class="form-control" /></td>
					</tr>
					<tr>
						<th>����</th>
						<td><input id='fileselector' type="file" name="estimate_encoded_image" placeholder="�̹����� �����ϼ���." accept="image/*" multiple /></td>
					</tr>
					<tr>
						<th>����</th>
						<td><textarea cols="10" rows="10" placeholder="������ �Է��ϼ���." id="content" name="estimate_content" class="form-control"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="button" value="���" class="estimate-float-right" onclick="location.href = 'http://127.0.0.1:8080/estimatelist?offset=0'" /> <input type="button" id="addestimate" value="���" class="estimate-float-right" /></td>
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
				<li class="nav-item nav-li-magazine"><a class="nav-a-text3" href='http://127.0.0.1:8080/magazine?offset=0'>�Ű���</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/community?offset=0'>Ŀ�´�Ƽ</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/preinspection'>��������</a></li>
				<li class="nav-item nav-li"><a class="nav-a-text4" href='http://127.0.0.1:8080/estimatelist?offset=0'>������û</a></li>
			</ul>
		</div>
		<div class="nav-div-form">
			<form>
				<button class="btn btn-secondary my-sm-0 nav-button-login" onclick="location.href = 'http://127.0.0.1:8080/login'" type="button">�α���</button>
				<button class="btn btn-secondary my-sm-0 nav-button-signup" onclick="location.href = 'http://127.0.0.1:8080/signup'" type="button">ȸ������</button>
			</form>
		</div>
	</nav>
</body>
</html>