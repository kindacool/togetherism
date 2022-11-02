<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Togetherism 계정 비밀번호 찾기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script>
function check(){
	 if($.trim($("#member_email").val())==""){
		 alert("이메일을 입력하세요!");
		 $("#member_email").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile1").val())==""){
		 alert("휴대폰 번호 앞자리를 입력하세요!");
		 $("#member_mobile1").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile2").val())==""){
		 alert("휴대폰 번호 중간자리를 입력하세요!");
		 $("#member_mobile2").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile3").val())==""){
		 alert("휴대폰 번호 마지막 자리를 입력하세요!");
		 $("#member_mobile3").val("").focus();
		 return false;
	 }
}
</script>
</head>
<body>
 <c:if test="${empty pwdok}"> 
 <form action="<%=request.getContextPath()%>/member_pwfind_ok.do" method="post" onSubmit="return check()">
 <h2 align="center">비밀번호 찾기</h2>
	<table align="center">
		<tr>
			<th>이메일</th>
			<td>
				<input type="text" name="member_email" id="member_email"/>
			</td>
		</tr>
		<tr>
			<th>휴대폰번호</th>
			<td>
				<input type="text" name="member_mobile1" id="member_mobile1" /> -
				<input type="text" name="member_mobile2" id="member_mobile2" /> -
				<input type="text" name="member_mobile3" id="member_mobile3" />
			</td>
		</tr>		
 		<tr align="center">
 		<td colspan=2>
 			<input type="submit" value="찾기">
			<input type="reset" value="취소">
			<input type="button" value="로그인" onClick="location='<%=request.getContextPath()%>/member_login.do'">
		</td>
 		</tr>
	</table>
</form>
</c:if>

<c:if test="${!empty pwdok}">
    <h2 align="center">비번찾기 결과</h2>
    <table align="center">
     <tr>
      <td>${pwdok}</td>
     </tr>
     <tr>
      <td><input type="button" value="로그인" onClick="location='<%=request.getContextPath()%>/member_login.do'"/></td>
     </tr>
    </table>
    
</c:if> 
</body>
</html>