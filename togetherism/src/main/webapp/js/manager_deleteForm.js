$(function(){
	$('form').submit(function(){
		if($("#member_del_reason").val() == ""){
			alert("탈퇴 사유를 입력 하세요.");
			$("#member_del_reason").focus();
			return false;
		}
	});
});