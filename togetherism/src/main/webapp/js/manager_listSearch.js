	$(function(){	// 검색창 유효성 검사
		$('form').submit(function(){
			if($("#keyword").val() == "" ) {
				alert("검색어를 입력하세요");
				$("#keyword").focus();
				return false;
			}
		});
	});