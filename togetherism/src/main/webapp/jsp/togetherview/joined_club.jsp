<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/headerlib.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result == 2 }">
alert("가입된 모임이 없습니다");
history.go(-1);
</c:if>
<c:if test="${empty result}">
<c:forEach items="${clist}" var="c">
${c.club_image}<br>
${c.club_name}<br>
${c.club_member_count}<br>
${c.club_region}<br>
</c:forEach>
</c:if>
</body>
</html>