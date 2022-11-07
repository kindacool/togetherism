<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 참석 버튼</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>

<c:if test="${result == -1}">
	이벤트 참석을 희망하실 경우, 모임 가입 후 이벤트 참석이 가능합니다.
<%--  	<input type="button" value="모임가입" 
 	onclick="location='<%=request.getContextPath()%>/event_user_attend_ok.do?event_num=${event_num }'"/> --%>
 	<input type="button" value="모임가입"/>
</c:if>


<c:if test="${result == 0}"> 
 	<input type="button" value="참석하기" 
 	onclick="location='<%=request.getContextPath()%>/event_user_attend_ok.do?event_num=${event_num }&club_num=${club_num}'"/>
</c:if>

<c:if test="${result == 1}">
	<input type="button" value="참석취소"
	onclick="location='<%=request.getContextPath()%>/event_user_attend_no.do?event_num=${event_num }&club_num=${club_num}'"/>
</c:if> 

</body>
</html>