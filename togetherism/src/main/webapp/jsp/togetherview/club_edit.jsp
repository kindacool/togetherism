<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<title>모임 수정하기</title>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/club_edit.css" />
<script src="<%=request.getContextPath()%>/js/club_edit.js"></script>

<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
	<h1 class="club-title">모임 수정하기</h1>
	<form action="<%=request.getContextPath()%>/club_edit_save.do"
		enctype="multipart/form-data" method="post">
		<input type="hidden" name="club_num" value="${club_num}" /> 
<%-- 		<input type="hidden" name="page" value="${page}" /> --%>

		<table id="club">
			<tr>
				<th>모임 대표 사진</th>
				<td>
				<img src="<%=request.getContextPath() %>/upload/${club_cont.club_image}"/>
				<input type="file" name="club_image1"></td>
					
			</tr>
			<tr>
				<th>모임 명</th>
				<td><input type="text" name="club_name"
					value="${club_cont.club_name}" placeholder="16자 이내로 입력" /></td>
			</tr>


			<tr>
				<th>모임 키워드</th>
				<td><input type="text" name="club_keyword"
					value="${club_cont.club_keyword}" placeholder="16자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>모임 지역</th>
				<td>
				<input name="club_region" id="club_region" class="input_box" value="${club_cont.club_region}">
						<select name="club_region">
						<option value="">=지역선택=</option>
						<option value="Seoul_Metropolitan"
						<c:if test="${club_region == 'Seoul Metropolitan'}"> ${'selected'} </c:if>
						>수도권</option>
					
						<option value="Gangwon" 
						<c:if test="${club_region == 'Gangwon'}"> ${'selected'} </c:if>
						>>강원</option>
						<option value="Gyeongsang"
						<c:if test="${club_region == 'Gyeongsang'}"> ${'selected'} </c:if>
						>>경상</option>
						<option value="Jeolla"
						<c:if test="${club_region == 'Jeolla'}"> ${'selected'} </c:if>
						>>전라</option>
						<option value="Chungcheong"
						<c:if test="${club_region == 'Chungcheong'}"> ${'selected'} </c:if>
						>>충청</option>
						<option value="Jeju"
						<c:if test="${club_region == 'Jeju'}"> ${'selected'} </c:if>
						>>제주</option>
						<option value="Abroad"
						<c:if test="${club_region == 'Abroad'}"> ${'selected'} </c:if>
						>>해외</option>
				</select></td>
			</tr>


			<tr>
				<th>모임 관심사</th>
				<td><input type="text" name="club_interest"
					value="${club_cont.club_interest}" placeholder="6자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>모임 정원</th>
				<td><input type="text" name="club_member_limit"
					value="${club_cont.club_member_limit}" /></td>
			</tr>


			<tr>
				<th>모임 상세정보</th>
				<td><input type="text" name="club_info"
					value="${club_cont.club_info}" placeholder="650자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>오픈 채팅 URL 주소</th>
				<td><input type="text" name="club_chat"
					value="${club_cont.club_chat}" /></td>
			</tr>

		</table>

		<div id="club_join_menu">
			<input type="submit" value="모임 수정하기" class="input_button" /> <input
				type="reset" value="취소" class="input_button" />
	</form>
</body>
</html>