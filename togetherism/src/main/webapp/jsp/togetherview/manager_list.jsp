<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	.linkstyle {text-decoration: none; color: black; hover: red;}
	.currentPage {font-style: bold;}
	.member_del {color:#A6A6A6; text-decoration:line-through; text-align:"center";}
	.del_date {text-decoration:none;}
</style>

<!-- 검색창 유효성 검사 -->
<script src="./js/manager_listSearch.js"></script>
</head>
<body>

<div class="container" id="title">
	<p><h1>관리자 > 회원관리</h1></p>
</div>
<br>

<div align="center">
	<table class="table table-borderless w-auto" style="align:center">
		<tr>
			<!-- 탈퇴 회원 포함 체크박스 -->
			<td align="left" style="width: 280px">
			<form name="check" id="check" action="manager_delMemberlist.do">
				<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="delMember" name="delMember" onClick="location.href='manager_delMemberlist.do' ">
					<label class="form-check-label" for="delMember"> 탈퇴 회원 포함 </label>
				</div>
			</form>
			</td>
					
			<!-- 검색창 -->
			<form method=post action="manager_listSearch.do" id="frm">
			<td align="right" style="width: 150px">
				<select class="form-select form-select-sm" aria-label=".form-select-sm example" name="search" id="search" style="width:110px">
					<option value="member_nickname">닉네임</option>
					<option value="member_email">이메일</option>
				</select>
			</td>
			<td align="center" style="width: 200px">
				<input type="search" class="form-control form-control-sm" name="keyword" id="keyword" style="width:200px">
			</td>
			<td align="right" style="width: 50px">
				<input type="submit" class="btn btn-outline-warning btn-sm" id="findout" value="찾기">
			</td>
			</form>
		</tr>
	</table>
</div>
<!-- 검색창 종료 -->




<!-- 회원 목록 테이블 -->
<div align="center" id="dlist"></div>
<div align="center" id="nlist">
	<table class="table table-hover w-auto">
		<thread class="table-light">
			<tr>
				<th style="width: 170px"> 이메일 </th>
				<th style="width: 140px"> 닉네임 </th>
				<th style="width: 140px"> 가입일자 </th>
				<th style="width: 140px" align="center"> 탈퇴일자 </th>
				<th style="width: 110px" align="center"> </th>
			</tr>
		</thread>
		<tbody>
			<!-- 가입한 회원이 없을 때 -->
	 		<c:if test="${empty nowmemberList }">
				<tr style="text-align:center">
					<td colspan=6>
						<br>회원이 존재하지 않습니다.<br><br>
					</td>
				</tr>
			</c:if>
			
			<!-- 가입한 회원이 존재할 때 -->
			<c:if test="${not empty nowmemberList }"> 
				<c:forEach var="n" items="${nowmemberList }">
				
				<!-- 탈퇴한 회원 목록에 줄을 그어줌 -->
					<tr>
						<td>${n.member_email } </td>
						<td> ${n.member_nickname } </td>
						<td> <fmt:formatDate value="${n.member_reg_date }"  
											pattern="yyyy-MM-dd"/> </td>
						<td>
							<!-- 탈퇴한 회원일 경우 탈퇴일자를 표시 -->
							<c:if test="${ n.member_del_yn == 'Y' }"> ${n.member_del_date }</c:if>
							<c:if test="${ n.member_del_yn == 'N' }"></c:if>
						</td>
						<td>
							<button class="btn btn-danger" text-align="center" 
								onClick="location.href='manager_deleteForm.do?member_email=${n.member_email}&page=${page }' "> 상세정보 </button>
						</td>
					</tr>
				</c:forEach>
			</c:if>
		</tbody>
	</table>


<div align="center">
	<table class="table table-borderless w-auto">
		<tr>
			<td style="width: 350px" >
			<button class="btn btn-success" onClick="location.href='manager_main.do' ">메인화면</button></td>
			<td align="right" style="width: 350px">

			</td>
		</tr>
	</table>
</div>

<div align="center">
	<!-- 게시판에 글이 존재할 때 -->
	<c:if test="${ nowMember > 0 }">
		
		<!-- 최신 페이지 -->
		<a href ="manager_list.do?page=1" class="linkstyle"> 처음 </a>
		
		<!-- 이전 블럭 이동 -->
		<c:if test="${startPage > 10 }">
			<a href="manager_list.do?page=${startPage-10 }" class="linkstyle"> << </a>
		</c:if>
		
		<!-- 1블럭당 출력되는 페이지 : 10 -->
		<c:forEach var="i" begin="${startPage }" end="${endPage }">
			<!-- 현재 페이지 -->
			<c:if test="${i == page }">	<b>${i }</b></c:if>
			
			<!-- 현재 페이지가 아닐 때 -->
			<c:if test="${i != page }">
				<a href="manager_list.do?page=${i }" class="linkstyle">${i }</a>
			</c:if>
		</c:forEach>
		
		<!-- 다음 블럭 이동 -->
		<c:if test="${ endPage < pageCount }">
			<a href="manager_list.do?page=${startPage+10 }" class="linkstyle"> >> </a>
		</c:if>
		
		<!-- 마지막 페이지 -->
		<a href="manager_list.do?page=${pageCount }" class="linkstyle"> 끝 </a>
		
	</c:if>
</div>
</div> <!-- nlist end --> 
</body>
</html>