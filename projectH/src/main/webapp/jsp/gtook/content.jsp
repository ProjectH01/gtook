<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Gtook</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./css/gtook.css" />
<script src="./js/jquery.js"></script>
<script src="./dist/js/bootstrap.js"></script>
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="./js/login.js"></script>
</head>
<body>
	<div class="container">
		<div class="navbar navbar-default">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target=".navbar-collapse">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-xs" href="main.com">Gtook</a>
				<p class="navbar-brand visible-xs pageTitle">${state}</p>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li class="visible-xs"><a href="main.com">Home</a></li>
					<li id="siteLogin"><a href="javascript:;"
						onclick="$('#login').modal('show', {backdrop: 'static'});">로그인</a></li>
					<li id="userPage"><a href="mypage.com">마이페이지</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" id="Secession">탈퇴</a></li>
					<li id="mainlogout"><a href="logout.com" id="MainLogout">
							Log Out </a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
			<div class="navbar-collapse collapse"
				style="background-color: #19b96a;">
				<ul class="nav nav-pills">
					<li class="navbar-text pull-left hidden-xs page_title">${state}</li>
					<li id="userInfo" class="navbar-text pull-right"
						style="font-size: 16px;"></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="well">
			<c:forEach items="${cont}" var="d">
				<form action="content_detail.com">
				<div class="jumbotron">
					<img src="./upload/banner${d.banner_image}"
						class="img-circle img-responsive thum_image">
					<h3 class="content_title">${d.event}<br/>
						<small>${d.company_name}</small>
						</h3>
						<input type="hidden" id="event" name="event" value="${d.event}"/>
						<input type="hidden" id="company_name" name="company_name" value="${d.company_name}"/>
						<br/>
						<img src="./upload/banner${d.banner_image}" class="img-rounded banner_image" alt="배너이미지"> <br /> <br />
						<div class="row">
							<a class="btn btn-default" style="font-size:10pt;">추천하고 포인트받자</a>
							 <input type="submit" class="btn btn-default" value="상세보기"/>
						</div>
					</div>
				</form>
			</c:forEach>

		</div>
	</div>

	<!-- 로그인 새창열기 -->
	<div class="modal fade" id="login" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title">로그인</h4>
				</div>
				<div class="modal-body">
					<div class="panel-body">
						<!-- kakaotalk login -->
						<a href="#" id="custom-login-btn"> <img
							src="./images/kakao_account.png"></img>
						</a> <br />
						<!-- kakaotalk login -->
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
			</div>
		</div>

	</div>
	<!-- 로그인 새창열기 -->
</body>



</html>