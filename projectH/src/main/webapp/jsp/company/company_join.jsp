<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>관리자 가입</title>
		<script src="././js/jquery.js"></script>
		<script src="././js/company_join.js"></script>
		<!--  Bootstrap core CSS -->
		<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap.css"/>
		<link rel="stylesheet" type="text/css" href="./dist/css/bootstrap-theme.css"/>
		<!-- Custom CSS -->
		<link rel="stylesheet" type="text/css" href="./css/company.css" />
	</head>
	<body>
	<div class="container">
		<div class="jumbotron">
  			<h2>관리자 가입</h2>
  				<form method="post" role="form" action="company_join_ok.com" onsubmit="return join_check();">
    				<div class="form-group">
      					<label for="inputid">관리자 아이디</label>
      					<input type="text" name="company_id" id="company_id" size="14" class="form-control" required/>
      				</div>
      				<div class="form-group">
      					<label for="inputcompany">상호명</label>
      					<input type="text" name="company_name" id="company_name" size="14" class="form-control" required/>
      				</div>
      				<div class="form-group">
      						<label for="inputpwd">관리자 비밀번호</label>
						    <input type="password" name="company_pwd" id="company_pwd01" size="14" class="form-control" required/>
					</div>
    				<div class="form-group">
      						<label for="inputrepwd">관리자 비밀번호 확인</label>
						    <input type="password" name="company_pwd02" id="company_pwd02" size="14" class="form-control" required/>
					</div>
						<div class="form-inline">
							<label for="inputdiv">카테고리</label>
							<select id="company_div" name="company_div" class="form-control">
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
							</select>
						</div>
  						<div class="form-inline">
  						<label for="inputemail">관리자 이메일</label>			
                           	<input type="hidden" name="company_email" id="company_email"> 
                           	<input id="email_id" type="text" required style="width: 150px;" class="form-control"> @ <input id="email_host" type="text" required style="width: 150px;" class="form-control">
                           	<select id="domain" class="form-control">
                              <option value="">- 이메일 선택 -</option>
                              <option value="gmail.com">gmail.com</option>
                              <option value="naver.com">naver.com</option>
                              <option value="hanmail.net">hanmail.net</option>
                              <option value="nate.com">nate.com</option>
                              <option value="" class="direct">직접입력</option>
                           	</select>
						</div>
					<div class="form-group">					
     						<label for="inputphone">관리자 전화상담번호</label>
     						<input name="company_phone" id="company_phone" size="30" class="form-control" required/>
     				</div>
					<div class="form-group">					     				
     						<label for="inputletter">관리자 문자상담번호</label>
     						<input name="company_letter" id="company_letter" size="30" class="form-control" required/>
					</div>
					<div class="form-group">					
     						<label for="inputCashNum">관리자 계좌번호</label>
     						<input name="company_cash_num" id="company_cash_num" size="30" class="form-control" required/>
     				</div>
     				<div id="form-group">
    					<input type="submit" value="가입" class="btn btn-primary btn-sm" />
    					<input type="reset" value="취소" class="btn btn-default btn-sm" onclick="$('#company_id').focus();" />
    					<input type="button" value="로그인화면으로" class="btn btn-default btn-sm" onclick="location='company_index.com';" />
    				</div>
     			</form>
     		</div>
     	</div>
	</body>
</html>