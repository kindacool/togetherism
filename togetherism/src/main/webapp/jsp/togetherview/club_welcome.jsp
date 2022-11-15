<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<body>

	<c:if test="${result1 == 1 }">
		<script>
			alert("모임 수정이 완료되었습니다.");
			location.href = "<%=request.getContextPath()%>/my_club.do";
		</script>
	</c:if>

	<script>
		function club_delete_popup(club_num) {
			var url = "club_delete.do?club_num=" + club_num;
			var name = "club_delete";
			var option = "width=600, height=600, left=100, top=50, location=no";

			window.open(url, name, option);

		}
	</script>
<body>


	<%-- 
<input onClick="club_delete_popup(${club_num});" type="button" value="모임삭제"> --%>

</body>
</html>