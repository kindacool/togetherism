<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<img src="<%=request.getContextPath() %>/upload/${header_result.member_image}" width="60" height="60" style="border-radius: 50%;" />

</body>
</html>