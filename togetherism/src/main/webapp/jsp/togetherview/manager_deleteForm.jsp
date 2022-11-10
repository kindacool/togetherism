<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${memberDto.member_nickname } 상세정보</title>
<script src="./js/manager_deleteForm.js"></script>
<style>
	.linkstyle {text-decoration: none; color: black; hover: red;}
	.currentPage {font-style: bold;}
	.member_del {text-decoration:line-through; color:"#d5d5d5"; text-align:"center";}
	.del_date {text-decoration:none;}
</style>
</head>
<body>
<form method=post action="manager_delete.do">
<input type="hidden" value="${page }">
<div class="container">
	<p><h1>관리자 > <font color="#5e17eb">  ${memberDto.member_nickname } </font> 회원의 상세정보 </h1></p>
</div>
<p>
<br><br>

<div align="center">
	<table class="table w-auto">
		<tr>
			<c:if test="${ memberDto.member_del_yn == 'Y' }">
			<td rowspan=4 style="width: 250px">
					<img src="./images/logo_white_sm.png" class="img-thumbnail"><br>
			</c:if>
			<c:if test="${ memberDto.member_del_yn == 'N' }">
			<td rowspan=4 style="width: 250px">
				<img src="./upload/${memberDto.member_image }" class="img-thumbnail"><br>
			</c:if> 		
			</td>
			<th style="width: 200px"> 회원 이메일 </th>
			<c:if test="${ memberDto.member_del_yn == 'Y' }"> <td style="width: 400px" class="member_del"> </c:if> 
			<c:if test="${ memberDto.member_del_yn == 'N' }"> <td style="width: 400px"> </c:if> 
			<input type="text" class="form-control-plaintext" name="member_email" value="${memberDto.member_email }" readonly>
			</td>
		</tr>
		<tr>
			<th> 신고 횟수 </th>
			<c:if test="${ memberDto.member_del_yn == 'Y' }"> <td class="member_del"> </c:if> 
			<c:if test="${ memberDto.member_del_yn == 'N' }"> <td> </c:if> 
			<input type="text" class="form-control-plaintext" name="member_nickname" value="${reportCount }" readonly>
		</tr>
		<tr>
			<th> 개설 모임 </th>
			<c:if test="${ memberDto.member_del_yn == 'Y' }"> <td class="member_del"> </c:if> 
			<c:if test="${ memberDto.member_del_yn == 'N' }"> <td> </c:if> 
			<input type="text" class="form-control-plaintext" name="club_host_count" value="${clubList }" readonly>
		</tr>
		<c:if test="${not empty clubDto }">
		<tr>
			<th> 개설 모임 목록</th>
			<c:if test="${ memberDto.member_del_yn == 'Y' }"> <td class="member_del"> </c:if> 
			<c:if test="${ memberDto.member_del_yn == 'N' }"> <td> </c:if> 
 					<c:forEach var="c" items="${clubDto}">
						<input type="text" class="form-control-plaintext" name="club_host_name" value="${c.club_name }" readonly>
					</c:forEach>
		</tr>
		</c:if>
		<tr>
			<c:if test="${not empty clutDto }">
				<td></td>
				<th> 강제탈퇴 사유 </th>
				<td>
					<input type="text" class="form-control" name="member_del_reason" placeholder="개설한 모임이 있어 강제탈퇴 할 수 없습니다" id="member_del_reason" disabled>
				</td>
			</c:if>
			<c:if test="${memberDto.member_del_yn == 'Y' }">
				<th> 강제탈퇴 사유</th>
				<td>
					<input type="text" class="form-control" name="member_del_reason" placeholder="이미 탈퇴한 회원입니다" id="member_del_reason" disabled>
				</td>
			</c:if>
			<c:if test="${empty clubDto && memberDto.member_del_yn == 'N'}">
				<th> 강제탈퇴 사유 </th>
				<td>
					<input type="text" class="form-control" name="member_del_reason" placeholder="탈퇴 사유를 입력해 주세요" id="member_del_reason">
				</td>
			</c:if>
		</tr>
	</table>
</div>
<br>

</p>
<div align="center">
	<table>
		<tr>
			<td align="center" style="width: 700px">
			<c:if test="${not empty clubDto }">
				<button class="btn btn-danger" id="memberdelbtn" disabled> 강제탈퇴 </button>
			</c:if>
			<c:if test="${empty clubDto }">
				<button class="btn btn-danger" id="memberdelbtn"> 강제탈퇴 </button>
			</c:if>
			<input type="button" class="btn btn-warning" value="회원목록"onClick="history.go(-1)">
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