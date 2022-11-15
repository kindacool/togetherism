<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Togetherism</title>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<script src="http://code.jquery.com/jquery-latest.js"></script>
<style>
	#ourservice {
		font-color:#5e17eb;
		font-size:medium;
	}
	
</style>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>
	<section id="togetherism" class="p-5">
		<div class="container">
			<p class="lead text-center">우리 함께 TOGETHER</p>
			<h2 class="text-center">TOGETHERISM</h2>
			<p class="lead text-center text-black mb-5"></p>
			
			<hr class="order-2 m-0 w-auto" style="color:#C8C8DC; width:80%;"></hr>
			<p class="lead text-center mb-5"></p>
			<div class="lead text-center" text-align="center" id="ourservice">
				TOGETHERISM 은 온라인을 통해 인접 지역 사람들과 소통하고 만남으로 이어지는 <br>
				<strong>'오프라인 모임'</strong> 서비스 입니다. <br>
				인접 지역을 중심으로 개인이 원하는 모임을 찾아 가입해 활동할 수도 있고,<br>
				직접 모임을 만들어 운영할 수도 있습니다.<br><br>
				지역 카테고리에 속한 모임을 통해 만난 사람들은 친구가 되어 <br>서로의 관심사와 취향을 알아갈 수 있습니다.<br><br>
				친구들은 모임장이 주최하는 이벤트를 통해 취미 생활을 공유할 수도 있고,<br> 다양한 활동을 함께 하며 친밀감을 공유할 수 있습니다.<br>
			</div>
			<p class="lead text-center text-black mb-5"></p>
			
			<div class="row g-4">	
					
				<!-- 자기 소개 시작 -->
				<div class="col-md-6 col-lg-3">
					<div class="card card-borderless bg-light">
						<div class="card-body text-center">
							<img src="https://randomuser.me/api/portraits/men/11.jpg"
								class="rounded-circle mb-3" alt="" />
							<h3 class="card-title mb-3">박수영</h3>
							<p class="card-text"></p>
							<a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-facebook text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card bg-light">
						<div class="card-body text-center">
							<img src="https://randomuser.me/api/portraits/women/11.jpg"
								class="rounded-circle mb-3" alt="" />
							<h3 class="card-title mb-3">이민지</h3>
							<p class="card-text"></p>
							<a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-facebook text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card bg-light">
						<div class="card-body text-center">
							<img src="https://randomuser.me/api/portraits/men/12.jpg"
								class="rounded-circle mb-3" alt="" />
							<h3 class="card-title mb-3">이자영</h3>
							<p class="card-text"></p>
							<a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-facebook text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
						</div>
					</div>
				</div>

				<div class="col-md-6 col-lg-3">
					<div class="card bg-light">
						<div class="card-body text-center">
							<img src="https://randomuser.me/api/portraits/women/12.jpg"
								class="rounded-circle mb-3" alt="" />
							<h3 class="card-title mb-3">조민영</h3>
							<p class="card-text"></p>
							<a href="#"><i class="bi bi-twitter text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-facebook text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-linkedin text-dark mx-1"></i></a> <a
								href="#"><i class="bi bi-instagram text-dark mx-1"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
<br><br><br><br><br>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>