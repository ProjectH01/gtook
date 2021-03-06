<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Gtook</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<script src="./js/jquery.js"></script>
<script src="./dist/js/bootstrap.js"></script>
<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap.css" />
<link rel="stylesheet" type="text/css" href="./css/gtook.css" />
<script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="./js/login.js"></script>
<script>
	
</script>
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
				<a class="navbar-brand" href="main.com">Gtook</a>
			</div>
			<div class="navbar-collapse collapse">
				<ul class="nav navbar-nav">
					<li id="siteLogin"><a href="javascript:;"
						onclick="$('#login').modal('show', {backdrop: 'static'});">로그인</a></li>
					<li id="userPage"><a href="mypage.com">마이페이지</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#" id="Secession">탈퇴</a></li>
					<li id="mainlogout"><a href="logout.com" id="MainLogout"> Log Out </a></li>
				</ul>
			</div>
			<!--/.nav-collapse -->
			<div class="navbar-collapse collapse"
				style="background-color: #19b96a;">
				<ul class="nav nav-pills">
					<li id="userInfo" class="navbar-text pull-right"
						style="font-size: 16px;"></li>
				</ul>
			</div>
		</div>
	</div>

	<div id="carousel-example-generic" class="carousel slide">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>
 
  <!-- Wrapper for slides -->
  <div class="carousel-inner">
    <div class="item active">
    	<div class="container">
    		<img src="./images/mainimage.png" class="image-custom" alt="..." style="width:100%; height:60%;">
    	</div>
    </div>
    <div class="item">
    	<div class="container">
       		<img src="./images/Koala.jpg" class="image-custom" alt="..." style="width:100%; height:60%;">
       		<div class="container">
       		<h3>샘플 이미지입니다</h3>
       		<p>조회수에 따라 헤드라인이 변경됩니다</p>
       		</div>
       	</div>
    </div>
       <div class="item">
       	<div class="container">
      		<img src="./images/Lighthouse.jpg" class="image-custom" alt="..." style="width:100%; height:60%;">
      		<h3>샘플 이미지입니다</h3>
       		<p>조회수에 따라 헤드라인이 변경됩니다</p>
      	</div>
      </div>
  </div>
 
  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
    <span class="icon-prev"></span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
    <span class="icon-next"></span>
  </a>
</div>
  <!-- END OF Wrapper for slides -->
  <!-- contents icon -->
  <div class="wrapper">
  <div class="content-main">
 <div class="panel panel-default">
   <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1"><a href="content.com?state=치과"><img class="selicon" src="./images/icon/01_01.png" alt="치과"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=안과"><img class="selicon" src="./images/icon/01_02.png" alt="안과"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=눈/코성형"><img class="selicon" src="./images/icon/01_03.png" alt="눈/코성형"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=보톡스/필터"><img class="selicon" src="./images/icon/01_04.png" alt="보톡스/필터"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=뷰티주사"><img class="selicon" src="./images/icon/01_05.png" alt="뷰티주사"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=피부과"><img class="selicon" src="./images/icon/01_06.png" alt="피부과"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=양악/안면윤곽"><img class="selicon" src="./images/icon/01_07.png" alt="양악/안면윤곽"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=동안성형/리프팅"><img class="selicon" src="./images/icon/01_08.png" alt="동안성형/리프팅"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=가슴성형"><img class="selicon" src="./images/icon/01_09.png" alt="가슴성형"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=지방흡입"><img class="selicon" src="./images/icon/01_10.png" alt="지방흡입"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=지방이식"><img class="selicon" src="./images/icon/01_11.png" alt="지방이식"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=다이어트"><img class="selicon" src="./images/icon/01_12.png" alt="다이어트"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=남자성형"><img class="selicon" src="./images/icon/2_05.png" alt="남자성형"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=다리성형"><img class="selicon" src="./images/icon/2_06.png" alt="다리성형"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=여성검진클리닉"><img class="selicon" src="./images/icon/2_07.png" alt="여성검진클리닉"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=탈모/모발이식"><img class="selicon" src="./images/icon/2_08.png" alt="탈모/모발이식"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=반영구시술"><img class="selicon" src="./images/icon/2_09.png" alt="반영구시술"></a></div>
  <div class="col-xs-4 col-sm-2 col-md-2 col-lg-1 selicon"><a href="content.com?state=체험단"><img class="selicon" src="./images/icon/2_10.png" alt="체험단"></a></div>
 
</div>	
</div>
</div>
  <!-- End of contents icon -->
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