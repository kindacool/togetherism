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

<script>
$(document).ready(function(){
	if(${event.event_region == 'Abroad'}){
		$('#map').hide();
		alert("해외 지역 이벤트는 지도를 지원하지 않음을 유의해주세요");
	}
});

function delete_ok() {
    if (!confirm("정말 삭제하시겠습니까")) {
    } else {
        location.href="<%=request.getContextPath()%>/event_cont.do?club_num=${club_num}&event_num=${event.event_num}&eventPage=${eventPage}&state=del";
    }
}
function edit_ok(){
    if (!confirm("수정하시겠습니까")) {
    } else {
        location.href="<%=request.getContextPath()%>/event_cont.do?club_num=${club_num}&event_num=${event.event_num}&eventPage=${eventPage}&state=edit";
    }
}

</script>

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
				<td><fmt:formatDate value="${event.event_date}" pattern="YYYY년  M월 d일 HH:mm"/> </td>
			</tr>
			<tr>
				<td>이벤트 지역</td>
				<td>
		<c:choose>
        	<c:when test="${event.event_region == 'Seoul_Metropolitan'}">수도권</c:when>
        	<c:when test="${event.event_region == 'Gangwon'}">강원</c:when>
        	<c:when test="${event.event_region == 'Gyeongsang'}">경상</c:when>
        	<c:when test="${event.event_region == 'Jeolla'}">전라</c:when>
        	<c:when test="${event.event_region == 'Chungcheong'}">충청</c:when>
        	<c:when test="${event.event_region == 'Jeju'}">제주</c:when>
        	<c:when test="${event.event_region == 'Abroad'}">해외</c:when>
        </c:choose>
				</td>
			</tr>
			<tr>
				<td>이벤트 설명</td>
				<td>${eventInfobr}</td>
			</tr>
			<tr>
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
            				<c:when test="${token eq 'jfif'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:when test="${token eq 'gif'}">
            						<img src="<%=request.getContextPath() %>/upload/${event.event_file}" style="height:100px; weight:100px;" alt="${event.event_file}"/>
            				</c:when>
            				<c:otherwise>
            					<img src="<%=request.getContextPath()%>/images/togetherimage.jpg" style="height:100px; weight:100px;" alt="defalutimage">
            					<a href="<%=request.getContextPath()%>/file_down.do?file_name=${event.event_file}">${event.event_file}</a>
            				</c:otherwise>
        				</c:choose>
        			</c:if>
				</c:forTokens>
				</c:if>
	<c:if test="${empty event.event_file}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			첨부파일이 없습니다
		</div>
	</c:if>
			</tr>
</table>

<!-- 하단 버튼 -->
<c:if test="${club_num != 0}">
<c:if test="${club_host_yn eq 'Y'}"> <%-- 모임장인 경우만 수정, 삭제 버튼이 보인다 --%>
<button onclick="edit_ok()">수정</button>
<button onclick="delete_ok()">삭제</button>
</c:if>
<input type="button" value="해당 모임의 이벤트 목록"
		onclick="location='event_list.do?club_num=${club_num}&eventPage=${eventPage}'" />
</c:if>
<c:if test="${club_num == 0}">
<a href="<%=request.getContextPath()%>/club_ct.do?club_num=${event.club_num}">해당 모임에 가입하기</a>
</c:if>

</body>
</html>