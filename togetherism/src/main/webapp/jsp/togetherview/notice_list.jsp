<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항</title>
<style>
	.linkstyle {text-decoration: none; color: black; hover: red;}
	.currentPage {font-style: bold;}
</style>
</head>
<body>
<div class="container">
	<p><h1>관리자 > 공지사항</h1></p>
</div>
<div align="center">
	<table class="table table-hover w-auto">
		<thread class="table-light">
			<tr>
				<th align="center" style="width: 100px"> # </th>
				<th style="width: 400px"> 제목 </th>
				<th style="width: 200px"> 작성일 </th>
			</tr>
		</thread>
		<tbody>
			<c:forEach var="n" items="${noticeList }">
				<tr>
					<td align="center"> ${n.notice_num }
						<c:set var="num" value="${n.notice_num-1 }"/></td>
					<td>
						<a href="notice_content.do?notice_num=${n.notice_num }&page=${page}" class="linkstyle">${n.notice_title }</a>
						</td>
					<td><fmt:formatDate value="${n.notice_reg_date }"
										pattern="yyyy-MM-dd HH:mm"/>
						</td>
			</c:forEach>
		</tbody>
	</table>
</div>
<div align="center">
	<table class="table table-borderless w-auto">
		<tr>
			<td style="width:350px">
			<button class="btn btn-danger" onClick="location.href='manager_list.do' ">회원관리</button>
			<td align="right" style="width: 350px">
			<button class="btn btn-warning" onClick="location.href='notice_writeForm.do' ">글쓰기</button></td>
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