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
<c:if test="${result == 1}">
<script>
	alert("사진 삭제 성공");
	location.href="<%=request.getContextPath()%>/club_ct.do?club_num=${club_num}";
</script>
</c:if>
<c:if test="${result == 2}">
<script>
	alert("본인이 올린 사진만 삭제 가능합니다");
	history.go(-1);
</script>
</c:if>
<c:if test="${result == 3}">
<script>
	alert("삭제에 실패했습니다");
	history.go(-1);
</script>
</c:if>
</body>
</html>