<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 생성 폼</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c&libraries=services,clusterer,drawing"></script>
<script>

$(document).ready(function(){
	if(${club_region == 'Abroad'}){
		alert("해외 지역은 지도를 지원하지 않음을 유의해주세요");
		$("#event_region_abroad").attr("selected", "selected");
	}
});

</script>
</head>
<body>
<c:if test="${result == 2}">
<script>
alert("모임장만 이벤트를 등록할 수 있습니다");
history.go(-1);
</script>
</c:if>
<c:if test="${empty result}">
	<form name="event_form"
		action="<%=request.getContextPath()%>/event_create.do" method="post"
		enctype="multipart/form-data">
		<input type="hidden" value="${club_num}" name="club_num">  <!-- Merge 이후 넘어올 값 -->
		<input type="hidden" value="${club_host_email}" name="club_host_email"> <!-- Merge 이후 Controller 에서 구해서 넘어올 값 -->
		<input type="hidden" id="event_spot_lat" name="event_spot_lat" value="">
		<input type="hidden" id="event_spot_long" name="event_spot_long" value="">

		<!-- 맵이 표시될 위치 -->
		<div id="map" style="width: 500px; height: 400px;"></div>
		<p>
			<em class="hide">지도를 클릭해주세요!</em>
		</p>
		<div id="clickLatlng"></div>
		
		<!-- 맵 작업 코드 -->
		<script>
			if(${club_region == 'Seoul_Metropolitan'}){
				var lat = 37.569157545384996;
				var lng = 126.9773838190015;
			} else if(${club_region == 'Gangwon'}){
				var lat = 37.76217519573311;
				var lng = 128.29121162346573;
			} else if(${club_region == 'Gyeongsang'}){
				var lat = 35.98436267467598;
				var lng = 128.5326965564436;
			} else if(${club_region == 'Jeolla'}){
				var lat = 35.47254254265923;
				var lng = 127.20293009266267;
			} else if(${club_region == 'Chungcheong'}){
				var lat = 36.62537005034492;
				var lng = 127.46635571810502;
			} else if(${club_region == 'Jeju'}){
				var lat = 33.3868389158458;
				var lng = 126.54999615065364;
			} else if(${club_region == 'Abroad'}){
				var lat = 38.42987403306615;
				var lng = 129.3808605198872;
				
				// 해외인경우 지정된 위치를 저장
				document.getElementById('event_spot_lat').setAttribute('value',
						'38.42987403306615');
				document.getElementById('event_spot_long').setAttribute('value',
						'129.3808605198872');
			}

			var mapContainer = document.getElementById('map'), // 지도를 표시할 div
			mapOption = {
			center : new kakao.maps.LatLng(lat, lng), // 지도의
			// 중심좌표
				level : 9
			// 지도의 확대 레벨
			};

			var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

			// 지도를 클릭한 위치에 표출할 마커입니다
			var marker = new kakao.maps.Marker({
			// 지도 중심좌표에 마커를 생성합니다
			position : map.getCenter()
			});
			// 지도에 마커를 표시합니다
			marker.setMap(map);

			// 지도에 클릭 이벤트를 등록합니다
			// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
			kakao.maps.event.addListener(map, 'click', function(mouseEvent) {

			// 클릭한 위도, 경도 정보를 가져옵니다
			var latlng = mouseEvent.latLng;

			// 마커 위치를 클릭한 위치로 옮깁니다
			marker.setPosition(latlng);

			// 위경도를 화면에 표시만 하기
			var resultLat = document.getElementById('event_spot_lat0');
			var resultLng = document.getElementById('event_spot_long0');
			resultLat.innerHTML = latlng.getLat();
			resultLng.innerHTML = latlng.getLng();

			var lat_string = latlng.getLat().toString();
			var lng_string = latlng.getLng().toString();

			// 위경도를 hidden 값으로 넘기기
			document.getElementById('event_spot_lat').setAttribute('value',
					latlng.getLat().toString());
			document.getElementById('event_spot_long').setAttribute('value',
					latlng.getLng().toString());
	
	
		});
		</script>

		
		<table>
			<caption>이벤트 생성 폼</caption>
			<tr>
				<td>이벤트</td>
				<td><input type="text" name="event_title"></td>
			</tr>
			<tr>
				<td>이벤트 날짜 및 시간</td>
				<td><input type="date" name="event_date_date"></td>
				<td><input type="time" name="event_date_time"></td>
			</tr>

			<td>이벤트 장소 위도 경도</td>
			<td>
				<div id="event_spot_lat0"></div>
				<div id="event_spot_long0"></div>
			</td>

			<td>이벤트 지역</td>
			<select name="event_region">
			<option value="Seoul_Metropolitan">수도권</option>
			<option value="Gangwon">강원</option>
            <option value="Gyeongsang">경상</option>
            <option value="Jeolla">전라</option>
            <option value="Chungcheong">충청</option>
            <option value="Jeju">제주</option>
            <option value="Abroad" id="event_region_abroad">해외</option>
			</select>
			<tr>
				<td>이벤트 설명</td>
				<td><textarea name="event_info"></textarea></td>
			</tr>
			<tr>
				<td>이벤트 첨부파일 및 사진</td>
				<td><input type="file" name="event_file0"></td>
			</tr>

			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>

	</form>
</c:if>
</body>
</html>