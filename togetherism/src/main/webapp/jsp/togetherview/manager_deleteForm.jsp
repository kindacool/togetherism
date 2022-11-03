<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${memberDto.member_nickname } 강제탈퇴</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/manager_deleteForm.js"></script>
</head>
<body>
<form method=post action="manager_delete.do">
<input type="hidden" value="${page }">
<div class="container">
	<p><h1>관리자 > ${memberDto.member_nickname } > 강제탈퇴 </h1></p>
</div>
<p>
<div class="a" align="center">
	<table class="table table-hover w-auto" style="top:50%">
		<tr>
			<th style="width: 300px"> 회원 이메일 </th>
			<td style="width: 400px">
			<input type="text" class="form-control-plaintext" name="member_email" value="${memberDto.member_email }" readonly>
		</tr>
		<tr>
			<th style="width: 300px"> 회원 닉네임 </th>
			<td style="width: 400px"> 
			<input type="text" class="form-control-plaintext" name="member_nickname" value="${memberDto.member_nickname }" readonly>
		</tr>
		<tr>
			<th style="width: 300px"> 신고 횟수 </th>
			<td style="width: 400px">
			<input type="text" class="form-control-plaintext" name="member_nickname" value="report 테이블에서 가져오기" readonly>
		</tr>
		<tr>
			<th style="width: 300px"> 강제탈퇴 사유 </th>
			<td style="width: 400px"> 
			<input type="text" class="form-control" name="member_del_reason" placeholder="탈퇴 사유를 입력해 주세요" id="member_del_reason">
			</td>
		</tr>
		
	</table>
</div>
</p>
<div align="center">
	<table>
		<tr>
			<td align="center" style="width: 700px">
			<button class="btn btn-danger" id="memberdelbtn"> 강제탈퇴 </button>
			<input type="button" class="btn btn-warning" value="취소"onClick="history.go(-1)">
				</td>
		</tr>
	</table>
</div>
<%-- <div align="center">
	<!-- 게시판에 글이 존재할 때 -->
	<c:if test="${ noticeCount > 0 }">
		
		<!-- 최신 페이지 -->
		<a href ="notice_list.do?page=1" class="linkstyle"> 처음 </a>
		
		<!-- 이전 블럭 이동 -->
		<c:if test="${startPage > 10 }">
			<a href="notice_list.do?page=${startPage-10 }" class="linkstyle"> << </a>
		</c:if>
		
		<!-- 1블럭당 출력되는 페이지 : 10 -->
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<!-- 현재 페이지 -->
			<c:if test="${i == page }">	<b>${i }</b></c:if>
			
			<!-- 현재 페이지가 아닐 때 -->
			<c:if test="${i != page }">
				<a href="notice_list.do?page=${i }" class="linkstyle">${i }</a>
			</c:if>
		</c:forEach>
		
		<!-- 다음 블럭 이동 -->
		<c:if test="${ endPage < pageCount }">
			<a href="notice_list.do?page=${startPage+10 }" class="linkstyle"> >> </a>
		</c:if>
		
		<!-- 마지막 페이지 -->
		<a href="notice_list.do?page=${pageCount }" class="linkstyle"> 끝 </a>
		
	</c:if>
</div> --%>
</form>
</body>
</html>