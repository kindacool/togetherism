	$(function(){
		alert("test");
		$('#delbtn').click(function(){
			if(confirm("정말 삭제하시겠습니까?")){
				self.location.href="notice_delete.do?no="+notice_num;
			}
		});
	});