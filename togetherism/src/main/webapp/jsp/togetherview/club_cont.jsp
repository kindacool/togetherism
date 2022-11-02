<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모임 상세 페이지</title>
</head>
<script>
$(document).ready(function(){
//버튼 클릭시 ajax 실행  

	// 모임내 이벤트 리스트
	$("#event_list").click(function(){
		$('#container').load('<%=request.getContextPath()%>/event_list.do?club_num=${club.club_num}&preview=Y'); // 나중엔 모임번호는 리스트에서 넘어옴, 지금은 임의로 2 로 설정
	});
	// 가입된 회원
	$("#join_member").click(function(){
		$('#container').load('<%=request.getContextPath()%>/club_member.do?club_num=${club.club_num}'); // 나중엔 모임번호는 리스트에서 넘어옴, 지금은 임의로 22 로 설정
	});
	// 모임 상세 정보
	$("#club_info").click(function(){
		$('#container').html("${clubInfobr}") // 나중엔 모임번호는 리스트에서 넘어옴, 지금은 임의로 22 로 설정
	});
	
});

</script>
<body>

<table>
	<tr>
		<td>모임명</td>
		<td>${club.club_name}</td>
	</tr>
	<tr>
		<td>모임장 이메일</td>
		<td>${club.club_host_email}</td>
	</tr>
	<tr>
		<td>클럽 간단 소개</td>
		<td>${club.club_keyword}</td>
	</tr>
	<tr>
		<td>지역</td>
		<td>${club.club_region}</td>
	</tr>
	<tr>
		<td>관심사</td>
		<td>${club.club_interest}</td>
	</tr>
	<tr>
		<td>정원</td>
		<td>${club.club_member_limit}</td>
	</tr>
	<tr>
		<td>가입자수</td>
		<td>${club.club_member_count}</td>
	</tr>
	<tr>
		<td>카톡주소</td>
		<td>${club.club_chat}</td>
	</tr>
	<tr>
		<td>이미지</td>
		<img src="<%=request.getContextPath()%>/upload/${club.club_image}" style="height:100px; weight:100px;" alt="${club.club_image}"/>
	</tr>
</table>
<button type="button" class="btn btn-primary" id="club_info">상세정보</button>
<button type="button" class="btn btn-primary" id="event_list">이벤트(정모)</button>
<button type="button" class="btn btn-primary" id="join_member">가입된 회원</button>
<button type="button" class="btn btn-primary" id="photo_board">사진첩</button>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">JOIN NOW</button>
<form action="<%=request.getContextPath()%>/club_join.do" method="get">
<input type="hidden" name="club_num" value="${club.club_num}"> <!-- 임의로 22로지정 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">모임 가입하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3"> <!-- 이후 유효성검사 -->
            <label for="recipient-name" class="col-form-label">가입인사:</label>
            <input type="text" class="form-control" name="join_hello" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
        <button type="submit" class="btn btn-primary">가입하기</button>
      </div>
    </div>
  </div>
</div>
</form>
<div id="container"></div>
</body>
</html>