<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 실패</title>
</head>
<body>
<c:if test="${result == -1}">
	<script>
		alert("계정이 존재하지 않습니다")
		history.go(-1);
	</script>
</c:if>
<c:if test="${result == 1}">
	<script>
		alert("계정 정보를 다시 입력해 주세요")
		history.go(-1);
	</script>
</c:if>
</body>
</html>