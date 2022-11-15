<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"
	integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js"
	integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk"
	crossorigin="anonymous"></script>
<style>
@import
	url('https://fonts.googleapis.com/css2?family=Shadows+Into+Light&display=swap')
	;

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
}

.buttons {
	margin: 10%;
	text-align: center;
}

.btn-hover {
	width: 200px;
	font-size: 16px;
	font-weight: 600;
	color: #fff;
	cursor: pointer;
	margin: 20px;
	height: 55px;
	text-align: center;
	border: none;
	background-size: 300% 100%;
	border-radius: 50px;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:hover {
	background-position: 100% 0;
	moz-transition: all .4s ease-in-out;
	-o-transition: all .4s ease-in-out;
	-webkit-transition: all .4s ease-in-out;
	transition: all .4s ease-in-out;
}

.btn-hover:focus {
	outline: none;
}

.btn-hover.color-1 {
	background-image: linear-gradient(to right, #25aae1, #40e495, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(49, 196, 190, 0.75);
}

.btn-hover.color-2 {
	background-image: linear-gradient(to right, #f5ce62, #e43603, #fa7199, #e85a19);
	box-shadow: 0 4px 15px 0 rgba(229, 66, 10, 0.75);
}

.btn-hover.color-3 {
	background-image: linear-gradient(to right, #667eea, #764ba2, #6B8DD6, #8E37D7);
	box-shadow: 0 4px 15px 0 rgba(116, 79, 168, 0.75);
}

.btn-hover.color-4 {
	background-image: linear-gradient(to right, #fc6076, #ff9a44, #ef9d43, #e75516);
	box-shadow: 0 4px 15px 0 rgba(252, 104, 110, 0.75);
}

.btn-hover.color-5 {
	background-image: linear-gradient(to right, #0ba360, #3cba92, #30dd8a, #2bb673);
	box-shadow: 0 4px 15px 0 rgba(23, 168, 108, 0.75);
}

.btn-hover.color-6 {
	background-image: linear-gradient(to right, #009245, #FCEE21, #00A8C5, #D9E021);
	box-shadow: 0 4px 15px 0 rgba(83, 176, 57, 0.75);
}

.btn-hover.color-7 {
	background-image: linear-gradient(to right, #6253e1, #852D91, #A3A1FF, #F24645);
	box-shadow: 0 4px 15px 0 rgba(126, 52, 161, 0.75);
}

.btn-hover.color-8 {
	background-image: linear-gradient(to right, #29323c, #485563, #2b5876, #4e4376);
	box-shadow: 0 4px 15px 0 rgba(45, 54, 65, 0.75);
}

.btn-hover.color-9 {
	background-image: linear-gradient(to right, #25aae1, #4481eb, #04befe, #3f86ed);
	box-shadow: 0 4px 15px 0 rgba(65, 132, 234, 0.75);
}

.btn-hover.color-10 {
	background-image: linear-gradient(to right, #ed6ea0, #ec8c69, #f7186a, #FBB03B);
	box-shadow: 0 4px 15px 0 rgba(236, 116, 149, 0.75);
}

.btn-hover.color-11 {
	background-image: linear-gradient(to right, #ffc100, #38b6ff, #5e17eb);
	box-shadow: 0 5px 15px rgba(242, 97, 103, .4);
}

/* html,
body {
    margin: 0;
    padding: 0;
    width: 100%;
    height: 100vh;
    display: flex;
    flex-direction: row;
    justify-content: center;
    align-items: center;
    background: #000;
} */
.glow-on-hover {
	width: 220px;
	height: 50px;
	border: none;
	outline: none;
	color: #fff;
	background: #111;
	cursor: pointer;
	position: relative;
	z-index: 0;
	border-radius: 10px;
}

.glow-on-hover:before {
	content: '';
	background: linear-gradient(45deg, #ff0000, #ff7300, #fffb00, #48ff00, #00ffd5,
		#002bff, #7a00ff, #ff00c8, #ff0000);
	position: absolute;
	top: -2px;
	left: -2px;
	background-size: 400%;
	z-index: -1;
	filter: blur(5px);
	width: calc(100% + 4px);
	height: calc(100% + 4px);
	animation: glowing 20s linear infinite;
	opacity: 0;
	transition: opacity .3s ease-in-out;
	border-radius: 10px;
}

.glow-on-hover:active {
	color: #000
}

.glow-on-hover:active:after {
	background: transparent;
}

.glow-on-hover:hover:before {
	opacity: 1;
}

.glow-on-hover:after {
	z-index: -1;
	content: '';
	position: absolute;
	width: 100%;
	height: 100%;
	background: #111;
	left: 0;
	top: 0;
	border-radius: 10px;
}

@
keyframes glowing { 0% {
	background-position: 0 0;
}

50%
{
background-position


:

 

400%
0;
}
100%
{
background-position


:

 

0
0;
}
}
.animate-charcter
{
   text-transform: uppercase;
  background-image: linear-gradient(
    -225deg,
    #231557 0%,
    #44107a 29%,
    #ff1361 67%,
    #fff800 100%
  );
  background-size: auto auto;
  background-clip: border-box;
  background-size: 200% auto;
  color: #fff;
  background-clip: text;
  text-fill-color: transparent;
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: textclip 2s linear infinite;
  display: inline-block;
      font-size: 190px;
}

@keyframes textclip {
  to {
    background-position: 200% center;
  }
}
</style>
</head>
<body>
	<div class="buttons">
		<button class="btn-hover color-1">BUTTON</button>
		<button class="btn-hover color-2">BUTTON</button>
		<button class="btn-hover color-3">BUTTON</button>
		<button class="btn-hover color-4">BUTTON</button>
		<button class="btn-hover color-5">BUTTON</button>
		<button class="btn-hover color-6">BUTTON</button>
		<button class="btn-hover color-7">BUTTON</button>
		<button class="btn-hover color-8">BUTTON</button>
		<button class="btn-hover color-9">BUTTON</button>
		<button class="btn-hover color-10">모임 참여하기</button>
		<button class="btn-hover color-11">모임 만들기</button>
	</div>



	<button class="glow-on-hover" type="button">지금 모임 참여하기!</button>


	<div class="container">
		<div class="row">
			<div class="col-md-12 text-center">
				<h3 class="animate-charcter">TOGETHERISM</h3>
			</div>
		</div>
	</div>


</body>
</html>