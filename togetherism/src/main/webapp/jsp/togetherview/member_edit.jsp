<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Togetherism 회원정보 수정</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script src="./js/member.js"></script>

</head>

<body>
<jsp:include page="../include/header.jsp"></jsp:include><br><br><br><br><br>

  <div id="edit_wrap">
  <h2 class="edit_title">회원수정</h2>
  <form action="member_edit_ok.do" method="post"
  		onsubmit="return edit_check()" enctype="multipart/form-data">
  <input type="hidden" name="member_email" id="member_email" value="${member.member_email}"/>
  <input type="hidden" name="member_old_nickname" id="member_old_nickname" value="${member.member_nickname}"/>

   <table align="center" cellpadding="10">
    <tr>
     <th>회원이메일</th>
     <td >
      ${member.member_email}
     </td>
    </tr>
    
    <tr>
     <th>회원비번</th>
     <td>
      <input type="password" name="member_pw" id="member_pw" size="14"
      class="input_box" />
     </td>
    </tr>
    
    <tr>
     <th>회원비번확인</th>
     <td>
      <input type="password" name="member_pw1" id="member_pw1" size="14"
      class="input_box" />
     </td>
    </tr>
    
    <tr>
     <th>회원닉네임</th>
     <td>
      <input type="text" name="member_nickname" id="member_nickname" size="14" class="input_box"
      value="${member.member_nickname}" onKeyup="nickname_checkR()" />
      <input type="button" id="nickname_check_button" value="닉네임 중복체크" class="input_button"
      onclick="nickname_check()" />
      <div id="nickname_check">
     </td>
    </tr>
    
    <tr>
     <th>휴대전화번호</th>
     <td>
		<input type="text" value="${member.member_mobile1}" name="member_mobile1" id="member_mobile1" /> -
		<input type="text" value="${member.member_mobile2}" name="member_mobile2" id="member_mobile2" /> -
		<input type="text" value="${member.member_mobile3}" name="member_mobile3" id="member_mobile3" />
     </td>
    </tr>
    
    <tr>
		<td>거주지역</td>
		<td><select name="member_region" id="member_region">
				<option value="">=거주지역선택=</option>
				<option value="Seoul_Metropolitan" 
					<c:if test="${member.member_region == 'Seoul_Metropolitan'}">${'selected'}
           			</c:if>>수도권</option>
				<option value="Gangwon"
					<c:if test="${member.member_region == 'Gangwon'}">${'selected'}
           			</c:if>>강원</option>
				<option value="Gyeongsang" 
					<c:if test="${member.member_region == 'Gyeongsang'}">${'selected'}
           			</c:if>>경상</option>
				<option value="Jeolla"
					<c:if test="${member.member_region == 'Jeolla'}">${'selected'}
           			</c:if>>전라</option>
				<option value="Chungcheong" 
					<c:if test="${member.member_region == 'Chungcheong'}">${'selected'}
           			</c:if>>충청</option>
				<option value="Jeju"
					<c:if test="${member.member_region == 'Jeju'}">${'selected'}
           			</c:if>>제주</option>
				<option value="Abroad"
					<c:if test="${member.member_region == 'Abroad'}">${'selected'}
           			</c:if>>해외</option>
			</select></td>
	</tr>
	
    <tr>
     <th>프로필사진</th>
   <td>
       <img src="<%=request.getContextPath() %>/upload/${member.member_image}" height="100" width="100" />
       <input type="file" name="member_image1" id="member_image1"/>
     </td>
    </tr>
   </table>
   
   <div id="edit_menu" align="center">
    <input type="submit" value="회원수정" class="input_button" />
    <input type="reset" value="수정취소" class="input_button" 
    onclick="$('#member_pw').focus();" />
   </div>
  </form>
 </div>
</body>

<br><br><br><br><br>
<jsp:include page="../include/footer.jsp"></jsp:include>
</html>