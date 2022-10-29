<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 목록</title>
<link href="../../css/hidden_text.css" rel="stylesheet" type="text/css">
</head>
<body>

<c:if test="${club_num == 0}"> <!-- 모임 내에서 이벤트를 볼때는 검색창 없음 -->
<form action="<%=request.getContextPath()%>/event_list.do" method="get">
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>
</c:if>

<c:if test="${empty eventlist}">
	<c:if test="${club_num != 0}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			현재 이 모임에 생성된 이벤트가 없습니다! <a href="#" class="alert-link">만들러가기</a>
		</div>
	</c:if>
	<c:if test="${not empty keyword}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			검색된 이벤트가 없습니다! <a href="#" class="alert-link">만들러가기</a>
		</div>
	</c:if>
</c:if>

<c:if test="${not empty eventlist}">
<c:set var="no1" value="${no}"></c:set><!-- 화면출력번호 -->
<c:forEach var="i" items="${eventlist}">
<div class="card mb-3 border-warning" style="width: 640px; height: 200px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    	<img src="images/togetherimage.jpg" class="card-img" alt="defalutimage">
    </div><!-- 파일 확장자가 jpg,png같은걸로 끝나면 사진 표시, 아니면 기본사진 표시 -->
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title" style="overflow: hidden; text-overflow: ellipsis; white-space:nowrap; word-break:break-all;">${no1}번 ${i.event_title}</h5>
        <p class="card-text" style="overflow: hidden; text-overflow: ellipsis; white-space:nowrap; word-break:break-all;">${i.event_info}dddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddddd</p>
        <p class="card-text">${i.event_region}</p>
        <p class="card-text"><fmt:formatDate value="${i.event_date}" pattern="yy/MM/dd HH:mm"/></p>
        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
      </div>
    </div>
  </div>
</div>
<c:set var="no1" value="${no1 - 1}"/>
</c:forEach>
</c:if>
</body>
</html>