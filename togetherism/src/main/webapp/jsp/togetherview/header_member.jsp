<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
 

 <div id="main_wrap">
   <form> 
   <table id="header_t">
    <tr>
     <th>회원이름</th>
     <td>${header_result.member_nickname}님(헤더부분)</td>
    </tr>
    <tr>
     <td>
     
     <div id="profile"></div>
       <img src="<%=request.getContextPath() %>/upload/${header_result.member_image}" height="100" width="100" />
     </td>
    </tr>
   </table>   
   </form>
 </div>

</body>
</html>