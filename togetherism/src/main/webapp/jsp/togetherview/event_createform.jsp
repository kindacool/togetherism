<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이벤트 생성 폼</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>

</head>
<body>
	<form action="<%=request.getContextPath()%>/event_create.do" method="post" enctype="multipart/form-data">
		<input type="hidden" value="-1" name="club_num"> 
		<input type="hidden" value="x@g.com" name="club_host_email">
		<table>
			<caption>이벤트 생성 폼</caption>
			<tr>
				<td>이벤트</td>
				<td><input type="text" name="event_title"></td>
			</tr>
			<tr>
				<td>이벤트 날짜 및 시간</td>
				<td><input type="date" name="event_date_date"></td>
				<td><input type="time" name="event_date_time"></td>
			</tr>
			<tr>
				<td>이벤트 장소 위도 경도</td>
				<td><input type="text" name="event_spot_lat"> <input
					type="text" name="event_spot_long"></td>
			</tr>
			<tr>
				<td>이벤트 설명</td>
				<td><textarea name="event_info"></textarea></td>
			</tr>
			<tr>
				<td>이벤트 첨부파일 및 사진</td>
				<td><input type="file" name="event_file0"></td>
			</tr>

			<tr>
				<td><input type="submit"></td>
			</tr>
		</table>

	</form>
</body>
</html>