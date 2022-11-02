<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
	
<!DOCTYPE html>
<html>
<head>
<title>모임 만들기</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/club.css" />
<script src="<%=request.getContextPath()%>/js/club.js"></script>

<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
	<h1 class="club-title">모임 만들기</h1>
	<p>새로운 모임을 만들기 전에 이미 같은 지역에 같은 주제의 모임이 있는지 확인해주세요.</p>
	<form action="<%=request.getContextPath()%>/club_save.do"
	enctype="multipart/form-data" method="post">
		<table id="club">
			<tr>
				<th>모임 대표 사진</th>
				<td><input type="file" name="club_image1" /></td>
			</tr>
			<tr>
				<th>모임 명</th>
				<td><input type="text" name="club_name"
					placeholder="16자 이내로 입력" /></td>
			</tr>


			<tr>
				<th>모임 키워드</th>
				<td><input type="text" name="club_keyword"
					placeholder="16자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>모임 지역</th>
				<td><select id="club_region" name="club_region">
						<option value="">=지역선택=</option>
						<option value="Seoul_Metropolitan">수도권</option>
						<option value="Gangwon">강원</option>
						<option value="Gyeongsang">경상</option>
						<option value="Jeolla">전라</option>
						<option value="Chungcheong">충청</option>
						<option value="Jeju">제주</option>
						<option value="Abroad">해외</option>
				</select></td>
			</tr>


			<tr>
				<th>모임 관심사</th>
				<td><input type="text" name="club_interest"
					placeholder="6자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>모임 정원</th>
				<td><input type="text" name="club_member_limit" /></td>
			</tr>


			<tr>
				<th>모임 상세정보</th>
				<td><input type="text" name="club_info"
					placeholder="650자 이내로 입력" /></td>
			</tr>

			<tr>
				<th>오픈 채팅 URL 주소</th>
				<td><input type="text" name="club_chat" /></td>
			</tr>

		</table>

		<div id="club_join_menu">
			<input type="submit" value="모임 만들기" class="club_create_button" /> 
			<input
				type="reset" value="취소" class="input_button"/>
	</form>
</body>
</html>