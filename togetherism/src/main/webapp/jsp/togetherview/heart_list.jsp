<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!doctype html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 좋아요한 모임 목록</title>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/heartlist.css" type="text/css">
</head>
	<form action="<%=request.getContextPath()%>/heart_list.do">
		<!-- 내가 좋아요한 모임 리스트 -->
		<div id="heart_list">
			<h2 class="heartlist_title">내가 좋아요한 모임 목록</h2>
			<div id="heart_list_c">내가 좋아요한 모임 갯수 : ${listcount}</div>

			<table id="heartlist_table">
				<tr align="center">

					<td>
						<div align="center">모임사진</div>
					</td>
					<td>
						<div align="center">모임이름</div>
					</td>

					<td>
						<div align="center">모임지역</div>
					</td>

					<td>
						<div align="center">모임키워드</div>
					</td>
					<td>
						<div align="center">현재인원</div>
					</td>
					<td>
						<div align="center">정원</div>
					</td>

				</tr>

				<c:if test="${empty heartlist}">
					<tr>
						<td>좋아요한 모임이 없습니다.</td>
					</tr>
				</c:if>

				<!-- 반복문 시작 -->
				<c:if test="${!empty heartlist}">
					<c:forEach var="ch" items="${heartlist}">
						<tr>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><img
									src="<%=request.getContextPath() %>/upload/${ch.club_image}"
									width="70" height="70" /></a></td>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
										value="${ch.club_name}" /></a></td>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }">
									<c:choose>
										<c:when test="${ch.club_region == 'Seoul_Metropolitan'}">수도권</c:when>
										<c:when test="${ch.club_region == 'Gangwon'}">강원</c:when>
										<c:when test="${ch.club_region == 'Gyeongsang'}">경상</c:when>
										<c:when test="${ch.club_region == 'Jeolla'}">전라</c:when>
										<c:when test="${ch.club_region == 'Chungcheong'}">충청</c:when>
										<c:when test="${ch.club_region == 'Jeju'}">제주</c:when>
										<c:when test="${ch.club_region == 'Abroad'}">해외</c:when>
									</c:choose>
							</a></td>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
										value="${ch.club_keyword}" /></a></td>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
										value="${ch.club_member_count}" /></a></td>
							<td><a
								href="<%=request.getContextPath() %>/club_ct.do?club_num=${ch.club_num }"><c:out
										value="${ch.club_member_limit}" /></a></td>

							<td id="heart2_div">
							<a href="<%=request.getContextPath() %>/remove1_heart.do?club_num=${ch.club_num }" 
							id="heart2">좋아요취소</a>
							</td>
						</tr>

					</c:forEach>
				</c:if>
				<!-- 반복문 끝 -->
			</table>
			<div id="heartlist_paging">
				<c:if test="${heartPage <=1 }">
				[이전]&nbsp;
			</c:if>

				<c:if test="${heartPage > 1 }">
					<a href="heart_list.do?page=${heartPage-1}">[이전]</a>&nbsp;
			</c:if>

				<c:forEach var="a" begin="${startpage}" end="${endpage}">
					<c:if test="${a == heartpage }">
					[${a}]
				</c:if>
					<c:if test="${a != heartPage }">
						<a href="heart_list.do?page=${a}">[${a}]</a>&nbsp;
				</c:if>
				</c:forEach>

				<c:if test="${heartPage >= maxpage }">
				[다음] 
			</c:if>
				<c:if test="${heartPage < maxpage }">
					<a href="heart_list.do?page=${heartPage+1}">[다음]</a>
				</c:if>

			</div>

		</div>


	</form>
</body>
</html>