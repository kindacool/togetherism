<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:if test="${result1 == 1}">
	<script>
		alert("참여 등록되었습니다.");
		location.href = "event_user_attend_check.do?event_num=${event_num}&club_num=${club_num}";
	</script>
</c:if>   

<c:if test="${result2 == 1}">
	<script>
		alert("참여 취소되었습니다.");
		location.href = "event_user_attend_check.do?event_num=${event_num}&club_num=${club_num}";
	</script>
</c:if>  