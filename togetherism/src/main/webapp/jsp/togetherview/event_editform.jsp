<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
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

</head>
<body>
	<form name="event_form"
		action="<%=request.getContextPath()%>/event_edit.do" method="post"
		enctype="multipart/form-data">
		<input type="hidden" value="${event.club_num}" name="club_num">
		<input type="hidden" value="${event.event_num}" name="event_num">
		<input type="hidden" value="${eventPage}" name="eventPage">
		<input type="hidden" value="x@g.com" name="club_host_email"> <!-- Merge 이후 넘어올 값 -->
		<input type="hidden" id="event_spot_lat" name="event_spot_lat" value="">
		<input type="hidden" id="event_spot_long" name="event_spot_long" value="">

		<!-- 맵이 표시될 위치 -->
		<div id="map" style="width: 500px; height: 400px;"></div>
		<p>
			<em>수정할 장소로 지도를 클릭해주세요!</em>
		</p>
		<div id="clickLatlng"></div>
		
		<!-- 맵 작업 코드 -->
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
mapOption = { 
    center: new kakao.maps.LatLng(${event.event_spot_lat}, ${event.event_spot_long}), // 지도의 중심좌표
    level: 3 // 지도의 확대 레벨
};

//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption);

//지도를 클릭한 위치에 표출할 마커입니다
var marker = new kakao.maps.Marker({
// 지도 중심좌표에 마커를 생성합니다
position : map.getCenter()
});
//지도에 마커를 표시합니다
marker.setMap(map);

//지도에 클릭 이벤트를 등록합니다
//지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
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
				<td><input type="text" name="event_title" value="${event.event_title}"></td>
			</tr>
			<tr>
				<td>이벤트 날짜 및 시간</td>
				변경전 날짜 : ${event.event_date}
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
			<option value="수도권">수도권</option>
			<option value="경상권">경상권</option>
			</select>
			<tr>
				<td>이벤트 설명</td>
				<td><textarea name="event_info">${event.event_info}</textarea></td>
			</tr>
			
			<tr>
				파일 수정하기 : 
				<td><input type="file" name="event_file0"></td>
				<c:if test="${not empty event.event_file}">
    			<c:set var="filename" value="${event.event_file}" />
				<c:set var="fileNm" value="${fn:toLowerCase(filename)}" />
				<c:forTokens var="token" items="${fileNm}" delims="."
    				varStatus="status">
    				<c:if test="${status.last }">
        				<c:choose>
            				<c:when test="${token eq 'jpg' }">
            					<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:when test="${token eq 'png'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;"alt="${event.event_file}"/>
            				</c:when>
            				<c:when test="${token eq 'gif'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:otherwise><%-- 첨부파일이 사진이 아닐떄 --%>
            					<img src="images/togetherimage.jpg" style="height:100px; weight:100px;" alt="defalutimage">
            					<a href="<%=request.getContextPath()%>/file_down.do?file_name=${event.event_file}">${event.event_file}</a>
            				</c:otherwise>
        				</c:choose>
        			</c:if>
				</c:forTokens>
				</c:if>
		<c:if test="${empty event.event_file}"> <%-- 첨부파일이 없을때 --%>
			<img src="images/togetherimage.jpg" style="height:100px; weight:100px;" alt="defalutimage">
			첨부파일이 없습니다!
		</c:if>
			</tr>
				
			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>

	</form>
</body>
</html>