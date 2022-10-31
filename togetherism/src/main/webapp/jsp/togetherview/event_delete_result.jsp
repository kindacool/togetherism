<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:if test="${result == 1}">
<script>
	alert("삭제 성공했습니다.");
	location.href="event_list.do?eventPage=${eventPage}&club_num=${club_num}";
</script>
</c:if>
<c:if test="${result != 1}">
<script>
	alert("삭제 실패했습니다.");
	history.go(-1);
</script>
</c:if>
</body>
</html>