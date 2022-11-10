<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
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
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>
<div class="container">
	<p><h1>관리자 > 공지사항</h1></p>
</div>
<div align="center">
	<table class="table table-hover w-auto">
		<thread class="table-light">
			<tr>
				<th align="center" style="width: 100px">  </th>
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
						<c:if test="${not empty n.notice_file }">
							&nbsp;&nbsp;
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-file-earmark-image" viewBox="0 0 16 16">
							  <path d="M6.502 7a1.5 1.5 0 1 0 0-3 1.5 1.5 0 0 0 0 3z"/>
							  <path d="M14 14a2 2 0 0 1-2 2H4a2 2 0 0 1-2-2V2a2 2 0 0 1 2-2h5.5L14 4.5V14zM4 1a1 1 0 0 0-1 1v10l2.224-2.224a.5.5 0 0 1 .61-.075L8 11l2.157-3.02a.5.5 0 0 1 .76-.063L13 10V4.5h-2A1.5 1.5 0 0 1 9.5 3V1H4z"/>
							</svg>
						</c:if>
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
			<button class="btn btn-success" onClick="location.href='manager_main.do' ">메인화면</button>
			<td align="right" style="width: 350px">
			<c:if test="${not empty sessionScope.manager_email }">
				<button class="btn btn-warning" onClick="location.href='notice_writeForm.do' ">글쓰기</button>
			</c:if>
			<c:if test="${empty sessionScope.manager_email }"></c:if>
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