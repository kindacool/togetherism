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

<!-- 검색창 -->
<form action="<%=request.getContextPath()%>/club_list.do" method="get">
	<input type="text" name="keyword">
	<input type="submit" value="검색">
</form>

<%-- 검색 결과 페이지 일떄--%>
<c:choose>
<c:when test="${not empty keyword}">
<h5>${keyword} 모임 검색 결과</h5>
<a href="<%=request.getContextPath()%>/club_list.do?keyword=${keyword}">Groups</a>
<a href="<%=request.getContextPath()%>/event_list.do?keyword=${keyword}">Events</a>
<a href="#">모임 만들기</a>
</c:when>
<%-- 특정 지역 모임 페이지 일때 --%>
<c:when test="${not empty club_region}">
   <c:choose>
     <c:when test="${club_region == 'Seoul_Metropolitan'}"><h5>수도권 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Gangwon'}"><h5>강원 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Gyeongsang'}"><h5>경상 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Jeolla'}"><h5>전라 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Chungcheong'}"><h5>충청 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Jeju'}"><h5>제주 지역 모임</h5></c:when>
     <c:when test="${club_region == 'Abroad'}"><h5>해외 지역 모임</h5></c:when>
    </c:choose>
<a href="<%=request.getContextPath()%>/club_list.do?club_region=${club_region}">Groups</a>
<a href="<%=request.getContextPath()%>/event_list.do?event_region=${event_region}">Events</a>
<a href="#">모임 만들기</a>
</c:when>	
<%-- 전체 목록의 페이지 일때 --%>
<c:otherwise>
<h5>전체 모임 보기</h5>
<a href="<%=request.getContextPath()%>/club_list.do">Groups</a>
<a href="<%=request.getContextPath()%>/event_list.do">Events</a>
<a href="#">모임 만들기</a>
</c:otherwise>
</c:choose>


<!-- 모임이 없을때 처리 -->
<c:if test="${empty clublist}">
 	<c:choose>
	<c:when test="${not empty keyword}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			검색된 모임이 없습니다! <a href="#" class="alert-link">만들러가기</a>
		</div>
	</c:when>
	<c:when test="${not empty club_region}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			해당 지역에 모임이 없습니다! <a href="#" class="alert-link">만들러가기</a>
		</div>
	</c:when>
	<c:otherwise>
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			모임이 없습니다! <a href="#" class="alert-link">만들러가기</a>
		</div>
	</c:otherwise>
	</c:choose>
</c:if>
<%-- 리스트 출력 --%>
<c:if test="${not empty clublist}">
<c:set var="no1" value="${no}"></c:set><!-- 화면출력번호 -->
<c:forEach var="i" items="${clublist}"> 
<div class="card mb-3 border-warning" style="width: 640px; height: 200px;">
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
<c:set var="no1" value="${no1 - 1}"/>
</c:forEach>
</c:if>

<%-- 페이징 처리 시작--%>
<nav aria-label="Page navigation example">
  <ul class="pagination">
<%-- 검색 결과 페이지  페이징 처리 --%>
<c:choose>
<c:when test="${not empty keyword}">
	<c:if test="${pp.startPage > pp.pagePerBlk}"> <%-- 첫 페이지가 아닐 때 이전버튼 출력 --%>
	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.startPage - 1}&keyword=${keyword}">Previous</a></li>
	</c:if>
		<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
			<c:if test="${pp.page == i}">
			<li class="page-item active" aria-current="page"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}&keyword=${keyword}">${i}</a></li>
			</c:if>
			<c:if test="${pp.page != i}">
			<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}&keyword=${keyword}">${i}</a></li>
			</c:if>
		</c:forEach>
	<c:if test="${pp.endPage < pp.totalPage}"> <%-- 끝 페이지가 아닐때 다음버튼 출력 --%>
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.endPage + 1}&keyword=${keyword}">Next</a></li>
	</c:if>
</c:when>
<%-- 특정 지역 클릭시 이벤트 페이지 페이징 처리 --%>
<c:when test="${not empty club_region}">
	<c:if test="${pp.startPage > pp.pagePerBlk}"> <%-- 첫 페이지가 아닐 때 이전버튼 출력 --%>
	<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.startPage - 1}&club_region=${club_region}">Previous</a></li>
	</c:if>
		<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
			<c:if test="${pp.page == i}">
			<li class="page-item active" aria-current="page"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}&club_region=${club_region}">${i}</a></li>
			</c:if>
			<c:if test="${pp.page != i}">
			<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}&club_region=${club_region}">${i}</a></li>
			</c:if>
		</c:forEach>
	<c:if test="${pp.endPage < pp.totalPage}"> <%-- 끝 페이지가 아닐때 다음버튼 출력 --%>
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.endPage + 1}&club_region=${club_region}">Next</a></li>
	</c:if>
</c:when>		
<%-- 전체 목록의 페이징 처리 --%>
<c:otherwise>
	<c:if test="${pp.startPage > pp.pagePerBlk }">
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.startPage - 1}">Previous</a></li>
	</c:if>
	<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
		<c:if test="${pp.page == i}">
		<li class="page-item active" aria-current="page"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}">${i}</a></li>
		</c:if>
		<c:if test="${pp.page != i}">
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${i}">${i}</a></li>
		</c:if>
	</c:forEach>
		<c:if test="${pp.endPage < pp.totalPage}">
			<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/club_list.do?clubPage=${pp.endPage + 1}">Next</a></li>
		</c:if>
</c:otherwise>
</c:choose>
</ul>
</nav>
</body>
</html>