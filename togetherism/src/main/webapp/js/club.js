 var check_club_name = 0;
 
function club_check(){
	  
	  if($.trim($("#club_image1").val())==""){
	       alert("모임 대표사진은 필수입니다.");
	       $("#club_image1").val("").focus();
	       return false;
	    }  
	  
 	 if($.trim($("#club_name").val())==""){
 		 alert("모임 명은 필수입니다.");
 		 $("#club_name").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_keyword").val())==""){
 		 alert("모임 키워드는 필수입니다.");
 		 $("#club_keyword").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_region").val())==""){
 		 alert("모임 지역은 필수입니다.");
 		 $("#club_region").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_interest").val())==""){
 		 alert("모임 관심사는 필수입니다.");
 		 $("#club_interest").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_member_limit").val())==""){
 		 alert("모임 정원은 필수입니다.");
 		 $("#club_member_limit").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_info").val())==""){
 		 alert("모임 상세정보는 필수입니다.");
 		 $("#club_info").val("").focus();
 		 return false;
 	 }
 	 if($.trim($("#club_chat").val())==""){
 		 alert("오픈 채팅방 URL 주소는 필수입니다.");
 		 $("#club_chat").val("").focus();
 		 return false;
 	 } 

 	 if(check_club_name == 0){
 		 alert('모임명 중복 확인을 해주세요.');
 		 return false;
 	 }
 	 
 	 
  }
  


 /* 모임 명 중복체크 */
 function club_name_check1(){	 
	 
 	 if($.trim($("#club_name").val())==""){
 		 alert("모임 명은 필수입니다.");
 		 $("#club_name").val("").focus();
 		 return false;
 	 }
	 
 	$("#clubnamecheck").hide();
 	var club_name=$("#club_name").val();

 	// 모임 명 중복확인
     $.ajax({
         type:"POST",
         url:"club_namecheck.do",
         data: {"club_name":club_name},
         contentType: 'application/x-www-form-urlencoded; charset=euc-kr',
         success: function (data) {  // 콜백함수
       	  if(data==1){	// 중복 모임명
       		var newtext='<font color="red">같은 모임 명이 이미 존재합니다. 다른 모임명을 입력하세요.</font>';
       			$("#clubnamecheck").text('');
         		$("#clubnamecheck").show();
         		$("#clubnamecheck").append(newtext);
           		$("#club_name").val('').focus();
           		check_club_name = 0;           		
           		
           		return false;
 	     
       	  }else{	// 사용 가능한 모임명
       		var newtext='<font color="blue">사용가능한 모임명입니다.</font>';
       		$("#clubnamecheck").text('');
       		$("#clubnamecheck").show();
       		$("#clubnamecheck").append(newtext);
       		$("#club_keyword").focus();
       		check_club_name = 1; 
       		
       	  }  	    	  
         }
         ,
     	  error:function(e){
 		  alert("data error"+e);
     	  }
       });// $.ajax
}


 function club_edit_check(){
	   
	 if($.trim($("#club_name").val())==""){
		 alert("모임 명은 필수입니다.");
		 $("#club_name").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_keyword").val())==""){
		 alert("모임 키워드는 필수입니다.");
		 $("#club_keyword").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_region").val())==""){
		 alert("모임 지역은 필수입니다.");
		 $("#club_region").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_interest").val())==""){
		 alert("모임 관심사는 필수입니다.");
		 $("#club_interest").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_member_limit").val())==""){
		 alert("모임 정원은 필수입니다.");
		 $("#club_member_limit").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_info").val())==""){
		 alert("모임 상세정보는 필수입니다.");
		 $("#club_info").val("").focus();
		 return false;
	 }
	 if($.trim($("#club_chat").val())==""){
		 alert("오픈 채팅방 URL 주소는 필수입니다.");
		 $("#club_chat").val("").focus();
		 return false;
	 }
	 
	  var clubmembercount = $("#club_member_count").val();
	  var clubmemberlimit = $("#club_member_limit").val();
	  if(Number(clubmembercount) > Number(clubmemberlimit)){
		  alert("모임 정원은 현재 모임 가입 회원 수 이상으로만 수정 가능합니다.");
	 		 $("#club_member_limit").val("").focus();
	 		 return false;
	  }

 }

 