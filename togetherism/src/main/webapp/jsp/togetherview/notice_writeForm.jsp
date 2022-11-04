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
<script src="https://cdn.ckeditor.com/ckeditor5/35.2.0/classic/ckeditor.js"></script>
<!-- <script src="./js/notice_writeForm.js"></script> -->

</head>
<body>
	<form method=post action="notice_write.do" enctype="multipart/form-data">
	<input type="hidden" value="${noticeDto.notice_reg_date }">
		<div class="container">
			<p><h1>관리자 > 공지사항 작성</h1></p>
		</div>
		<p>
		<div align="center">
		<table class="table table-borderless w-auto">
			<tr>
				<th align="right" style="width: 200px"> 작성자 </th>
				<td align="left" style="width: 500px"> 
					<input type="text" name="manager_email" id="manager_email" class="form-control" style="width: 500px">
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 제목 </th>
				<td align="left" style="width: 500px"> 
					<input type="text" name="notice_title" id="notice_title" placeholder="제목을 50자 이내로 입력해주세요" class="form-control" style="width: 500px">
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 내용 </th>
				<td align="left" style="width: 500px">
					<textarea name="notice_content" id="notice_content" class="form-control" rows="10" cols="10"></textarea>
					<!-- <script src="./js/ckeditor.js"></script> -->
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 첨부파일 </th>
				<td align="left" style="width: 500px">
					<input type="file" name="notice_file1" class="form-control form-control-sm" style="width: 500px">
				</td>
			</tr>
			</table>
		</p>
			<table class="table table-borderless w-auto">
				<tr>
					<td style=width:700>
						<input type="submit" class="btn btn-warning" value="작성">
						<input type="button" class="btn btn-warning" value="취소" onClick="history.go(-1)">
					</td>
				</tr>
			</table>
	</form>
</body>
</html>