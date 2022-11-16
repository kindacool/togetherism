
var email_checkResult = 0;
var nickname_checkResult = 0;

/* 유효성 검사 */
function check(){
	if($.trim($("#email_id").val())==""){
		alert("email id를 입력하세요!");
		$("#email_id").val("").focus();
		 return false;
	}
	if($.trim($("#email_domain").val())==""){
		alert("email domain을 입력하거나 선택하세요!");
		$("#email_domain").val("").focus();
		 return false;
	}
	if($.trim($("#member_pw").val())==""){
		alert("비밀번호를 입력하세요!");
		$("#member_pw").val("").focus();
		 return false;
	}
	if($.trim($("#member_pw1").val())==""){
		alert("비밀번호 확인을 입력하세요!");
		$("#member_pw1").val("").focus();
		 return false;
	}
	if($.trim($("#member_pw").val()) != $.trim($("#member_pw1").val())){
		//!=같지않다 연산. 비번이 다를 경우
		alert("비밀번호가 다릅니다!");
		$("#member_pw").val("");
		$("#member_pw1").val("");
		$("#member_pw1").focus();
		return false;
	}
	if($.trim($("#member_nickname").val())==""){
		alert("닉네임을 입력하세요!");
		$("#member_nickname").val("").focus();
		return false;
	}
	   if($.trim($("#member_mobile1").val())==""){
		      alert("휴대전화번호 앞자리를 입력하세요!");
		      $("#member_mobile1").val("").focus();
		      return false;
		   }
		   if($("#member_mobile1").val().length != 3 ){
		       alert("휴대전화번호 앞자리는 3자리로 입력해주세요!");
		       $("#member_mobile1").val("").focus();
		       return false;
		   }
		   if(isNaN($("#member_mobile1").val())){
		      alert("휴대전화번호는 숫자만 입력하세요!");
		      $("#member_mobile1").val("").focus();
		      return false;
		   }
		   if($.trim($("#member_mobile2").val())==""){
		      alert("휴대전화번호 중간자리를 입력하세요!");
		      $("#member_mobile2").val("").focus();
		      return false;
		    }
		   if($("#member_mobile2").val().length != 4 ){
		       alert("휴대전화번호 중간자리는 4자리로 입력해주세요!");
		       $("#member_mobile2").val("").focus();
		       return false;
		   }
		   if(isNaN($("#member_mobile2").val())){
		      alert("휴대전화번호는 숫자만 입력하세요!");
		      $("#member_mobile2").val("").focus();
		      return false;
		   }
		    if($.trim($("#member_mobile3").val())==""){
		       alert("휴대전화번호 마지막자리를 입력하세요!");
		       $("#member_mobile3").val("").focus();
		       return false;
		   }
		   if($("#member_mobile3").val().length != 4 ){
		      alert("휴대전화번호 마지막자리는 4자리로 입력해주세요!");
		      $("#member_mobile3").val("").focus();
		      return false;
		   }
		   if(isNaN($("#member_mobile3").val())){
		      alert("휴대전화번호는 숫자만 입력하세요!");
		      $("#member_mobile3").val("").focus();
		      return false;
		   }
	 if($.trim($("#member_region").val())==""){
		 alert("거주지역을 선택하세요!");
		 $("#member_region").val("").focus();
		 return false;
	 }	 
	 if($.trim($("#member_image1").val())==""){
		 alert("프로필 이미지 사진을 첨부하세요!");
		 $("#member_image1").val("").focus();
		 return false;
	 }	
	 if(email_checkResult==0){
		 alert("email 중복검사를 진행하세요!");
		 return false;
	 }
	 if(nickname_checkResult==0){
		 alert("닉네임 중복검사를 진행하세요!");
		 return false;
	 }
	
}


/* 도메인 선택시 input 칸에 자동입력 */
function domain_list() {
	
	if($("#mail_list").val()=="0"){
		$("#email_domain").val("").focus;	
		$("#email_domain").attr("readOnly",false);
	}else{
		$("#email_domain").val($("#mail_list").val());	
		$("#email_domain").attr("readOnly",true);	
	}
	
	email_checkResult = 0;
	
}	


/* email 중복 체크 */
function email_check(){
	$("#email_check").hide();//email_check span 아이디 영역을 숨긴다.
	var mememail=$("#email_id").val()+"@"+$("#email_domain").val();
	var memid=$("#email_id").val()
	
	//email 중복확인
    $.ajax({
        type:"POST",
        url:"member_emailcheck.do",
        data: {"mememail": mememail},        
        success: function (data) { 
      	  if(data==1){	//중복 email(data는 컨트롤러에서 result라는 변수로 공유된 member_idcheckResult의 출력값)	
      		var newtext='<font color="red">중복 email입니다.</font>';
      			$("#email_check").text('');
        		$("#email_check").show();
        		$("#email_check").append(newtext);
          		$("#email_id").val('').focus();
          		$("#email_domain").val('').focus();
          		return false;
	     
      	  }else{	//사용 가능한 email
      		if($("#email_id").val()==""){
      			var newtext='<font color="blue">중복검사를 위한 email를 입력해주세요.</font>';
	      		$("#email_check").text('');
	      		$("#email_check").show();
	      		$("#email_check").append(newtext);
	      		$("#email_id").focus();
	      		return false;
      		}else{
	      		var newtext='<font color="blue">사용가능한 email입니다.</font>';
	      		$("#email_check").text('');
	      		$("#email_check").show();
	      		$("#email_check").append(newtext);
	      		$("#member_pw").focus();
	      		email_checkResult = 1;
      		}
      	  }  	    	  
        }
        ,
    	  error:function(e){
    		  alert("data error"+e);
    	  }
      });//$.ajax
};
/*email 중복 체크 끝*/

/* email 중복 체크 후 email 칸에 새로운 내용을 입력했을 경우 */
function email_checkR(){
	email_checkResult = 0;
};




/* 닉네임 중복 체크 */
function nickname_check(){
	$("#nickname_check").hide();//nickname_check span 아이디 영역을 숨긴다.
	var memnick=$("#member_nickname").val();
	//email 중복확인
    $.ajax({
        type:"POST",
        url:"member_nickcheck.do",
        data: {"memnick":memnick},        
        success: function (data) { 
      	  if(data==1){	//중복 nickname (data는 컨트롤러에서 result라는 변수로 공유된 member_nickcheckResult의 출력값)
      		var newtext='<font color="red">중복 닉네임입니다.</font>';
      			$("#nickname_check").text('');
        		$("#nickname_check").show();
        		$("#nickname_check").append(newtext);
          		$("#nickname_id").val('').focus();
          		$("#nickname_domain").val('').focus();
          		return false;
	     
      	  }else{	//사용 가능한 nickname
      		if($("#member_nickname").val()==""){
      			var newtext='<font color="blue">중복검사를 위한 닉네임을 입력해주세요.</font>';
	      		$("#nickname_check").text('');
	      		$("#nickname_check").show();
	      		$("#nickname_check").append(newtext);
	      		$("#member_nickname").focus();
	      		return false;
      		}else {
	      		var newtext='<font color="blue">사용가능한 닉네임입니다.</font>';
	      		$("#nickname_check").text('');
	      		$("#nickname_check").show();
	      		$("#nickname_check").append(newtext);
	      		$("#member_mobile1").focus();
	      		nickname_checkResult = 1;
      		}
      	  }  	    	  
        }
        ,
    	  error:function(e){
    		  alert("data error"+e);
    	  }
      });//$.ajax	
};
/* 닉네임 중복 체크 끝 */

/* 닉네임 중복 체크 후 닉네임 칸에 새로운 내용을 입력했을 경우 */
function nickname_checkR(){
	nickname_checkResult = 0;
};


 /* 회원정보 수정 경고창 */
function edit_check(){
	if($.trim($("#member_pw").val())==""){
		 alert("회원 비밀번호를 입력하세요!");
		 $("#member_pw").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_pw1").val())==""){
		 alert("회원 비밀번호 확인을 입력하세요!");
		 $("#member_pw1").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_pw").val()) != $.trim($("#member_pw1").val())){
		 //!=같지않다 연산. 비번이 다를 경우
		 alert("비밀번호가 다릅니다!");
		 $("#member_pw").val("");
		 $("#member_pw1").val("");
		 $("#member_pw").focus();
		 return false;
	 }
	 if($.trim($("#member_nickname").val())==""){
		 alert("닉네임을 입력하세요!");
		 $("#member_nickname").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile1").val())==""){
		 alert("휴대전화번호 앞자리를 입력하세요!");
		 $("#member_mobile1").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile2").val())==""){
		 alert("휴대전화번호 중간자리를 입력하세요!");
		 $("#member_mobile2").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_mobile3").val())==""){
		 alert("휴대전화번호 마지막자리를 입력하세요!");
		 $("#member_mobile3").val("").focus();
		 return false;
	 }
	 if($.trim($("#member_old_nickname").val())!=$.trim($("#member_nickname").val())){
		 if(nickname_checkResult==0){
			 alert("닉네임 중복검사를 진행하세요!");
			 return false;
		 }
	 }	
}






 
 