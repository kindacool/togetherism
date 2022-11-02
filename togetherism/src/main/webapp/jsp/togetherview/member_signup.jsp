<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>z
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>Togetherism 회원가입</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/member_signup.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./js/member.js"></script>
</head>

<body>
	<h1>Togetherism</h1>
	<form action="<%=request.getContextPath()%>/member_signup_ok.do" method="post"
	enctype="multipart/form-data" onSubmit="return check()">
	<h3>Togetherism 회원가입</h3>
	<table align="center" cellpadding="10">

		<!----- Email Id ---------------------------------------------------------->
		<tr>
			<td>이메일</td>
			<td>
			<input type="text" name="email_id" id="email_id" maxlength="100" onKeyup="email_checkR()" />@
			<input name="email_domain" id="email_domain" readonly/>
				<select id="mail_list" name="mail_list" onChange="domain_list()"> 
						<option value="">=이메일선택=</option>
						<option value="gmail.com">gmail.com</option>
						<option value="naver.com">naver.com</option>
						<option value="daum.net">daum.net</option>
						<option value="0">직접입력</option>
				</select>
			<input type="button" id="email_check_button" value="이메일 중복체크" class="input_button"
      		onclick="email_check()" />
      		<div id="email_check">
			
			</td>
		</tr>
		
		<!----- 비밀번호 ---------------------------------------------------------->
		<tr>
			<td>비밀번호</td>
			<td><input type="password" name="member_pw" id="member_pw" maxlength="30" /></td>
		
		</tr>
		
		<!----- 비밀번호 확인 ---------------------------------------------------------->
		<tr>
			<td>비밀번호 확인</td>
			<td><input type="password" name="member_pw1" id="member_pw1" maxlength="30" /></td>
		
		</tr>
		
		<!----- 닉네임 ---------------------------------------------------------->
		<tr>
			<td>닉네임</td>
			<td>
				<input type="text" name="member_nickname" id="member_nickname" maxlength="20" 
				onKeyup="nickname_checkR()"/>
				<input type="button" id="nickname_check_button" value="닉네임 중복체크" class="input_button"
	      		onClick="nickname_check()" />
      		<div id="nickname_check">
      		</td>
      		
		</tr>
		
		<!----- 휴대전화 ---------------------------------------------------------->
		<tr>
			<td>휴대전화</td>
			<td>
			<input type="text" name="member_mobile1" id="member_mobile1" /> -
			<input type="text" name="member_mobile2" id="member_mobile2" /> -
			<input type="text" name="member_mobile3" id="member_mobile3" />
			</td>
		</tr>

		<!----- 거주지역 ---------------------------------------------------------->
		<tr>
			<td>거주지역</td>
			<td><select name="member_region" id="member_region">
					<option value="">=거주지역선택=</option>
					<option value="Seoul_Metropolitan">수도권</option>
					<option value="Gangwon">강원</option>
					<option value="Gyeongsang">경상</option>
					<option value="Jeolla">전라</option>
					<option value="Chungcheong">충청</option>
					<option value="Jeju">제주</option>
					<option value="Abroad">해외</option>
			</select></td>
		</tr>
		
		<!----- 프로필 이미지 ---------------------------------------------------------->
		<tr>
			<td>프로필 이미지 사진</td>
			<td>
			<input type="file" name="member_image1" id="member_image1" />
			</td>
		</tr>

		<!----- Submit and Reset ------------------------------------------------->
		<tr>
			<td colspan="2" align="center">
			<input type="submit" value="가입하기">
			<input type="reset" value="취소"></td>
		</tr>
	</table>

	</form>
<footer> 고객센터 저작권 </footer>

</body>
</html>