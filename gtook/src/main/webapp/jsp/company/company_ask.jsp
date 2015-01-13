<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>상담문의 관리</title>
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
            <li><a href="company_cash.com">충전금 내역</a></li>
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
			<div class="row">

				<!-- Profile Info and Notifications -->
				<div>

					<ul class="user_info">
						<!-- Profile Info -->
						<li class="profile_info">
							<!-- add class "pull-right" if you want to place this from right -->
							<a href="#"> <img src="assets/images/thumb-1@2x.png" /> ${company_name} 병원
						</a>

						</li>
					</ul>
				</div>
				
			</div>
			
			<div>
				<form action="company_ask.com" onsubmit="return find_check();">
					<div>   
					    <h2>상담문의 관리</h2>
					    <table>
					      <tr>
					        <th align="center">CS현황</th> 
					        <th align="center">신청일</th> 
					        <th align="center">신청이벤트</th> 
					        <th align="center">상담요청시간</th> 
					        <th align="center">아이디</th>
					        <th align="center">전화번호</th>
					        <th align="center">조회</th>
					      </tr>
					      <c:if test="${!empty rlist}">
							<c:forEach var="list" items="${rlist}">
								<tr>
									<c:if test="${list.cs_state == 0}">
										<td><a href="company_cs_state_edit.com?event=${list.event}&cs_state=${list.cs_state}&user_id=${list.user_id}">신규</a></td>
									</c:if>
									<c:if test="${list.cs_state == 1}">
										<td><a href="company_cs_state_edit.com?event=${list.event}&cs_state=${list.cs_state}&user_id=${list.user_id}">완료</a></td>
									</c:if>
									<c:if test="${list.cs_state == 2}">
										<td><a href="company_cs_state_edit.com?event=${list.event}&cs_state=${list.cs_state}&user_id=${list.user_id}">재상담</a></td>
									</c:if>
									<td align="center">${list.cs_date}</td>
									<td align="center">${list.event}</td>
									<td align="center">${list.cs_time}</td>
									<td align="center">${list.user_id}</td>
									<td align="center">${list.user_phone}</td>
									<td align="center"><a href="#">조회</a></td>
								</tr>
							</c:forEach>
						</c:if>

					<c:if test="${empty rlist}">
						<tr>
							<th colspan="5">이벤트가 없습니다!!</th>
						</tr>
					</c:if>

						</table>
					</div>
				</form>
			</div>
			</div>
		</div>
		<!-- change phone -->
		<div class="modal fade" id="modal-3" data-backdrop="static">
<form id="fmodal-3" method = "post" enctype = "multipart/form-data" action="change_phone();">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-header">
				<h4 class="modal-title">상담연락처 변경</h4>
			</div>
			<div class="modal-body">
				<input type="hidden" name="redi" id="redi" value="/index.php">
				<input type="hidden" name="ccid" id="ccid">
        <div class="panel panel-primary" data-collapsed="0">		
          <div class="panel-heading">
            <div class="panel-title">전화번호 수정</div>
          </div>
          <div class="panel-body">
            <div class="form-group">
              <label class="col-sm-3 control-label">문자받는 전화번호</label>
              <div class="col-sm-9">
                  <input type="text" name="ctel1" class="form-control" id="field-1" placeholder="'-' 없이 숫자만 입력" value="${phone}">
              </div>
            </div>
            <div class="form-group">
              <label class="col-sm-3 control-label">전화상담 전화번호</label>
              <div class="col-sm-9">
                  <input type="text" name="ctel2" class="form-control" id="field-2" placeholder="'-' 없이 숫자만 입력" value="${letter}">
              </div>
            </div>
          </div>
        </div>
    </div>
			
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
				<button type="button" class="btn btn-info" onclick="$('#fmodal-3').submit();">상담번호 변경</button>
			</div>
		</div>
	</div>
</form>
</div>
	<!-- change phone end -->
	</body>
</html>