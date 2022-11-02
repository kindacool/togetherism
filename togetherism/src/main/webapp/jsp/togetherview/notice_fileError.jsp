<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

<c:if test="${ resultFile == 1 }">
<script>
	alert('파일 크기가 지정된 용량을 초과했습니다');
	history.go(-1);
</script>
</c:if>

<c:if test="${resultFile == 2 }">
<script>
	alert('지정된 형식의 확장자가 아닙니다');
	history.go(-1);
</script>
</c:if>

</body>
</html>