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
		if($("#notice_content").val() == "") {
			alert("내용을 입력하세요");
			$("#notice_content").focus();
			return false;
		}
	});
});