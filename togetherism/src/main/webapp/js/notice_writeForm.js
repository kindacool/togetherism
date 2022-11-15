$(function(){
	$('form').submit(function(){
		if($("#manager_email").val() == ""){
			alert("작성자를 입력하세요");
			$("#manager_email").focus();
			return false;
		}
		if($("#notice_title").val() == "") {
			alert("제목을 입력하세요");
			$("#notice_title").focus();
			return false;
		}
		if($("#notice_title").val().length > 100 ) {
			alert("제목을 한글 50자, 영문 100자 이내로 입력하세요");
			$("#notice_title").focus();
			return false;
		}
		if($("#notice_content").val() == "") {
			alert("내용을 입력하세요");
			$("#notice_content").focus();
			return false;
		}
		if($("#notice_content").val().length > 2000 ) {
			alert("내용을 한글 1000자, 영문 2000자 이내로 입력하세요");
			$("#notice_content").focus();
			return false;
		}
	});
});