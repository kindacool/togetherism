<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<br><br>

<!-- 투게더리즘 아코디언 시작 -->
<div class="container">
  <p><h2>자주 묻는 질문 - 투게더리즘</h2></p>
</div>
<div class="container">
<div class="accordion" id="togetherism" style="width:60%">
  <div class="accordion-item">
    <h2 class="accordion-header" id="together1">
      <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#togethercol1" aria-expanded="true" aria-controls="togethercol1">
        Q. "투게더리즘"은 어떤 서비스인가요?
      </button>
    </h2>
    <div id="togethercol1" class="accordion-collapse collapse show" aria-labelledby="together1" data-bs-parent="#togetherism">
      <div class="accordion-body">
      		"투게더리즘"은 온라인을 통해 인접 지역 사람들과 소통하고 만남으로 이어지는 <br><strong>'오프라인 모임'</strong> 서비스 입니다. <br>
			인접 지역을 중심으로 개인이 원하는 모임을 찾아 가입해 활동할 수도 있고,<br>
			직접 모임을 만들어 운영할 수도 있습니다.<br><br>
			인접 지역 카테고리에 속한 모임을 통해 만난 사람들은 친구가 되어 <br>서로의 관심사와 취향을 알아갈 수 있습니다.<br><br>
			친구들은 모임장이 주최하는 이벤트를 통해 취미 생활을 공유할 수도 있고,<br> 다양한 활동을 함께 하며 친밀감을 공유할 수 있습니다.
      </div>
    </div>
  </div>
</div>
</div>
<!-- 투게더리즘 아코디언 종료 -->
<br><br>

<!-- 회원 아코디언 시작 -->
<div class="container">
  <p><h2>자주 묻는 질문 - 회원</h2></p>
</div>
<div class="container">
<div class="accordion" id="member" style="width:60%">
	<div class="accordion-item">
		<h2 class="accordion-header" id="member1">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#membercol1" aria-expanded="true" aria-controls="membercol1">
			Q. 닉네임을 변경하고 싶어요
			</button>
		</h2>
		<div id="membercol1" class="accordion-collapse collapse" aria-labelledby="member1" data-bs-parent="#member">
			<div class="accordion-body">
			<Strong> 마이 페이지  > 회원정보 수정 </Strong> 메뉴에서 변경 가능하며,<br>
			닉네임은 다른 회원과 중복될 수 없습니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="member2">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#membercol2" aria-expanded="false" aria-controls="membercol2">
			Q. 회원 신고 기준은 무엇인가요?<br>   신고당했을 경우 신고 당한 회원은 이 사실을 알 수 있나요?
			</button>
		</h2>
		<div id="membercol2" class="accordion-collapse collapse" aria-labelledby="member2" data-bs-parent="#member">
			<div class="accordion-body">
			신고 메뉴에서 선택할 수 있는 기준은 다음과 같습니다.<br><br>
			
			<li>욕설이나 비속어 사용</li>
			<li>회원 간 분란조장</li>
			<li>불법 금전 거래</li>
			<li>이벤트 미참석</li>
			<br>
			매달 공지사항 게시판을 통해 신고당한 회원과 사유 목록을 공지하고 있습니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="member3">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#membercol3" aria-expanded="false" aria-controls="membercol3">
			Q. 가입시 설정한 이메일을 변경할 수 있나요?
			</button>
		</h2>
		<div id="membercol3" class="accordion-collapse collapse" aria-labelledby="member3" data-bs-parent="#member">
			<div class="accordion-body">
			가입 시 설정한 이메일은 회원의 고유한 아이디로 사용되기 때문에 변경할 수 없습니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="member4">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#membercol4" aria-expanded="false" aria-controls="membercol4">
			Q. 이메일이 기억나지 않아요 / 비밀번호가 기억나지 않아요
			</button>
		</h2>
		<div id="membercol4" class="accordion-collapse collapse" aria-labelledby="member4" data-bs-parent="#member">
			<div class="accordion-body">
			<strong> 로그인 > 이메일 찾기 / 비밀번호 찾기 </strong> 를 이용하시면 <br>
			회원가입 시 입력한 이메일 주소로 선택하신 정보가 발송됩니다.<br>
			</div>
		</div>
	</div>
</div>
<!-- 회원 아코디언 종료 -->
<br><br>

<!-- 회원 아코디언 시작 -->
<div class="container">
  <p><h2>자주 묻는 질문 - 모임</h2></p>
</div>
<div class="container">
<div class="accordion" id="club" style="width:60%">
	<div class="accordion-item">
		<h2 class="accordion-header" id="club1">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#clubcol1" aria-expanded="true" aria-controls="clubcol1">
			Q. 한 사람이 모임을 여러 개 만들거나 가입할 수 있나요?
			</button>
		</h2>
		<div id="clubcol1" class="accordion-collapse collapse" aria-labelledby="club1" data-bs-parent="#club">
			<div class="accordion-body">
			네, 모임 생성과 가입은 개수 제한 없이 생성 가능합니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="club2">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#clubcol2" aria-expanded="false" aria-controls="clubcol2">
			Q. 모임을 삭제할 수 없나요? 모임장이 탈퇴하면 어떻게 되나요?
			</button>
		</h2>
		<div id="clubcol2" class="accordion-collapse collapse" aria-labelledby="club2" data-bs-parent="#club">
			<div class="accordion-body">
			모임장은 모임을 탈퇴할 수 없습니다.<br>
			또한, 모임에 멤버가 가입되어 있다면 모임 삭제는 불가능합니다.<br><br>
			모임장이 모임을 삭제하기 위해서는 모든 회원들에게 탈퇴를 유도한 이후<br>
			모두 탈퇴하여 모임장이 유일한 멤버일 때, 모임 삭제가 가능합니다.<br><br>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="club3">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#clubcol3" aria-expanded="false" aria-controls="clubcol3">
			Q. 가입하고 싶은 모임의 정원이 다 찼어요.
			</button>
		</h2>
		<div id="clubcol3" class="accordion-collapse collapse" aria-labelledby="club3" data-bs-parent="#club">
			<div class="accordion-body">
			모임의 정원이 다 찼을 경우 모임장이 모임 정보 수정 메뉴에서 정원을 수정할 수 있습니다.<br>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="club5">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#clubcol4" aria-expanded="false" aria-controls="clubcol4">
			Q. 모임 가입 회원의 조건을 설정할 수 있나요?
			</button>
		</h2>
		<div id="clubcol4" class="accordion-collapse collapse" aria-labelledby="club4" data-bs-parent="#club">
			<div class="accordion-body">
			누구나 가입할 수 있습니다.
			</div>
		</div>
	</div>
</div>
<!-- 모임 아코디언 종료 -->
<br><br>

<!-- 이벤트 아코디언 시작 -->
<div class="container">
  <p><h2>자주 묻는 질문 - 이벤트</h2></p>
</div>
<div class="container">
<div class="accordion" id="event" style="width:60%">
	<div class="accordion-item">
		<h2 class="accordion-header" id="event1">
			<button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#eventcol1" aria-expanded="true" aria-controls="eventcol1">
			Q. 이벤트가 무엇인가요?
			</button>
		</h2>
		<div id="eventcol1" class="accordion-collapse collapse" aria-labelledby="event1" data-bs-parent="#event"">
			<div class="accordion-body">
			모임장이 주최 가능한 <strong>'오프라인 모임'</strong> 입니다.<br>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="event2">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eventcol2" aria-expanded="false" aria-controls="eventcol2">
			Q. 이벤트는 누구나 열 수 있나요?
			</button>
		</h2>
		<div id="eventcol2" class="accordion-collapse collapse" aria-labelledby="event2" data-bs-parent="#event">
			<div class="accordion-body">
			이벤트는 모임장이 주최할 수 있습니다.<br>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="event3">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eventcol3" aria-expanded="false" aria-controls="eventcol3">
			Q. 내가 가입하지 않은 모임의 이벤트도 참여 가능한가요?
			</button>
		</h2>
		<div id="eventcol3" class="accordion-collapse collapse" aria-labelledby="event3" data-bs-parent="#event">
			<div class="accordion-body">
			내가 속해있는 모임의 이벤트만 참여 가능합니다.<br><br>
			가입하지 않은 모임의 이벤트인 경우 <br>
			해당 모임에 가입 후 참여 가능합니다.
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header" id="event4">
			<button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#eventcol4" aria-expanded="false" aria-controls="eventcol4">
			Q. 이벤트에 참석하기로 했는데, 취소할 수 있나요?
			</button>
		</h2>
		<div id="eventcol4" class="accordion-collapse collapse" aria-labelledby="event4" data-bs-parent="#event">
			<div class="accordion-body">
			<strong>마이 페이지 > 내가 참여한 이벤트</strong> 에서 참석 취소 버튼을 누르면 취소 가능합니다.
			</div>
		</div>
	</div>
</div>
<!-- 모임 아코디언 종료 -->
<br><br>

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
