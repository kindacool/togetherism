<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	$(function(){
		$("#imgdelbtn").click(function(){
			if(confirm("첨부한 이미지를 삭제하시겠습니까?")){
				var data = { "notice_num" : ${noticeDto.notice_num} }
				$.post("notice_modifyFile.do", data, function(result){
					if(result == 1){
						$(".fileDelete").text("");
					} // if end
				}); // post end
			} // if end
	   });	// click end
   });
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
		<table class="table table-borderless w-auto">
			<tr>
				<th align="right" style="width: 200px"> 작성자 </th>
				<td align="left" style="width: 500px">
					<input type="text" name="manager_email" id="manager_email" value="관리자" class="form-control" style="width: 500px" readonly="readonly">
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 제목 </th> 
				<td align="left" style="width: 500px"> 
					<input type="text" name="notice_title" id="notice_title" value="${noticeDto.notice_title }" class="form-control" style="width: 500px">
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 내용 </th>
				<td align="left" style="width: 500px">
					<textarea name="notice_content" id="notice_content" class="form-control" rows="10" cols="10">${noticeDto.notice_content }</textarea><br>
				</td>
			</tr>
			<tr>
				<th align="right" style="width: 200px"> 첨부파일 </th>
				<td align="left" style="width: 500px">
					<input type="file" name="notice_file1" class="form-control form-control-sm" style="width: 500px">
				</td>
				
			<c:if test="${empty noticeDto.notice_file }">	
				&nbsp;
			</c:if>
				
			<!-- 첨부한 파일이 있을 경우 -->
			<c:if test="${ not empty noticeDto.notice_file }">
			<tr class="fileDelete">
				<th align="right" style="width: 200px"> 기존 첨부파일 </th>
				<td align="left" style="width: 500px">
					<input id=img class="form-control" type="text" value="${noticeDto.notice_file }" aria-label="readonly input example" readonly style="width: 500px">
					<input type="button" id=imgdelbtn class="btn btn-outline-danger" style="width: 100" value="이미지 삭제">
				</td>
			</tr>
			</c:if>
		
		</p>
			<div>
			<table class="table table-borderless w-auto">
				<tr>
					<td style=width:700>
						<button type="submit" class="btn btn-primary">수정</button>
						<button type="reset" class="btn btn-warning" onClick="history.go(-1)">취소</button>
					</td>
				</tr>
			</table>
			</div>
		</div>
	</form>
</body>
</html>