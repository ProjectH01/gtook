<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>이벤트 등록</title>
<!--  Bootstrap core CSS -->
		<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap.css"/>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="./css/company_main.css" />
		<script src="./js/jquery.js"></script>
		<script src="./dist/js/bootstrap.js"></script>
</head>
<body>
	<div class="container">
	 <div class="navbar navbar-default">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="company_main.com">Gtook 관리자모드</a>
        </div>
        <div class="navbar-collapse collapse">
          <ul class="nav navbar-nav">
            <li><a href="company_ask.com">상담문의 관리</a></li>
            <li><a href="company_event.com">이벤트 관리</a></li>
            <li><a href="company_cash.com">충전금 관리</a></li>
            <li><a href="javascript:;"
					onclick="$('#modal-3').modal('show', {backdrop: 'static'});">상담번호 관리</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
          	<li><a href="#">환영합니다!<b>${company_id}</b>님&nbsp;충전금액:&nbsp;<b>${company_total_cash}</b>원</a></li>
            <li><a href="company_logout.com"> Log Out </a></li>
          </ul>
          </div><!--/.nav-collapse -->
       </div>
		<div class="well">
			<form method="post" action="company_event_write_ok.com"
				onsubmit="return write_check();" enctype="multipart/form-data">
				<!-- Profile Info and Notifications -->
					<ul class="user_info">
						<li class="profile_info">
							<p> ${company_name} 병원</p>
							<input type="hidden" id="company_name" name="company_name" value="${company_name}"/>
						</li>
					</ul>
				<table border="1">
					<tr>
						<th colspan="2">이벤트 등록</th>
					</tr>
					<tr>
						<th>이벤트명</th>
						<td><input name="event" id="event" size="14" /></td>
					</tr>
					<tr>
						<th>일반 배너이미지</th>
						<td><input type="file" name="banner_image" /></td>
					</tr>
					<tr>
						<th>상세 이미지</th>
						<td><input type="file" name="detail_image" /></td>
					</tr>
					<tr>
						<th>DB단가설정</th>
						<td><input name="db_price" id="db_price" size="14" /></td>
					</tr>
					<tr>
						<th>카테고리 설정</th>
						<td><div class="form-inline"><select id="content_div" name="content_div" class="form-control">
								<option value="">- 카테고리 선택 -</option>
								<option value="치과">치과</option>
                              <option value="안과">안과</option>
                              <option value="눈/코성형">눈/코 성형</option>
                              <option value="보톡스/필러">보톡스/필러</option>
                              <option value="뷰티주사">뷰티주사</option>
                              <option value="피부과">피부과</option>
                              <option value="양악/안면윤곽">양악/안면윤곽</option>
                              <option value="동안성형/리프팅">동안성형/리프팅</option>
                              <option value="가슴성형">가슴성형</option>
                              <option value="지방흡입">지방흡입</option>
                              <option value="지방이식">지방이식</option>
                              <option value="다이어트">다이어트</option>
                              <option value="남자성형">남자성형</option>
                              <option value="다리성형">다리성형</option>
                              <option value="여성검진클리닉">여성검진 클리닉</option>
                              <option value="탈모/모발이식">탈모/모발이식</option>
                              <option value="반영구시술">반영구시술</option>
							</select></div></td>
					</tr>
					<tr>
						<th>비고</th>
							<td><input name="cs_note" id="cs_note" /></td>
					</tr>
				</table>
				<div>
					<input type="submit" value="저장" class="input_b" /> <input
						type="reset" value="취소" class="input_b"
						onclick="$('#event').focus();" /> <input type="button" value="목록"
						class="input_b"
						onclick="location='company_event.com?page=${page}'" />
				</div>
			</form>
		</div>
		</div>
	</div>
</body>
</html>