<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">	
$(function(){
	$("#test").load("header_member.do");
});

</script>
</head>
<body>

<c:if test="${sessionScope.email == null }">  
	<img src="<%=request.getContextPath() %>/upload/not_login.png" height="100" width="100" /><br>
</c:if>

<c:if test="${sessionScope.email != null }">


	<div id="test"></div>
 
</c:if>




</body>
</html>