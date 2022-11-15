$(function(){
	$('#logout').click(function(){
		if(confirm("정말 로그아웃 하시겠습니까?")) {
			alert("로그아웃 완료");
			self.location.href="manager_logout.do";
		}
	});
});