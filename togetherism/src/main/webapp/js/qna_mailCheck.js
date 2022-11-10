$(function(){
	$('form').submit(function(){
		if($("#qna_category").val() == ""){
			alert("분류를 선택해주세요");
			$("#qna_category").focus();
			return false;
		}
		if($("#member_nickname").val() == ""){
			alert("작성자를 입력해주세요");
			$("#member_nickname").focus();
			return false;
		}
		if($("#member_email").val() == "") {
			alert("답변 받을 이메일 주소를 입력해주세요");
			$("#member_email").focus();
			return false;
		}
		if($("#mail_subject").val() == "") {
			alert("제목을 입력해주세요");
			$("#mail_subject").focus();
			return false;
		}
		if($("#mail_content").val() == "") {
			alert("내용을 입력해주세요");
			$("#mail_content").focus();
			return false;
		}
	});
});