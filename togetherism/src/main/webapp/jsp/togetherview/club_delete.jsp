<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript" src="<%=request.getContextPath()%>/js/club_delete_popup.js">

</script>
<title>Insert title here</title>
</head>
<body>
  <form method="post" action="club_delete.do" >
<%-- 삭제할 모임을 확인해주세요 : ${clubdto.club_name} <br> --%>
삭제시 모든 정보가 사라지고 복구할 수 없습니다. <br>
정말 삭제하시겠습니까? <br>
<button type="button" onClick="location.href='club_deleteResult.do'">네</button><a href="#" onClick="history.go(-1);">뒤로가기</a>
</body>
</html>