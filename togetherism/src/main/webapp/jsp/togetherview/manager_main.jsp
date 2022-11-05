<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/top.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 메인</title>
<script>
$(function(){
	$('#logout').click(function(){
		if(confirm("정말 로그아웃 하시겠습니까?")) {
			alert("로그아웃 완료");
			self.location.href="manager_logout.do";
		}
	});
});
</script>
</head>
<body>
<p>
<div class="container">
	<p><h1>${sessionScope.manager_email } 님 환영합니다! </h1></p>
</div>
</p>
<div align="center">
	<table class="table table-borderless w-auto">
	
	<tr>
		<td align="center" style="width: 500px">
			<h1> 회원관리</h1><br>
			<button type="button" class="btn btn-warning" onClick="location.href='manager_list.do' ">
             <svg xmlns="http://www.w3.org/2000/svg" width="300" height="300" fill="currentColor" class="bi bi-people-fill" viewBox="0 0 16 16">
  <path d="M7 14s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1H7zm4-6a3 3 0 1 0 0-6 3 3 0 0 0 0 6z"/>
  <path fill-rule="evenodd" d="M5.216 14A2.238 2.238 0 0 1 5 13c0-1.355.68-2.75 1.936-3.72A6.325 6.325 0 0 0 5 9c-4 0-5 3-5 4s1 1 1 1h4.216z"/>
  <path d="M4.5 8a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5z"/>
</svg></button>
		</td>
		<td align="center" style="width: 500px">
			<h1> 공지사항 </h1><br>
			<button type="button" class="btn btn-danger" onClick="location.href='notice_list.do' ">
				<svg xmlns="http://www.w3.org/2000/svg" width="300" height="300" fill="currentColor" class="bi bi-megaphone-fill" viewBox="0 0 16 16">
  <path d="M13 2.5a1.5 1.5 0 0 1 3 0v11a1.5 1.5 0 0 1-3 0v-11zm-1 .724c-2.067.95-4.539 1.481-7 1.656v6.237a25.222 25.222 0 0 1 1.088.085c2.053.204 4.038.668 5.912 1.56V3.224zm-8 7.841V4.934c-.68.027-1.399.043-2.008.053A2.02 2.02 0 0 0 0 7v2c0 1.106.896 1.996 1.994 2.009a68.14 68.14 0 0 1 .496.008 64 64 0 0 1 1.51.048zm1.39 1.081c.285.021.569.047.85.078l.253 1.69a1 1 0 0 1-.983 1.187h-.548a1 1 0 0 1-.916-.599l-1.314-2.48a65.81 65.81 0 0 1 1.692.064c.327.017.65.037.966.06z"/>
</svg>
			</button>
		</td>
	</tr>
	<tr>
		<td><button class="btn btn-dark" id="logout">로그아웃</button></td>
		<td></td>
	</tr>
	</table>
</div>
</body>
</html>