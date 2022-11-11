<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>신고 폼</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
function check(){
	 if($.trim($("#report_reason").val())==""){
		 alert("신고 사유를 선택하세요!");
		 $("#report_reason").val("").focus();
		 return false;
	 }
}
</script>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>

<form method="post" action="<%=request.getContextPath()%>/report_ok.do"
	onSubmit="return check()">
<input type="hidden" name="report_member_email" value="${report.report_member_email}">
<input type="hidden" name="member_email" value="${report.member_email}">

<table align="center">
<caption>유저 신고</caption>
	<tr>
	  <td>신고 작성자</td>
	  <td>${report.report_member_email}</td>
	</tr>
	<tr>
	  <td>신고 유저</td>
	  <td>${report.member_email }</td>
	</tr>
	<tr>
	  <td>신고 사유</td>
		<td><select name="report_reason" id="report_reason">
				<option value="">=신고사유선택=</option>
				<option value="sexual_harassment">성희롱</option>
				<option value="insult">욕설</option>
				<option value="racism">인종차별</option>
				<option value="spam">스팸</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
		<input type="submit" value="신고">
		<input type="reset" value="취소"> </td>
	</tr>
	
	
	
</table>
</form>

<br><br><br><br><br>
<jsp:include page="../include/footer.jsp"></jsp:include>

</body>
</html>