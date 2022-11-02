<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>글 내용</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js"></script>
<script>
$(function(){
	$('#delbtn').click(function(){
		if(confirm("정말 삭제하시겠습니까?")){
			self.location.href="notice_delete.do?notice_num=${noticeDto.notice_num}"
		}
	});
});
</script>
<!-- <script>
	var notice_num = ${noticeDto.notice_num}
</script> -->
<!-- <script src="./js/notice_contentDelete.js" /> -->
</head>
<body>
<div class="container">
	<p><h1>관리자 > 공지사항</h1></p>
</div>
<p></p>
<p></p>
<div align="center">
	<table class="table w-auto">
		<thread class="table-light">
			<tr>
				<th style="width: 700px" colspan=2> <h3>${noticeDto.notice_title } </h3></th>
			</tr>
			<tr>
				<td>관리자</td>
				<td align="right">
					<fmt:formatDate value="${noticeDto.notice_reg_date }" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
			</tr>
				<c:if test="${noticeDto.notice_file != null }">
					<tr>
						<td colspan=2>
							첨부파일 : <a href="./jsp/togetherview/notice/file_down.jsp?file_name=${noticeDto.notice_file }" style="text-decoration:none">${noticeDto.notice_file }</a>
						</td>
					</tr>
				</c:if>
		</thread>
		<tbody>
			<td colspan=2 >
				${notice_content }
				<c:if test="${noticeDto.notice_file != null }">
					<br><br><br><img src="./upload/${noticeDto.notice_file }">
				</c:if>
			</td>
		</tbody>
	</table>
</div>
</p>
<div align="center">
	<button class="btn btn-warning" onClick="location.href='notice_list.do?notice_num=${noticeDto.notice_num }&page=${page}' "> 목록 </button>
	<button class="btn btn-primary" onClick="location.href='notice_modifyForm.do?notice_num=${noticeDto.notice_num}&page=${page}' "> 수정 </button>
	<button class="btn btn-danger" id="delbtn"> 삭제 </button>
</div>
</body>
</html>