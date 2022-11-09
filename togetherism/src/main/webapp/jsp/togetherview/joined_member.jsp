<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="<%=request.getContextPath()%>/css/clubmember_list.css" rel="stylesheet" type="text/css" />
</head>
<body>
<c:if test="${result == 2}">
		<div class="alert alert-warning" role="alert" style="width: 640px;">
 			현재 이 모임에 가입된 회원이 없습니다!
		</div>
</c:if>
<c:if test="${empty result}">
	<c:forEach var="m" items="${cmilist}">		

	<div class="container">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top img-circle" src="<%=request.getContextPath() %>/upload/${m.member_image}"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">
                    <c:if test="${m.club_host_yn eq 'Y'}"><img src="<%=request.getContextPath()%>/images/crown.png" style="width:20px;height:20px" alt="모임장"></c:if>${m.member_nickname}
                  </h5> 
            </div>
            <p>
            ${m.join_hello}
            </p>
        </div>
    </div>
	</c:forEach>
</c:if>
</body>
</html>