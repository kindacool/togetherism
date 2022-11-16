<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="icon" href="<%=request.getContextPath()%>/images/favicon.ico" />
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%-- <c:set var="path" value="${pageContext.request.contextPath }" /> --%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.min.js" integrity="sha384-IDwe1+LCz02ROU9k972gdyvl+AESN10+x7tBKgc9I5HFtuNz0wWnPclzo6p9vxnk" crossorigin="anonymous"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js" integrity="sha384-oBqDVmMz9ATKxIep9tiCxS/Z9fNfEXiDAYTujMAeBAsjFuCZSmKbSSUnQlmh/jp3" crossorigin="anonymous"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>

<style>
.center {
	text-align: center;
	align-items: center;
	display: flex;
	justify-content: center;
}
  .wrapper {
        display: flex;
        justify-content: center;
        align-items: center;
      }
      .content {
        padding: 1rem;
        }


@import
	url("https://fonts.googleapis.com/css2?family=Lato:wght@300;400;700&family=Roboto+Flex:opsz,wght@8..144,600;8..144,900&family=Roboto+Serif:opsz,wght@8..144,600;8..144,700&display=swap")
	;

@import
	url('https://fonts.googleapis.com/css2?family=Gowun+Batang:wght@400;700&display=swap')
	;
/* body {
  min-height: 100vh;
  display: grid;
  place-content: center;
  text-align: center;
  margin: 0 1.125rem;
  background-color: #f3f4f6;
} */
* {
	
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
	animation: type 3s steps(45) 1s forwards infinite, blink 0.5s steps(1)
		infinite;
}

.title2 {
	font-size: clamp(1rem, 1vw + 1rem, 1.5rem);
	color: #475569;
}

@
keyframes type {to { width:22ch;
	
}

}
@
keyframes blink { 0%, 100% {
	border-color: transparent;
}
50%
{
border-color
:
 
black
;

  
}
}
</style>
<script>
$(document).ready(function(){
   $('#hot').load('<%=request.getContextPath()%>/club_pre_list.do?preview=hot');
   $('#new').load('<%=request.getContextPath()%>/club_pre_list.do?preview=new');
   $('#pre').load('<%=request.getContextPath()%>
	/club_pre_list.do?preview=pre');
					});
</script>
</head>
<jsp:include page="../include/header.jsp"></jsp:include><br>
<br>
<br>
<br>
<br>
<body>
	<div class="wrapper">
		<div class="content">
			<div id="all" style="width: 1000px; height: 3200px;">
				<br>
				<br>
				<br>
				<div class="center">
					<section id="togetherism" class="p-5">
						<p class="movingtitle">누구나, 언제나, 어디서나,</p>
						<h1 class="statictitle">Togetherism</h1>
						<p class="lead text-center text-black mb-5"></p>

						<hr class="order-2 m-0 w-auto" style="color: #C8C8DC; width: 80%;"></hr>
						<p class="lead text-center mb-5"></p>
						<!-- <div class="lead text-center" text-align="center" id="ourservice">
							TOGETHERISM 은 온라인을 통해 인접 지역 사람들과 소통하고 만남으로 이어지는 <br> <strong>'오프라인
								중심'</strong> 모임 플랫폼 입니다. <br> 인접 지역을 중심으로 개인이 원하는 모임을 찾아 가입해 활동할 수도 있고,<br>
							직접 모임을 만들어 운영할 수도 있습니다.<br>
							<strong>누구나, 언제나, 어디서나</strong>
							<br> 우리는 친구가 될 수 있습니다. <br>그리고 서로의 관심사와 취향을
							알아갈 수 있습니다.<br>
							<br> 매일 다양하게 열리는 이벤트들을 통해 취미 생활을 공유할 수도 있고,<br> 서로 다른 생각을 공유할 수 도 있습니다.<br>
							<strong>자, 이제 시작해 볼까요?</strong>
						</div> -->
						<p class="lead text-center text-black mb-5"></p>
						<br>
						<button onclick="location='<%=request.getContextPath()%>/club.do'"
							class="btn btn-warning center"
							style="width: 400px; height: 50px; border-radius: 20px; font-size: 20px; color: white">지금
							모임 만들기</button>
					</section>
				</div>
				<br>
				<br>
				<br>
				<div style="font-size: 30px;">
					<img src="<%=request.getContextPath()%>/images/fire.png"
						style="width: 35px; height: 35px;"> &nbsp;HOT
				</div>
				<br>
				<div id="hot" class="center"
					style="border: 6px solid #ffc107; height: 380px;"></div>
				<br>
				<br>

				<div style="font-size: 30px;">
					<img src="<%=request.getContextPath()%>/images/diamond.png"
						style="width: 35px; height: 35px;"> &nbsp;NEW
				</div>
				<br>
				<div id="new" class="center"
					style="border: 6px solid #ffc107; height: 400px;"></div>
				<br>
				<br>
				<h2>마감임박 모임</h2>
				<br>
				<div id="pre" style="border: 6px solid #ffc107; height: 1000px;"></div>
			</div>
		</div>
	</div>
</body>
<br>
<br>
<br>
<br>
<br>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>