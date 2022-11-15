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
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
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
<title>Togetherism</title>
<style>
@import url("https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Roboto+Flex:opsz,wght@8..144,600;8..144,900&family=Roboto+Serif:opsz,wght@8..144,600;8..144,700&display=swap");
@import url('https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&display=swap');
/* body {
  min-height: 100vh;
  display: grid;
  place-content: center;
  text-align: center;
  margin: 0 1.125rem;
  background-color: #f3f4f6;
} */

*{
font-family: 'Gowun Batang', serif;
}






@import url("https://fonts.googleapis.com/css2?family=Asap&display=swap");
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Asap", sans-serif;
}
body {
  background: #42455a;
}
section {
  min-height: 100vh;
  display: flex;
  justify-content: center;
  align-items: center;
}
section:nth-child(1) {
  color: #e0ffff;
}
section:nth-child(2) {
  color: #42455a;
  background: #e0ffff;
}
section:nth-child(3) {
  color: #e0ffff;
}
section:nth-child(4) {
  color: #42455a;
  background: #e0ffff;
}
section .container {
  margin: 100px;
}
section h1 {
  font-size: 3rem;
  margin: 20px;
}
section h2 {
  font-size: 40px;
  text-align: center;
  text-transform: uppercase;
}
section .text-container {
  display: flex;
}
section .text-container .text-box {
  margin: 20px;
  padding: 20px;
  background: #00c2cb;
}
section .text-container .text-box h3 {
  font-size: 30px;
  text-align: center;
  text-transform: uppercase;
  margin-bottom: 10px;
}

@media (max-width: 900px) {
  section h1 {
    font-size: 2rem;
    text-align: center;
  }
  section .text-container {
    flex-direction: column;
  }
}

.reveal {
  position: relative;
  opacity: 0;
}

.reveal.active {
  opacity: 1;
}
.active.fade-bottom {
  animation: fade-bottom 1s ease-in;
}
.active.fade-left {
  animation: fade-left 1s ease-in;
}
.active.fade-right {
  animation: fade-right 1s ease-in;
}
@keyframes fade-bottom {
  0% {
    transform: translateY(50px);
    opacity: 0;
  }
  100% {
    transform: translateY(0);
    opacity: 1;
  }
}
@keyframes fade-left {
  0% {
    transform: translateX(-100px);
    opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}

@keyframes fade-right {
  0% {
    transform: translateX(100px);
    opacity: 0;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}








.statictitle {
  font-weight: 900;
  text-transform: uppercase;
  margin-bottom: 1.5rem;
  font-family: 'Gowun Batang', serif;
}

.movingtitle {
  display: inline-block;
  margin-bottom: 1rem;
  letter-spacing: 2px;
  font-weight: 600;
  white-space: nowrap;
  overflow: hidden;
  width: 0;
  font-family: 'Gowun Batang', serif;
  border-right: 3px solid;
  font-size: clamp(3rem, 6vw + 1rem, 5rem);
  line-height: 1.5;
  animation: type 3s steps(45) 1s forwards infinite, blink 0.5s steps(1) infinite;

}

.title2 {
  font-size: clamp(1rem, 1vw + 1rem, 1.5rem);
  color: #475569;
}

@keyframes type {
  to {
    width: 22ch;
  }
}

@keyframes blink {
  0%,
  100% {
    border-color: transparent;
  }

  50% {
    border-color: black;
  }
}

</style>
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
				<!--  기업소개 버튼 -->
				<div class="collapse navbar-collapse" id="navmenu">
					<ul class="navbar-nav ms-auto">
						<li class="nav-item"><a href="#learn" class="nav-link">About</a>
						</li>
						<li class="nav-item"><a href="#questions" class="nav-link"></a>
						</li>

						<!--  알림 -->
						<li>
							<button type="button" class="btn btn-primary position-relative">
								알림<span
									class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-2"><span
									class="visually-hidden">unread messages</span></span>
							</button>
						</li>
						<!-- 프로필 -->

						<li class="nave-item"><a href="#"><img
								src="<%=request.getContextPath()%>/images/profile_pic.png"
								alt="프로필사진" width="30" height="30" style="border-radius: 50%;" />
						</a></li>

						<!-- 프로필 & 드롭다운 -->
						<div class="dropdown">
							<a class="btn btn-secondary dropdown-toggle" href="#"
								role="button" id="dropdownMenuLink" data-bs-toggle="dropdown"
								aria-expanded="false" style="background-color: #5e17eb"> 프로필
							</a>
							<ul class="dropdown-menu" aria-labelledby="dropdownMenuLink">
								<li><a class="dropdown-item" href="#">로그인/로그아웃</a></li>
								<li><a class="dropdown-item" href="#">회원가입/정보수정</a></li>
								<li><a class="dropdown-item" href="#">마이페이지 </a></li>
							</ul>
						</div>
					</ul>
				</div>
			</div>
		</nav>
		<!-- 카테고리 -->
		<section class="bg text p-5 p-lg-0 pt-lg-1 text-center text-sm-start"
			style="background-color: #ffc100;">
			<div class="container">
				<nav class="nav">
					<a class="nav-link active" aria-current="page" href="#">Home</a> <a
						class="nav-link" href="#">About</a> <a class="nav-link" href="#">공지사항</a>
					<a class="nav-link" href="#">전체</a> <a class="nav-link" href="#">수도권</a>
					<a class="nav-link" href="#">강원</a> <a class="nav-link" href="#">경상</a>
					<a class="nav-link" href="#">전라</a> <a class="nav-link" href="#">충청</a>
					<a class="nav-link" href="#">제주</a> <a class="nav-link" href="#">해외</a>
					<a class="nav-link" href="#">FAQ/Contact</a>

				</nav>

			</div>
		</section>

	</div>

<br><br><br><br><br><br><br><br><br>

<p class="movingtitle">누구나, 언제나, 어디서나,</p> <h1 class="statictitle">Togetherism</h1>



HTML CSS JSResult Skip Results Iframe
EDIT ON
<section>
  <h1>Scroll Down to Reveal Elements &#8595;</h1>
</section>
<section>
  <div class="container reveal fade-bottom">
    <h2>Caption</h2>
    <div class="text-container">
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container reveal fade-left">
    <h2>Caption</h2>
    <div class="text-container">
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
    </div>
  </div>
</section>

<section>
  <div class="container reveal fade-right">
    <h2>Caption</h2>
    <div class="text-container">
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
      <div class="text-box">
        <h3>Section Text</h3>
        <p>
          Lorem ipsum dolor sit amet consectetur adipisicing elit. Tempore
          eius molestiae perferendis eos provident vitae iste.
        </p>
      </div>
    </div>
  </div>
</section>



Resources1× 0.5× 0.25×Rerun









<!--Grid row-->
<div class="row">
  <!--Grid column-->
  <div class="col-lg-4 col-md-12 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->

  <!--Grid column-->
  <div class="col-lg-4 col-md-6 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      data-mdb-animation-delay="300"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->

  <!--Grid column-->
  <div class="col-lg-4 col-md-6 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      data-mdb-animation-delay="500"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->
</div>
<!--Grid row-->

<!--Grid row-->
<div class="row">
  <!--Grid column-->
  <div class="col-lg-4 col-md-12 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->

  <!--Grid column-->
  <div class="col-lg-4 col-md-6 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      data-mdb-animation-delay="300"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->

  <!--Grid column-->
  <div class="col-lg-4 col-md-6 mb-4">
    <img
      data-mdb-toggle="animation"
      data-mdb-animation-start="onScroll"
      data-mdb-animation="fade-in"
      data-mdb-animation-delay="500"
      src="<%=request.getContextPath() %>/images/logo_black.png"
      class="img-fluid shadow-1-strong rounded"
    />
  </div>
  <!--Grid column-->
</div>
<!--Grid row-->


	<!-- Learn Sections -->
	<section id="learn" class="p-5">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-md">
					<img src="img/fundamentals.svg" class="img-fluid" alt="" />
				</div>
				<div class="col-md p-5">
					<h2>Learn The Fundamentals</h2>
					<p class="lead">Lorem ipsum dolor, sit amet consectetur
						adipisicing elit. Similique deleniti possimus magnam corporis
						ratione facere!</p>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
						Cumque reiciendis eius autem eveniet mollitia, at asperiores
						suscipit quae similique laboriosam iste minus placeat odit velit
						quos, nulla architecto amet voluptates?</p>
					<a href="#" class="btn btn-light mt-3"> <i
						class="bi bi-chevron-right"></i> Read More
					</a>
				</div>
			</div>
		</div>
	</section>

	<section id="learn" class="p-5 bg-dark text-light">
		<div class="container">
			<div class="row align-items-center justify-content-between">
				<div class="col-md p-5">
					<h2>Learn React</h2>
					<p class="lead">Lorem ipsum dolor, sit amet consectetur
						adipisicing elit. Similique deleniti possimus magnam corporis
						ratione facere!</p>
					<p>Lorem ipsum dolor sit, amet consectetur adipisicing elit.
						Cumque reiciendis eius autem eveniet mollitia, at asperiores
						suscipit quae similique laboriosam iste minus placeat odit velit
						quos, nulla architecto amet voluptates?</p>
					<a href="#" class="btn btn-light mt-3"> <i
						class="bi bi-chevron-right"></i> Read More
					</a>
				</div>
				<div class="col-md">
					<img src="img/react.svg" class="img-fluid" alt="" />
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
	
	
	
	
	
	function reveal() {
		  var reveals = document.querySelectorAll(".reveal");

		  for (var i = 0; i < reveals.length; i++) {
		    var windowHeight = window.innerHeight;
		    var elementTop = reveals[i].getBoundingClientRect().top;
		    var elementVisible = 150;

		    if (elementTop < windowHeight - elementVisible) {
		      reveals[i].classList.add("active");
		    } else {
		      reveals[i].classList.remove("active");
		    }
		  }
		}

		window.addEventListener("scroll", reveal);
	
	
	
	
	
	
	
		mapboxgl.accessToken = 'pk.eyJ1IjoiYnRyYXZlcnN5IiwiYSI6ImNrbmh0dXF1NzBtbnMyb3MzcTBpaG10eXcifQ.h5ZyYCglnMdOLAGGiL1Auw'
		var map = new mapboxgl.Map({
			container : 'map',
			style : 'mapbox://styles/mapbox/streets-v11',
			center : [ -71.060982, 42.35725 ],
			zoom : 18,
		})
		
		//made by vipul mirajkar thevipulm.appspot.com
		var TxtType = function(el, toRotate, period) {
		        this.toRotate = toRotate;
		        this.el = el;
		        this.loopNum = 0;
		        this.period = parseInt(period, 10) || 2000;
		        this.txt = '';
		        this.tick();
		        this.isDeleting = false;
		    };

		    TxtType.prototype.tick = function() {
		        var i = this.loopNum % this.toRotate.length;
		        var fullTxt = this.toRotate[i];

		        if (this.isDeleting) {
		        this.txt = fullTxt.substring(0, this.txt.length - 1);
		        } else {
		        this.txt = fullTxt.substring(0, this.txt.length + 1);
		        }

		        this.el.innerHTML = '<span class="wrap">'+this.txt+'</span>';

		        var that = this;
		        var delta = 200 - Math.random() * 100;

		        if (this.isDeleting) { delta /= 2; }

		        if (!this.isDeleting && this.txt === fullTxt) {
		        delta = this.period;
		        this.isDeleting = true;
		        } else if (this.isDeleting && this.txt === '') {
		        this.isDeleting = false;
		        this.loopNum++;
		        delta = 500;
		        }

		        setTimeout(function() {
		        that.tick();
		        }, delta);
		    };

		    window.onload = function() {
		        var elements = document.getElementsByClassName('typewrite');
		        for (var i=0; i<elements.length; i++) {
		            var toRotate = elements[i].getAttribute('data-type');
		            var period = elements[i].getAttribute('data-period');
		            if (toRotate) {
		              new TxtType(elements[i], JSON.parse(toRotate), period);
		            }
		        }
		        // INJECT CSS
		        var css = document.createElement("style");
		        css.type = "text/css";
		        css.innerHTML = ".typewrite > .wrap { border-right: 0.08em solid #fff}";
		        document.body.appendChild(css);
		    };
	</script>
</body>
</html>

