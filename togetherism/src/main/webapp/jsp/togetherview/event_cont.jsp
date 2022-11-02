<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c"></script>
<!-- services와 clusterer, drawing 라이브러리 불러오기 -->
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=44a98d8b63fb071cda538e0fedd4970c&libraries=services,clusterer,drawing"></script>

<title>Insert title here</title>
</head>
<body>
<!-- 맵이 표시될 위치 -->
<div id="map" style="width: 500px; height: 400px;"></div>
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
</script>
<table>
			<tr>
				<td>이벤트</td>
				<td>${event.event_title}</td>
			</tr>
			<tr>
				<td>이벤트 날짜 및 시간</td>
				<td>${event.event_date}</td>
			</tr>
			<tr>
				<td>이벤트 지역</td>
				<td>${event.event_region}</td>
			</tr>
			<tr>
				<td>이벤트 설명</td>
				<td>${eventInfobr}</td>
			</tr>
			<tr>
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
            				<c:when test="${token eq 'jifi'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:when test="${token eq 'gif'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:otherwise>
            					<img src="images/togetherimage.jpg" style="height:100px; weight:100px;" alt="defalutimage">
            					<a href="<%=request.getContextPath()%>/file_down.do?file_name=${event.event_file}">${event.event_file}</a>
            				</c:otherwise>
        				</c:choose>
        			</c:if>
				</c:forTokens>
				</c:if>
	<c:if test="${empty event.event_file}">
		<img src="<%=request.getContextPath()%>/images/togetherimage.jpg" style="height:100px; weight:100px;" alt="defalutimage">
		첨부파일이 없습니다!
	</c:if>
			</tr>
</table>

<!-- 하단 버튼 -->
<c:if test="${club_num != 0}">
<!-- 수정, 삭제시 세션값을 구해서, 그 세션값으로 모임-가입 테이블 검색 후 그게 모임장인 경우에만 가능하도록 추후 수정 -->
<input type="button" value="수정" 
		onclick="location='event_cont.do?club_num=${club_num}&event_num=${event.event_num}&eventPage=${eventPage}&state=edit'" />
<input type="button" value="삭제"
		onclick="location='event_cont.do?club_num=${club_num}&event_num=${event.event_num}&eventPage=${eventPage}&state=del'" />
<input type="button" value="해당 모임의 이벤트 목록"
		onclick="location='event_list.do?club_num=${club_num}&eventPage=${eventPage}'" />
</c:if>
<c:if test="${club_num == 0}">
<a href="<%=request.getContextPath()%>/club_ct.do?club_num=${event.club_num}">해당 모임에 가입하기</a>
</c:if>

</body>
</html>