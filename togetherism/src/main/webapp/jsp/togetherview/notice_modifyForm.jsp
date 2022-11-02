<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공지사항 수정</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script src="./js/notice_writeForm.js"></script>
<script>
	var notice_file = document.getElementById("img");
	
	if(img.value != "") {
		if (confirm ("기존 첨부파일을 삭제하시겠습니까?")) {
			img.val = "";
		}
	}
</script>
</head>
<body>
	<form method=post action="notice_modify.do" enctype="multipart/form-data">
	<input type="hidden" name="notice_num" value="${noticeDto.notice_num }">
	<input type="hidden" name="page" value="${page }">
		<div class="container">
			<p><h1>관리자 > 공지사항 수정</h1></p>
		</div>
		<p>
		<div align="center">
			<div>
				작성자 : <input type="text" name="manager_email" id="manager_email" value="${noticeDto.manager_email }" width="200" readonly="readonly">
			</div>
			<div>
				제목 : <input type="text" name="notice_title" id="notice_title" value="${noticeDto.notice_title }" width="400px"><br>
			</div>
			<div>
				내용 : <textarea name="notice_content" id="notice_content">${noticeDto.notice_content }</textarea><br>
			</div>
			<div>
				<img src="<%=request.getContextPath() %>/upload/${noticeDto.notice_file}" /><br><br><br>
				새로운 첨부파일 : <input type="file" name="notice_file1" class="form-control form-control-sm" style="width: 400px"><br>
				기존 첨부파일 : <input id=img class="form-control" type="text" value="${noticeDto.notice_file }" aria-label="readonly input example" readonly style="width: 400px">
				<input type="button" id=imgdelbtn class="btn btn-outline-danger" style="width: 100" value="이미지 삭제" onClick="">
			</div>
		</p>
			<div>
				<button type="submit" class="btn btn-primary" style="width: 300px">수정</button>
				<button type="reset" class="btn btn-warning" style="width: 300px" onClick="history.go(-1)">취소</button>
			</div>
		</div>
	</form>
</body>
</html>