<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Togetherism 회원탈퇴</title>
<link rel="stylesheet" type="text/css" href="./css/admin.css" />
<link rel="stylesheet" type="text/css" href="./css/member.css" />
<script>
 function check(){
	 if($.trim($("#member_pw").val())==""){
		 alert("비밀번호를 입력하세요!");
		 $("#member_pw").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_del_reason").val())==""){
		 alert("탈퇴사유를 입력하세요!");
		 $("#member_del_reason").val("").focus();
		 return false;
	 }
 }
</script>
</head>
<body>
 <div id="del_wrap">
  <h2 class="del_title">회원 탈퇴</h2>
  <form method="post" action="<%=request.getContextPath() %>/member_delete_ok.do" 
  					  onsubmit="return check()">
    <table id="del_t">
     <tr>
      <th>회원 이메일</th>
      <td>
      ${d_email}
      </td>
     </tr>
     
     <tr>
      <th>회원 닉네임</th>
      <td>${d_nickname}</td>
     </tr>
     
     <tr>
      <th>비밀번호</th>
      <td>
      <input type="password" name="member_pw" id="member_pw" size="14" 
      			class="input_box" />
      </td>
     </tr>
     
     <tr>
      <th>탈퇴사유</th>
      <td>
      <textarea name="member_del_reason" id="member_del_reason" rows="7" 
      			cols="30" class="input_box" placeholder="공백포함 40자 이내로 입력해주세요."></textarea>
      </td>
     </tr>
    </table>
    
    <div id="del_menu">
     <input type="submit" value="탈퇴" class="input_button" />
     <input type="reset" value="취소" class="input_button"
     onclick="$('#member_pw').focus();" />
    </div>
  </form>
 </div>
</body>
</html>