<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 메인화면</title>

</head>
<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>

<c:if test="${sessionScope.email == null }"> 
<br>
로그인하세용~
</c:if>

<c:if test="${sessionScope.email != null }">  
 <div id="main_wrap">
   <h2 class="main_title">사용자 메인화면</h2>  
   <form method="post" action="<%=request.getContextPath()%>/member_logout.do"> 
   <table id="main_t">
    <tr>
     <th colspan="2">
     <input type="button" value="정보수정" class="input_button"
     		onclick="location='<%=request.getContextPath()%>/member_edit.do'" />
     <input type="button" value="회원탈퇴" class="input_button"
     		onclick="location='<%=request.getContextPath()%>/member_delete.do'" />
     <input type="submit" value="로그아웃" class="input_button" />     
     </th>
    </tr>
    
    <tr>
     <th>회원이름</th>
     <td>${member_nickname}님 로그인을 환영합니다(메인부분)</td>
    </tr>
    
    <tr>
     <th>프로필사진</th>
     <td>
       <img src="<%=request.getContextPath() %>/upload/${member_image}" height="100" width="100" />
     </td>
    </tr>
   </table>   
   </form>
 </div>
</c:if>


<br><br><br><br><br>
<jsp:include page="../include/footer.jsp"></jsp:include>
</body>
</html>