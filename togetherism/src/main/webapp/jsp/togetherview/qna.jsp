<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Q & A</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/qna_mailCheck.js"></script>
</head>
<body>
<div class="container">
	<p><h1>Q & A </h1></p>
</div>
<div class="container">
  <p><h2>자주 묻는 질문</h2></p>

	<!-- 아코디언 시작 -->
<div class="accordion" id="accordionExample" style="width:700px">
	<div class="accordion-item">
		<h2 class="accordion-header" id="headingOne">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
			Q. "투게더리즘"은 어떤 서비스인가요?
			</button>
		</h2>
		<div id="collapseOne" class="accordion-collapse collapse show" aria-labelledby="headingOne" data-bs-parent="#accordionExample">
			<div class="accordion-body">
			"투게더리즘"은 온라인을 통해 인접 지역 사람들과 소통하고 만남으로 이어지는 <br><strong>'오프라인 모임'</strong> 서비스 입니다. <br>
			인접 지역을 중심으로 개인이 원하는 모임을 찾아 가입해 활동할 수도 있고,<br>
			직접 모임을 만들어 운영할 수도 있습니다.<br><br>
			인접 지역 카테고리에 속한 모임을 통해 만난 사람들은 친구가 되어 <br>서로의 관심사와 취향을 알아갈 수 있습니다.<br><br>
			친구들은 모임장이 주최하는 이벤트를 통해 취미 생활을 공유할 수도 있고,<br> 다양한 활동을 함께 하며 친밀감을 공유할 수 있습니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="headingTwo">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
			Q. 다른 지역의 모임을 가입할 수 있나요?
			</button>
		</h2>
		<div id="collapseTwo" class="accordion-collapse collapse" aria-labelledby="headingTwo" data-bs-parent="#accordionExample">
			<div class="accordion-body">
			안됩니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="headingThree">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
			Q. 한 명이 여러개의 모임을 개설할 수 있나요?
			</button>
		</h2>
		<div id="collapseThree" class="accordion-collapse collapse" aria-labelledby="headingThree" data-bs-parent="#accordionExample">
			<div class="accordion-body">
			됩니다.
			</div>
		</div>
	</div>
</div>

<!-- 아코디언 종료 -->

<!-- 메일 폼 시작 -->
<form action="before_mail.do" method="post">
<br><br><br><br><br>
<div class="container">
	<p><h1>1:1 문의</h1></p>
	<p><h6>카테고리를 선택해 질문을 입력해주시면 관리자에게 메일이 발송됩니다.<br>
	회원의 경우 관리자 답변은 가입하신 메일로 전송됩니다.<br>
	비회원일 경우 관리자 답변을 받을 수 있는 메일 주소를 작성해주세요.
	</h6></p>
	

	<p><table class="table table-borderless w-auto">
		<tr>
			<th style="width:200px"> 분류 </th>
			<td>
				<select class="form-select" aria-label="Default select example" name="qna_category" id="qna_category">
				  <option value="">선택해주세요</option>
				  <option value="회원">회원</option>
				  <option value="모임/이벤트">모임/이벤트</option>
				  <option value="제안">제안</option>
				  <option value="기타">기타</option>
				</select>
			</td>
		</tr>
		<tr>
			<th style="width:200px"> 작성자 </th>
			<td style="width:500px"><input type="text" name="member_nickname" id="member_nickname" class="form-control" placeholder="작성자를 입력해주세요" style="width: 500px"></td>
				
			<%-- <!-- 로그인 세션이 유지될 경우 -->
			<c:if test="${not empty memberDto.member_nickname }">
				<td style="width:500px"><input type="text" name=""member_nickname"" id="member_nickname" class="form-control" placeholder="회원닉네임 표시" style="width: 500px"></td>
			</c:if>
			
			<!-- 비회원 -->
			<c:if test="${empty memberDto.member_nickname }">
				<td style="width:500px"><input type="text" name=""member_nickname"" id="member_nickname" class="form-control" placeholder="제목을 입력해주세요" style="width: 500px"></td>
			</c:if> --%>
		</tr>
		<tr>
			<th style="width:200px"> 메일 주소 </th>
			<td style="width:500px"><input type="email" name="member_email" id="member_email" class="form-control" placeholder="답변 받을 이메일 주소를 입력해주세요" style="width: 500px"></td>
			
			<%-- <!-- 로그인 세션이 유지될 경우 -->
			<c:if test="${not empty memberDto.member_email }">
				<td style="width:500px"><input type="email" name="member_email" id="member_email" class="form-control" value="회원이메일주소 표시" style="width: 500px"></td>
			</c:if>
			
			<!-- 비회원 -->
			<c:if test="${empty memberDto.member_email }">
				<td style="width:500px"><input type="email" name="member_email" id="member_email" class="form-control" placeholder="답변 받을 이메일 주소를 입력해주세요" style="width: 500px"></td>
			</c:if> --%>
		</tr>
		<tr>
			<th style="width:200px"> 제목 </th>
			<td style="width:500px"><input type="text" name="mail_subject" id="mail_subject" class="form-control" placeholder="제목을 입력해주세요" style="width: 500px"></td>
		</tr>
		<tr>
			<th style="width:200px"> 내용 </th>
			<td style="width:500px"><textarea type="text" name="mail_content" id="mail_content" class="form-control" placeholder="내용을 입력해주세요" rows="10" cols="10"></textarea>
			</td>
		</tr>
	</table></p>
	
	<p><div align="center">
			<input type="submit" class="btn btn-danger" id="mailbtn" value="미리보기">
			<input type="reset" class="btn btn-warning" value="취소">
	</p></div>
</div>
</form>
<!-- 메일 폼 종료 -->
</body>
</html>
