<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
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
</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>
	<!-- Boxes -->
	<section class="p-5">
		<div class="container">
			<div class="row text-center g-4">
				<div class="col-md">
					<div class="card bg-dark text-light col-lg-4">
						<div class="card-body text-center">
							<div class="h1 mb-3">
								<i class="bi bi-laptop"></i>
							</div>
							<div id="carouselExampleCaptions" class="carousel slide col-md-4"
								data-bs-ride="carousel">
								<div class="carousel-indicators">
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="0" class="active" aria-current="true"
										aria-label="Slide 1"></button>
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="1" aria-label="Slide 2"></button>
									<button type="button" data-bs-target="#carouselExampleCaptions"
										data-bs-slide-to="2" aria-label="Slide 3"></button>
								</div>
								<div class="carousel-inner">
									<div class="carousel-item active ">
										<img src="<%=request.getContextPath()%>/images/chess.jpg"
											class="d-block w-100" alt="..." >
										<div class="carousel-caption d-none d-md-block">
											<h5>체크메이트</h5>
											<p>체스닷컴 500점 이상이신분들 대회 같이 나가요~</p>
										</div>
									</div>
									<div class="carousel-item ">
										<img src="<%=request.getContextPath()%>/images/rock.jpg"
											class="d-block w-100" alt="..." >
										<div class="carousel-caption d-none d-md-block">
											<h5>CLASSIC</h5>
											<p>제주도에서 흑백사진 찍으실분, 한달살기나 여행오신분들도 가능합니다.</p>
										</div>
									</div>
									<div class="carousel-item ">
										<img src="<%=request.getContextPath()%>/images/eco.jpg"
											class="d-block w-100" alt="..." >
										<div class="carousel-caption d-none d-md-block">
											<h5>환경걷기</h5>
											<p>일주일에 한 번씩 청주 무심천 같이 걸어요!.</p>
										</div>
									</div>
								</div>
								<button class="carousel-control-prev" type="button"
									data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
									<span class="carousel-control-prev-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Previous</span>
								</button>
								<button class="carousel-control-next" type="button"
									data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
									<span class="carousel-control-next-icon" aria-hidden="true"></span>
									<span class="visually-hidden">Next</span>
								</button>
							</div>
						</div>
					</div>
				</div>
	</section>

	<!-- Question Accordion -->
	<section id="questions" class="p-5">
		<div class="container">
			<h2 class="text-center mb-4">자주 묻는 질문</h2>
			<h5 class="text-center mb-4">투게더리즘 서비스 이용 중 불편했던 점이나 궁금한 점을 빠르고 친절하게 안내해 드리겠습니다.</h5>
			<div class="accordion accordion-flush" id="questions"><h3>회원</h3>
				<!-- Item 1 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-one">
							닉네임을 변경하고 싶어요</button>
					</h2>
					<div id="question-one" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 2 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-two">
							회원 신고 기준은 무엇인가요? 신고당했을 경우 신고 당한 회원은 이 사실을 알 수 있나요? </button>
					</h2>
					<div id="question-two" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 3 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-three">
							한 사람당 모임을 여러개 만들거나 가입할 수 있나요?</button>
					</h2>
					<div id="question-three" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 4 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-four">
							가입하고 싶은 모임의 정원이 다 찼어요.</button>
					</h2>
					<div id="question-four" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 5 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-five">
							가입 회원의 조건을 설정할 수 있나요?</button>
					</h2>
					<div id="question-five" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
			</div>
						<div class="accordion accordion-flush" id="questions"><h3>모임 및 이벤트</h3>
				<!-- Item 1 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-one">
							닉네임을 변경하고 싶어요</button>
					</h2>
					<div id="question-one" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 2 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-two">
							회원 신고 기준은 무엇인가요? 신고당했을 경우 신고 당한 회원은 이 사실을 알 수 있나요? </button>
					</h2>
					<div id="question-two" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 3 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-three">
							한 사람당 모임을 여러개 만들거나 가입할 수 있나요?</button>
					</h2>
					<div id="question-three" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 4 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-four">
							가입하고 싶은 모임의 정원이 다 찼어요.</button>
					</h2>
					<div id="question-four" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 5 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-five">
							가입 회원의 조건을 설정할 수 있나요?</button>
					</h2>
					<div id="question-five" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
			</div>
			<div class="accordion accordion-flush" id="questions"><h3>서비스 이용 </h3>
				<!-- Item 1 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-one">
							닉네임을 변경하고 싶어요</button>
					</h2>
					<div id="question-one" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 2 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-two">
							회원 신고 기준은 무엇인가요? 신고당했을 경우 신고 당한 회원은 이 사실을 알 수 있나요? </button>
					</h2>
					<div id="question-two" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 3 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-three">
							한 사람당 모임을 여러개 만들거나 가입할 수 있나요?</button>
					</h2>
					<div id="question-three" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 4 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-four">
							가입하고 싶은 모임의 정원이 다 찼어요.</button>
					</h2>
					<div id="question-four" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
				<!-- Item 5 -->
				<div class="accordion-item">
					<h2 class="accordion-header">
						<button class="accordion-button collapsed" type="button"
							data-bs-toggle="collapse" data-bs-target="#question-five">
							가입 회원의 조건을 설정할 수 있나요?</button>
					</h2>
					<div id="question-five" class="accordion-collapse collapse"
						data-bs-parent="#questions">
						<div class="accordion-body">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Numquam beatae fuga animi
							distinctio perspiciatis adipisci velit maiores totam tempora
							accusamus modi explicabo accusantium consequatur, praesentium rem
							quisquam molestias at quos vero. Officiis ad velit doloremque at.
							Dignissimos praesentium necessitatibus natus corrupti cum
							consequatur aliquam! Minima molestias iure quam distinctio velit.
						</div>
					</div>
				</div>
			</div>
			
		</div>
	</section>

	<section id="instructors" class="p-5 bg-primary">
		<div class="container">
			<h2 class="text-center text-white">Our Instructors</h2>
			<p class="lead text-center text-white mb-5">Our instructors all
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

	<!-- Contact & Map -->
	<section class="p-5">
		<div class="container">
			<div class="row g-4">
				<div class="col-md">
					<h2 class="text-center mb-4">Contact Info</h2>
					<ul class="list-group list-group-flush lead">
						<li class="list-group-item"><span class="fw-bold">Main
								Location:</span> 50 Main st Boston MA</li>
						<li class="list-group-item"><span class="fw-bold">Enrollment
								Phone:</span> (555) 555-5555</li>
						<li class="list-group-item"><span class="fw-bold">Student
								Phone:</span> (333) 333-3333</li>
						<li class="list-group-item"><span class="fw-bold">Enrollment
								Email:</span> (555) enroll@frontendbc.test</li>
						<li class="list-group-item"><span class="fw-bold">Student
								Email:</span> student@frontendbc.test</li>
					</ul>
				</div>
				<div class="col-md">
					<div id="map"></div>
				</div>
			</div>
		</div>
	</section>

	<!-- 푸터-->
	<footer class="p-3 bg-dark text-white text-center position-relative">
		<div class="container">
			<p class="lead">Copyright &copy; Togetherism</p>
			<p class="lead">우리는 다양성을 존중하는 포괄적인 오프라인 중심 모임 플랫폼 기업 투게더리즘 입니다.</p>
			<p class="lead">Contact : contact@togetherism.com</p>
			<a href="#" class="position-absolute bottom-0 end-0 p-5"> <i
				class="bi bi-arrow-up-circle h1"></i>
			</a>
		</div>
	</footer>

	<!-- Modal -->
	<div class="modal fade" id="enroll" tabindex="-1"
		aria-labelledby="enrollLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="enrollLabel">Enrollment</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<p class="lead">Fill out this form and we will get back to you</p>
					<form>
						<div class="mb-3">
							<label for="first-name" class="col-form-label"> First
								Name: </label> <input type="text" class="form-control" id="first-name" />
						</div>
						<div class="mb-3">
							<label for="last-name" class="col-form-label">Last Name:</label>
							<input type="text" class="form-control" id="last-name" />
						</div>
						<div class="mb-3">
							<label for="email" class="col-form-label">Email:</label> <input
								type="email" class="form-control" id="email" />
						</div>
						<div class="mb-3">
							<label for="phone" class="col-form-label">Phone:</label> <input
								type="tel" class="form-control" id="phone" />
						</div>
					</form>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
					<button type="button" class="btn btn-primary">Submit</button>
				</div>
			</div>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
		crossorigin="anonymous"></script>
	<script src="https://api.mapbox.com/mapbox-gl-js/v2.1.1/mapbox-gl.js"></script>

	<script>
		mapboxgl.accessToken = 'pk.eyJ1IjoiYnRyYXZlcnN5IiwiYSI6ImNrbmh0dXF1NzBtbnMyb3MzcTBpaG10eXcifQ.h5ZyYCglnMdOLAGGiL1Auw'
		var map = new mapboxgl.Map({
			container : 'map',
			style : 'mapbox://styles/mapbox/streets-v11',
			center : [ -71.060982, 42.35725 ],
			zoom : 18,
		})
	</script>
</body>
</html>

