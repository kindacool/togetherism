<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문의 메일 미리보기</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<form action="mail.do" method="post">
<input type="hidden" value="${qna_category }">
<br><br><br><br><br>
		<div class="container">
			<p><h1>메일 문의 미리보기<br></h1></p>
		</div>
<div class="container">
	<p><table class="table table-borderless w-auto">
		<tr>
			<th style="width:200px"> 분류 </th>
			<td>
				<select class="form-select" aria-label="Default select example" name="qna_category" id="qna_category"
				readonly style='background-color:#E9ECEF' onFocus='this.initialSelect = this.selectedIndex;' onChange='this.selectedIndex = this.initialSelect;'>
				  <option>선택해주세요</option>
				  <option value="회원" <c:if test="${qna_category eq '회원' }"> selected</c:if>>회원</option>
				  <option value="모임/이벤트" <c:if test="${qna_category eq '모임/이벤트' }"> selected</c:if>>모임/이벤트</option>
				  <option value="제안" <c:if test="${qna_category eq '제안' }"> selected</c:if>>제안</option>
				  <option value="기타" <c:if test="${qna_category eq '기타' }"> selected</c:if>>기타</option>
				</select>
			</td>
		</tr>
		<tr>
			<th style="width:200px"> 작성자 </th>
			<td style="width:500px"><input type="text" name="member_nickname" id="member_nickname" value=${member_nickname } class="form-control" placeholder="제목을 입력해주세요" style="width: 500px" readonly></td>
		</tr>
		<tr>
			<th style="width:200px"> 메일 주소 </th>
			<td style="width:500px"><input type="email" name="member_email" id="member_email" value="${member_email }" class="form-control" placeholder="답변 받을 이메일 주소를 입력해주세요" style="width: 500px" readonly></td>
			
			<%-- <!-- 로그인 세션이 유지될 경우 -->
			<c:if test="${not empty memberDto.member_email }">
				<td style="width:500px"><input type="email" name="member_email" id="member_email" class="form-control" value="회원이메일주소 표시" style="width: 500px"></td>
			</c:if>
			
			<!-- 비회원 -->
			<c:if test="${empty memberDto.member_email }">
				<td style="width:500px"><input type="email" name="member_email" id="member_email" class="form-control" placeholder="답변 받을 이메일 주소를 입력해주세요" style="width: 500px"></td>
			</c:if> --%>
		</tr>
		<tr>
			<th style="width:200px"> 제목 </th>
			<td style="width:500px"><input type="text" name="mail_subject" id="mail_subject" value="${ mail_subject}" class="form-control" placeholder="제목을 입력해주세요" style="width: 500px" readonly></td>
		</tr>
		<tr>
			<th style="width:200px"> 내용 </th>
			<td style="width:500px"><textarea type="text" name="mail_content" id="mail_content" class="form-control" placeholder="내용을 입력해주세요" rows="10" cols="10" readonly>${mail_content }</textarea>
			</td>
		</tr>
	</table></p>
	
	<p><div align="center">
			<input type="submit" class="btn btn-danger" id="mailbtn" value="전송">
			<input type="reset" class="btn btn-warning" value="취소" onClick="history.go(-1)">
	</p></div>
</div>
</form>

</body>
</html>