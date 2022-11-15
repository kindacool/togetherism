<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700;800&display=swap"
	rel="stylesheet">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x"
	crossorigin="anonymous" />
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css" />
<link href="https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.css"
	rel="stylesheet" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/mainpage.css" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<title>Togetherism</title>
<script>
<%-- 	$(function() {
		$("#noticeRecent").load("<%=request.getContextPath()%>/notice_recent.do")
	}); --%>
</script>

<script type="text/javascript">	
$(function(){
	$("#ttt").load("header_member.do");
});

</script>

</head>
<body>
	<!-- 로고 -->
	<div class="fixed-top">
		<nav class="navbar navbar-expand-lg bg navbar py-3"
			style="background-color: white;">
			<div class="container">
				<a href="#" class="navbar-brand"> <img
					src="<%=request.getContextPath()%>/images/togetherism.png" alt="로고"
					width="230" height="70" />
				</a>
				<!-- 네비게이션 메뉴 -->
				<button class="navbar-toggler" type="button"
					data-bs-toggle="collapse" data-bs-target="#navmenu">
					<span class="navbar-toggler-icon"></span>
				</button>
				
				<!-- 최신 공지사항 불러오기 -->
				<div id="noticeRecent"></div>
				
				
				<!-- 로그인 안했을 때 프로필 -->
				<c:if test="${empty sessionScope.email }"> 
				<!--  기업소개 버튼 -->
				<div class="collapse navbar-collapse" id="navmenu">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="<%=request.getContextPath()%>/about.do" class="nav-link">About</a>
						</li>
						
						<li class="nave-item"><a href="#" class="nav-link">
						</a></li>
						
						<li class="nave-item">
						<img src="<%=request.getContextPath()%>/images/profile_pic.png"
							 width="50" height="50" style="border-radius: 50%;" />
						</a>
						
						<li class="nave-item"><a href="#" class="nav-link">
						</a></li>

						<!-- 프로필 & 드롭다운 -->
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-expanded="false" style="background-color: #5e17eb"> 프로필
							</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member_login.do">로그인</a></li>
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member_signup.do">회원가입</a></li>
							</ul>
						</div>
					</ul>
				</div>
				</c:if>	
						
						
				<!-- 로그인 했을 때 프로필 -->
				<c:if test="${!empty sessionScope.email}">
				<div class="collapse navbar-collapse" id="navmenu">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="<%=request.getContextPath()%>/about.do" class="nav-link">About</a>
						</li>
						
						<li class="nave-item"><a href="#" class="nav-link">
						</a></li>	
						
						<li class="nave-item"><a href="#">
							<div id="ttt"></div>
						</a></li>
						
						<li class="nave-item"><a href="#" class="nav-link">
						</a></li>
						
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-toggle="dropdown"
								aria-expanded="false" style="background-color: #5e17eb"> 프로필
							</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member_logout.do">로그아웃</a></li>
								<li><a class="dropdown-item" href="<%=request.getContextPath()%>/member_edit.do">정보수정</a></li>
								<li><a class="dropdown-item" href="#">마이페이지 </a></li>
							</ul>
						</div>
					</ul>
				</div>
			</c:if>
			
			</div>
		</nav>
		<!-- 카테고리 -->
		<section class="bg text p-5 p-lg-0 pt-lg-1 text-center text-sm-start"
			style="background-color: #ffc100;">
			<div class="container">
				<nav class="nav">
					<a class="nav-link active" aria-current="page" href="#">Home</a>
					<a class="nav-link" href="<%=request.getContextPath()%>/notice_list.do">공지사항</a>
					<a class="nav-link" href="#">전체</a> <a class="nav-link" href="#">수도권</a>
					<a class="nav-link" href="#">강원</a> <a class="nav-link" href="#">경상</a>
					<a class="nav-link" href="#">전라</a> <a class="nav-link" href="#">충청</a>
					<a class="nav-link" href="#">제주</a> <a class="nav-link" href="#">해외</a>
					<a class="nav-link" href="<%=request.getContextPath()%>/qna.do">FAQ/Contact</a>

				</nav>

			</div>
		</section>

	</div>