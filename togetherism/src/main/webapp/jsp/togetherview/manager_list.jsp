<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<style>
	.linkstyle {text-decoration: none; color: black; hover: red;}
	.currentPage {font-style: bold;}
	.unregister {}
</style>
</head>
<body>
<div class="container">
	<p><h1>관리자 > 회원관리</h1></p>
</div>
<div align="center">
	<table class="table table-hover w-auto">
		<thread class="table-light">
			<tr>
				<th style="width: 200px"> 이메일 </th>
				<th style="width: 150px"> 닉네임 </th>
				<th style="width: 200px"> 가입일자 </th>
				<th style="width: 150px" align="center"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </th>
			</tr>
		</thread>
		<tbody>
	 		<c:if test="${empty memberList }">
				<tr>
					<td>
						회원이 존재하지 않습니다.
					</td>
				</tr>
			</c:if>
			<c:if test="${not empty memberList }"> 
				<c:forEach var="m" items="${memberList }">
					<tr><c:if test="${m.member_del_yn == 'N'}">
						<td>${m.member_email } </td>
						<td> ${m.member_nickname } </td>
						<td> <fmt:formatDate value="${m.member_reg_date }"  
											pattern="yyyy-MM-dd HH:mm EEEE"/> </td>
						<td align=center><button class="btn btn-danger" text-align="center" 
										onClick="location.href='manager_deleteForm.do?member_email=${m.member_email}' "> 강제탈퇴 </button>
						</td>
					</c:if>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>
</div>

<div align="center">
	<table class="table table-borderless w-auto">
		<tr>
			<td style="width: 350px" >
			<button class="btn btn-warning" onClick="location.href='notice_list.do' ">공지사항</button></td>
			<td align="right" style="width: 350px">
			<input type="button" class="btn btn-warning" value="기능없음">
			</td>
		</tr>
	</table>
</div>

<div align="center">
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
</div>
</div>
</body>
</html>