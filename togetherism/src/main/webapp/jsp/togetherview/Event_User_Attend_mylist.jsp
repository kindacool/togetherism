<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>     
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내가 참여한 이벤트</title>
</head>
<body>

	<!-- 참여한 이벤트 리스트 -->
	<div id="eventlist_wrap">
		<h2 class="eventlist_title">참여한 이벤트 목록</h2>
		
		<table id="eventlist_t">
			<tr align="center">
				<td colspan=2><div align="center">이벤트 제목</div></td>
				<td><div align="center">이벤트 장소</div></td>
				<td><div align="center">이벤트 날짜</div></td>
				<td><div align="center">참석 취소</div></td>
			</tr>
	
			<!-- 반복문 시작 -->
			<c:forEach var="my" items="${attendMylist}">
			
			<tr align="center" valign="middle">
				<td>
       			<img src="<%=request.getContextPath() %>/upload/${my.event_file}" height="100" width="100" />
     			</td>
				<td><div align="center">		
					<!-- 제목 출력 부분 -->	
					<a href="<%=request.getContextPath() %>/event_cont.do?club_num=${my.club_num}&event_num=${my.event_num }&eventPage=1&state=cont">
							${my.event_title}
					</a>
				</td>
				<td><div align="center">${my.event_region}</div></td>
				<td><div align="center">${my.event_date}</div></td>
				<td>
				<input type="button" value="참석 취소" 
				onclick="location.href=
				'<%=request.getContextPath() %>/event_user_attend_no.do?event_num=${my.event_num }&club_num=${my.club_num}'"/>
				</td>
			</tr>
			
			</c:forEach>
			<!-- 반복문 끝 -->			
		</table>

		<ul class="pagination">
			<c:if test="${pp.startPage > pp.pagePerBlk }">
				<li><a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${pp.startPage - 1}">
				이전</a>
				</li>
			</c:if>
			<c:forEach var="i" begin="${pp.startPage}" end="${pp.endPage}">
				<li <c:if test="${pp.page==i}">class="active"</c:if>>
					<a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${i}">
					${i}
					</a>
				</li>
			</c:forEach>
			<c:if test="${pp.endPage < pp.totalPage}">
				<li>
					<a href="<%=request.getContextPath() %>/event_user_attend_mylistPaging.do?attendPage=${pp.endPage + 1}">
					다음</a>
				</li>
			</c:if>
		</ul>
	</div>
</body>
</html>