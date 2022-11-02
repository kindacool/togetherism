<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 작성</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/notice_writeForm.js"></script>
</head>
<body>
	<form method=post action="notice_write.do" enctype="multipart/form-data">
	<input type="hidden" value="${noticeDto.notice_reg_date }">
		<div class="container">
			<p><h1>관리자 > 공지사항 작성</h1></p>
		</div>
		<p>
		<div align="center">
			<div>
				작성자 : <input type="text" name="manager_email" id="manager_email" width="200">
			</div>
			<div>
				제목 : <input type="text" name="notice_title" id="notice_title" placeholder="글제목을 50자 이내로 입력해주세요" width="400px"><br>
			</div>
			<div>
				내용 : <textarea name="notice_content" id="notice_content"></textarea><br>
			</div>
			<div>
				파일첨부 : <input type="file" name="notice_file1" width="400px">
			</div>
		</p>
			<div>
				<input type="submit" class="btn btn-warning" style="width: 300px" value="작성">
				<input type="button" class="btn btn-warning" style="width: 300px" value="취소" onClick="history.go(-1)">
			</div>
		</div>
	</form>
</body>
</html>