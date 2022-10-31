<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<title class="title">Togetherism 로그인하기</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/member_login.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<!-- <script src="https://code.jquery.com/jquery-2.2.4.min.js"></script> -->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.15.0/jquery.validate.min.js"></script>

<script>
function check(){
	if($.trim($("#member_email").val())==""){
		alert("아이디를 입력하세요!");
		$("#member_email").val("").focus();
		return false;
		}	
	if($.trim($("#member_pw").val())==""){
		alert("비밀번호를 입력하세요!");
		$("#member_pw").val("").focus();
		return false;
		}
}

</script>

</head>
<body>
<div class="logo text-left">
	<h1>Togetherism</h1>
</div>
<div class="wrapper">
	<div class="inner-warpper text-center">
		<h2 class="title">Togetherism 로그인</h2>
			<form action="login.jsp" method="post" onsubmit="return check()">
				<div class="input-group">
					<label class="palceholder" for="email">이메일주소</label> 
					<input type="text" class="form-control" name="member_email" id="member_email" placeholder="" /> 
					<span class="lighting"></span>
				</div>
				<div class="input-group">
					<label class="palceholder" for="pw">비밀번호</label> 
					<input type="password" class="form-control" name="member_pw" id="member_pw" placeholder="" />
					<span class="lighting"></span>
				</div>
				
				<button type="submit" id="login">로그인하기</button>
				
				<div class="clearfix supporter">
					<div class="pull-left remember-me">
						<input type="checkbox" id="rememberMe"/> 
						<label for="rememberMe">아이디 기억하기</label>
					</div>
					<a class="forgot pull-right" href="#">아이디 찾기</a> 
					<a class="forgot pull-right" href="#">비밀번호 찾기</a>
				</div>
			</form>
	</div>
	<div class="signup-wrapper text-center">
		<a href="<%=request.getContextPath()%>/member_signup.do">계정이 없으신가요? <span class="text-primary">회원가입하기</span>
		</a>
	</div>
</div>
</body>
<footer>고객센터 저작권</footer>
</html>
