<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모임 상세 페이지</title>
</head>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c&libraries=services,clusterer,drawing"></script>

<script>
$(document).ready(function(){
 //버튼 클릭시 ajax 실행  

 	// 초기상태
 	$('#container').html("${clubInfobr}");
 	if(${club.club_region == 'Abroad'}){
		$(".hide").hide();
 	} else if(${empty eventlist}){
 		$(".hide").hide();
 	}
 
	// 모임내 이벤트 리스트
	$("#event_list").click(function(){
		$('#container').load('<%=request.getContextPath()%>/event_list.do?club_num=${club.club_num}&preview=Y'); // 나중엔 모임번호는 리스트에서 넘어옴, 지금은 임의로 2 로 설정
		$(".hide").hide();
	});
	
	// 가입된 회원
	$("#join_member").click(function(){
		$('#container').load('<%=request.getContextPath()%>/club_member.do?club_num=${club.club_num}'); // 나중엔 모임번호는 리스트에서 넘어옴, 지금은 임의로 22 로 설정
		$(".hide").hide();
	});
	// 모임 상세 정보
	$("#club_info").click(function(){
		$('#container').html("${clubInfobr}");

	 	if(${club.club_region == 'Abroad'}){
			$(".hide").hide();
	 	} else{
			$(".hide").show();
	 	}
	});
	
	// 사진첩
	$("#photo_board").click(function(){
		$('#container').load('<%=request.getContextPath()%>/photo_list.do?club_num=${club.club_num}');
		$('#map').hide();
		$(".hide").hide();
	});

});

</script>
<body>
<table>
	<tr>
		<td>모임명</td>
		<td>${club.club_name}</td>
	</tr>
	<tr>
		<td>모임장 이메일</td>
		<td>${club.club_host_email}</td>
	</tr>
	<tr>
		<td>모임장 이름</td>
		<td>${memberdto.member_nickname}</td>
	</tr>
	<tr>
		<td>모임장 사진</td>
		<td>
	<img src="<%=request.getContextPath() %>/upload/${memberdto.member_image}" style="height:100px; weight:100px;" alt="${memberdto.member_image}"/>
		</td>
	</tr>
	<tr>
		<td>클럽 간단 소개</td>
		<td>${club.club_keyword}</td>
	</tr>
	<tr>
				<td>이벤트 지역</td>
				<td>
		<c:choose>
        	<c:when test="${club.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
        	<c:when test="${club.club_region == 'Gangwon'}">강원</c:when>
        	<c:when test="${club.club_region == 'Gyeongsang'}">경상</c:when>
        	<c:when test="${club.club_region == 'Jeolla'}">전라</c:when>
        	<c:when test="${club.club_region == 'Chungcheong'}">충청</c:when>
        	<c:when test="${club.club_region == 'Jeju'}">제주</c:when>
        	<c:when test="${club.club_region == 'Abroad'}">해외</c:when>
        </c:choose>
				</td>
	</tr>
	<tr>
		<td>관심사</td>
		<td>${club.club_interest}</td>
	</tr>
	<tr>
		<td>정원</td>
		<td>${club.club_member_limit}</td>
	</tr>
	<tr>
		<td>가입자수</td>
		<td>${club.club_member_count}</td>
	</tr>
	<tr>
		<td>카톡주소</td>
		<td>${club.club_chat}</td>
	</tr>
	<tr>
		<td>이미지</td>
		<img src="<%=request.getContextPath()%>/upload/${club.club_image}" style="height:100px; weight:100px;" alt="${club.club_image}"/>
	</tr>
</table>
<button type="button" class="btn btn-primary" id="club_info">상세정보</button>
<button type="button" class="btn btn-primary" id="event_list">이벤트(정모)</button>
<button type="button" class="btn btn-primary" id="join_member">가입된 회원</button>
<button type="button" class="btn btn-primary" id="photo_board">사진첩</button>

<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal" data-bs-whatever="@mdo">JOIN NOW</button>
<form action="<%=request.getContextPath()%>/club_join.do" method="get">
<input type="hidden" name="club_num" value="${club.club_num}"> <!-- 임의로 22로지정 -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">모임 가입하기</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <form>
          <div class="mb-3"> <!-- 이후 유효성검사 -->
            <label for="recipient-name" class="col-form-label">가입인사:</label>
            <input type="text" class="form-control" name="join_hello" id="recipient-name">
          </div>
        </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">취소하기</button>
        <button type="submit" class="btn btn-primary">가입하기</button>
      </div>
    </div>
  </div>
</div>
</form>

<div id="container"></div>

<h4 class="hide">이벤트 장소</h4>

<!-- 맵이 표시될 위치 -->
<div id="map" class="hide" style="width: 500px; height: 400px;"></div>

<c:if test="${empty eventlist}">
<div class="alert alert-warning hide" role="alert" style="width: 640px;">
 	현재 이 모임에 등록된 이벤트(정모)가 없습니다
</div>
</c:if>
<!-- 맵 작업 코드 -->
<script>

<c:if test="${not empty eventlist}">
var count = 0;
var sum_event_spot_lat = 0
var sum_event_spot_long = 0
<c:forEach items="${eventlist}" var="event">
var sum_event_spot_lat = sum_event_spot_lat + ${event.event_spot_lat};
var sum_event_spot_long = sum_event_spot_long + ${event.event_spot_long};
var count = count + 1;
</c:forEach>
var avg_event_spot_lat = sum_event_spot_lat / count;
var avg_event_spot_long = sum_event_spot_long / count;
console.log(avg_event_spot_lat);
console.log(avg_event_spot_long);
</c:if>
<c:if test="${empty eventlist}">
var avg_event_spot_lat = 38.439801;
var avg_event_spot_long = 127.127730;
</c:if>

var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
		
    center: new kakao.maps.LatLng(avg_event_spot_lat, avg_event_spot_long), // 지도의 중심좌표
    level: 7 // 지도의 확대 레벨
	
	
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

//마커를 표시할 위치와 title 객체 배열입니다 
var positions = [
	<c:forEach items="${eventlist}" var="event">
    {
        title: '${event.event_title}', 
        latlng: new kakao.maps.LatLng(${event.event_spot_lat}, ${event.event_spot_long})
    },
    </c:forEach>
];

//마커 이미지의 이미지 주소입니다
var imageSrc = "https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/markerStar.png"; 
    
for (var i = 0; i < positions.length; i ++) {
    
    // 마커 이미지의 이미지 크기 입니다
    var imageSize = new kakao.maps.Size(24, 35); 
    
    // 마커 이미지를 생성합니다    
    var markerImage = new kakao.maps.MarkerImage(imageSrc, imageSize); 
    
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({
        map: map, // 마커를 표시할 지도
        position: positions[i].latlng, // 마커를 표시할 위치
        title : positions[i].title, // 마커의 타이틀, 마커에 마우스를 올리면 타이틀이 표시됩니다
        image : markerImage // 마커 이미지 
    });
}
</script>

</body>
</html>