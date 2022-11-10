<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>
	<section id="instructors" class="p-5">
		<div class="container">
			<h2 class="text-center">Our Instructors</h2>
			<p class="lead text-center text-black mb-5">Our instructors all
				have 5+ years working as a web developer in the industry</p>
			<div class="row g-4">
				<div class="col-md-6 col-lg-3">
					<div class="card bg-light">
						<div class="card-body text-center">
							<img src="https://randomuser.me/api/portraits/men/11.jpg"
								class="rounded-circle mb-3" alt="" />
							<h3 class="card-title mb-3">John Doe</h3>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Assumenda accusamus nobis sed cupiditate
								iusto? Quibusdam.</p>
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
							<h3 class="card-title mb-3">Jane Doe</h3>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Assumenda accusamus nobis sed cupiditate
								iusto? Quibusdam.</p>
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
							<h3 class="card-title mb-3">Steve Smith</h3>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Assumenda accusamus nobis sed cupiditate
								iusto? Quibusdam.</p>
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
							<h3 class="card-title mb-3">Sara Smith</h3>
							<p class="card-text">Lorem ipsum dolor sit amet consectetur
								adipisicing elit. Assumenda accusamus nobis sed cupiditate
								iusto? Quibusdam.</p>
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