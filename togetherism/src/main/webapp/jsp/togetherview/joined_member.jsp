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
	<c:forEach var="m" items="${memberlist}">		

	<div class="container">
        <div class="card" style="width: 18rem;">
            <img class="card-img-top img-circle" src="<%=request.getContextPath() %>/upload/${m.member_image}"
                alt="Card image cap">
            <div class="card-body">
                <h5 class="card-title">
                    ${m.member_nickname}
                  </h5>
                <p class="card-text">
                    ${m.join_hello}
                 </p>
 
            </div>
        </div>
    </div>
	</c:forEach>
</body>
</html>