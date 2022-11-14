<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/hidden_text.css" rel="stylesheet" type="text/css" />
</head>
<body>

<%-- 핫 --%>
<c:if test="${preview == 'hot'}">
<%-- 리스트 출력 --%>
<c:if test="${not empty clubprelist}">
<c:forEach var="i" items="${clubprelist}"> 
<div class="card mb-3 border-warning" style="width: 800px; height: 250px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <img src="<%=request.getContextPath() %>/upload/${i.club_image}" class="card-img" style="width:100%; height:100%" alt="${i.club_image}"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title hidden"><a href="<%=request.getContextPath()%>/club_ct.do?club_num=${i.club_num}">${i.club_name}</a></h5>
        <p class="card-text hidden">${i.club_info}</p>
        <p class="card-text">
        <c:choose>
        	<c:when test="${i.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
        	<c:when test="${i.club_region == 'Gangwon'}">강원</c:when>
        	<c:when test="${i.club_region == 'Gyeongsang'}">경상</c:when>
        	<c:when test="${i.club_region == 'Jeolla'}">전라</c:when>
        	<c:when test="${i.club_region == 'Chungcheong'}">충청</c:when>
        	<c:when test="${i.club_region == 'Jeju'}">제주</c:when>
        	<c:when test="${i.club_region == 'Abroad'}">해외</c:when>
        </c:choose>
        </p>
        <p class="card-text">${i.club_member_count} 명 / ${i.club_member_limit} 명</p>
        <!-- <p class="card-text"><small class="text-muted">${i.club_reg_date}</small></p>  -->
      </div>
    </div>
  </div>
</div>
</c:forEach>
</c:if>
</c:if>

<%-- 뉴 --%>
<c:if test="${preview == 'new'}">
<%-- 리스트 출력 --%>
<c:if test="${not empty clubprelist}">
<c:forEach var="i" items="${clubprelist}"> 
<div class="card mb-3 border-warning" style="width: 800px; height: 250px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <img src="<%=request.getContextPath() %>/upload/${i.club_image}" class="card-img" style="width:100%; height:100%" alt="${i.club_image}"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title hidden"><a href="<%=request.getContextPath()%>/club_ct.do?club_num=${i.club_num}">${i.club_name}</a></h5>
        <p class="card-text hidden">${i.club_info}</p>
        <p class="card-text">
        <c:choose>
        	<c:when test="${i.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
        	<c:when test="${i.club_region == 'Gangwon'}">강원</c:when>
        	<c:when test="${i.club_region == 'Gyeongsang'}">경상</c:when>
        	<c:when test="${i.club_region == 'Jeolla'}">전라</c:when>
        	<c:when test="${i.club_region == 'Chungcheong'}">충청</c:when>
        	<c:when test="${i.club_region == 'Jeju'}">제주</c:when>
        	<c:when test="${i.club_region == 'Abroad'}">해외</c:when>
        </c:choose>
        </p>
        <p class="card-text">${i.club_member_count} 명 / ${i.club_member_limit} 명</p>
        <!-- <p class="card-text"><small class="text-muted">${i.club_reg_date}</small></p>  -->
      </div>
    </div>
  </div>
</div>
</c:forEach>
</c:if>
</c:if>

<c:if test="${preview == 'pre'}">
<a href="<%=request.getContextPath()%>/club_list.do">더보기</a>
<%-- 미리보기 리스트 출력 --%>
<c:if test="${not empty clubprelist}">
<c:forEach var="i" items="${clubprelist}"> 
<div class="card mb-3 border-warning" style="width: 800px; height: 250px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <img src="<%=request.getContextPath() %>/upload/${i.club_image}" class="card-img" style="width:100%; height:100%" alt="${i.club_image}"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title hidden"><a href="<%=request.getContextPath()%>/club_ct.do?club_num=${i.club_num}">${i.club_name}</a></h5>
        <p class="card-text hidden">${i.club_info}</p>
        <p class="card-text">
        <c:choose>
        	<c:when test="${i.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
        	<c:when test="${i.club_region == 'Gangwon'}">강원</c:when>
        	<c:when test="${i.club_region == 'Gyeongsang'}">경상</c:when>
        	<c:when test="${i.club_region == 'Jeolla'}">전라</c:when>
        	<c:when test="${i.club_region == 'Chungcheong'}">충청</c:when>
        	<c:when test="${i.club_region == 'Jeju'}">제주</c:when>
        	<c:when test="${i.club_region == 'Abroad'}">해외</c:when>
        </c:choose>
        </p>
        <p class="card-text">${i.club_member_count} 명 / ${i.club_member_limit} 명</p>
        <!-- <p class="card-text"><small class="text-muted">${i.club_reg_date}</small></p>  -->
      </div>
    </div>
  </div>
</div>
</c:forEach>
</c:if>
</c:if>


</body>
</html>