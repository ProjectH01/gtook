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
				<p class="navbar-brand visible-xs pageTitle">${cont.content_div}</p>
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
					<li class="navbar-text pull-left hidden-xs page_title">${cont.content_div}</li>
					<li id="userInfo" class="navbar-text pull-right"
						style="font-size: 16px;"></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="container">
		<div class="jumbotron">
			<h3>[${cont.content_div}] ${cont.event} <small>${cont.company_name}</small></h3>
			<br/>
			<img src="./upload/detail${cont.detail_image}" class="img-rounded banner_image" alt="상세이미지">
			<br/>
			<h4>이벤트 참여를 원하신다면<br/>하단에 참여하기 버튼을 눌러주세요</h4>
		</div>
		<div class="well">
			<p class="leads">이벤트 진행 순서</p>
			<br/>
				<div class="row">
					<div class="col-xs-4 col-md-4">
						<img src="./images/icon/detail_join_icon.png" class="img-circle img-responsive selicon detail_icon">
					</div>
					<div class="col-xs-4 col-md-4">
						<img src="./images/icon/message.png" class="img-circle img-responsive selicon detail_icon">
					</div>
					<div class="col-xs-4 col-md-4">	
						<img src="./images/icon/call.png" class="img-circle img-responsive selicon detail_icon">
					</div>
				</div>
		</div>
		<a class="btn btn-default join_btn" href="javascript:;" onclick="$('#eventjoin').modal('show', {backdrop: 'static'});">참여하기</a>
		<br/>
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
	<!-- 참여하기 -->
	<div class="modal fade" id="eventjoin" data-backdrop="static">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h4 class="modal-title join_modal"><strong>이벤트</strong> 참여하기</h4>
				</div>
			<form>
				<div class="modal-body">
					<div class="panel-body">
						<div class="form-group">
							 <label for="inputname" class="col-lg-2 control-label">이름</label>
								<div class="col-lg-10">
      								<input type="text" class="form-control" id="username">
   								</div>
   						</div>
   						<br/>
   						<div class="form-group">
							<label for="inputUsercall" class="col-lg-2 control-label">연락처</label>
								<div class="col-lg-10">
      								<input type="text" class="form-control" id="inputUsercall">
   								</div>
   						</div>
   						<br/>
   						<div class="form-group">
							<label for="inputUserTime" class="col-lg-2 control-label">연락시간</label>
								<div class="col-lg-10">
      								<input type="text" class="form-control" id="userTime">
   								</div>
   						</div>
   						<br/>
   						
   					</div>
				</div>
				<div class="modal-footer">
				<input type="submit" class="btn btn-default" value="참여하기"/>
					<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				</div>
				</form>
			</div>
		</div>

	</div>
	<!-- 참여하기 -->
</body>



</html>