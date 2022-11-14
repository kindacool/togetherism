<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 가입한 모임 목록</title>
<link href="<%=request.getContextPath()%>/css/hidden_text.css" rel="stylesheet" type="text/css" />
<script>
function leave(club_num){
    if (!confirm("탈퇴하시겠습니까")) {
    } else {
    	location.href="<%=request.getContextPath()%>/leave_club.do?club_num=" + club_num;
    }
}
</script>
</head>

<body>

<c:if test="${empty joinedClubList}">
	<div class="alert alert-warning" role="alert" style="width: 800px;">
 		현재 가입된 모임이 없습니다! <a href="<%=request.getContextPath()%>/club_list.do" class="alert-link">가입하러 가기</a>
	</div>
</c:if>
<%-- 리스트 출력 --%>
<c:if test="${not empty joinedClubList}">
<c:set var="no1" value="${no}"></c:set><!-- 화면출력번호 -->
<c:forEach var="i" items="${joinedClubList}"> 
<div class="card mb-3 border-warning" style="width: 800px; height: 250px;">
  <div class="row no-gutters">
    <div class="col-md-4">
    <img src="<%=request.getContextPath() %>/upload/${i.club_image}" class="card-img" style="width:100%; height:100%" alt="${i.club_image}"/>
    </div>
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title hidden"><a href="<%=request.getContextPath()%>/club_ct.do?club_num=${i.club_num}">${i.club_name}</a></h5>
        <p class="card-text hidden">${i.club_info}</p>
        <p class="card-text"><a href="javascript:void(0);" onClick="leave(${i.club_num});">탈퇴</a></p>
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
 <%-- 전체 목록의 페이징 처리 --%>

	<c:if test="${pp.startPage > pp.pagePerBlk }">
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/joined_club.do?joinedClubPage=${pp.startPage - 1}">Previous</a></li>
	</c:if>
	<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
		<c:if test="${pp.page == i}">
		<li class="page-item active" aria-current="page"><a class="page-link" href="<%=request.getContextPath()%>/joined_club.do?joinedClubPage=${i}">${i}</a></li>
		</c:if>
		<c:if test="${pp.page != i}">
		<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/joined_club.do?joinedClubPage=${i}">${i}</a></li>
		</c:if>
	</c:forEach>
		<c:if test="${pp.endPage < pp.totalPage}">
			<li class="page-item"><a class="page-link" href="<%=request.getContextPath()%>/joined_club.do?joinedClubPage=${pp.endPage + 1}">Next</a></li>
		</c:if>
</ul>
</nav>

</body>
</html>