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
		alert("비밀번호를입력하세요!");
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
	 if($.trim($("#member_region").val())==""){
		 alert("거주지역을 선택하세요!");
		 $("#member_region").val("").focus();
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
}
	

/* email 중복 체크*/
function email_check(){
	$("#email_check").hide();//email_check span 아이디 영역을 숨긴다.
	var mememail=$("#email_id").val()+"@"+$("#email_domain").val();

	//email 중복확인
    $.ajax({
        type:"POST",
        url:"member_emailcheck.do",
        data: {"mememail":mememail},        
        success: function (data) { 
      	  if(data==1){	//중복 email(data는 컨트롤러에서 result라는 변수로 공유된 member_idcheckResult의 출력값)
      		var newtext='<font color="red">중복 아이디입니다.</font>';
      			$("#email_check").text('');
        		$("#email_check").show();
        		$("#email_check").append(newtext);
          		$("#email_id").val('').focus();
          		$("#email_domain").val('').focus();
          		return false;
	     
      	  }else{	//사용 가능한 email
      		var newtext='<font color="blue">사용가능한 아이디입니다.</font>';
      		$("#email_check").text('');
      		$("#email_check").show();
      		$("#email_check").append(newtext);
      		$("#member_pw").focus();
      	  }  	    	  
        }
        ,
    	  error:function(e){
    		  alert("data error"+e);
    	  }
      });//$.ajax	
};
/*아이디 중복 체크 끝*/

 


 /* 회원정보 수정 경고창 */
function edit_check(){
	if($.trim($("#join_pwd1").val())==""){
		 alert("회원비번을 입력하세요!");
		 $("#join_pwd1").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_pwd2").val())==""){
		 alert("회원비번확인을 입력하세요!");
		 $("#join_pwd2").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_pwd1").val()) != $.trim($("#join_pwd2").val())){
		 //!=같지않다 연산. 비번이 다를 경우
		 alert("비번이 다릅니다!");
		 $("#join_pwd1").val("");
		 $("#join_pwd2").val("");
		 $("#join_pwd1").focus();
		 return false;
	 }
	 if($.trim($("#join_name").val())==""){
		 alert("회원이름을 입력하세요!");
		 $("#join_name").val("").focus();
		 return false;
	 }
	 /*if($.trim($("#join_zip1").val())==""){
		 alert("우편번호를 입력하세요!");
		 $("#join_zip1").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_zip2").val())==""){
		 alert("우편번호를 입력하세요!");
		 $("#join_zip2").val("").focus();
		 return false;
	 }*/
	 if($.trim($("#join_addr1").val())==""){
		 alert("주소를 입력하세요!");
		 $("#join_addr1").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_addr2").val())==""){
		 alert("나머지 주소를 입력하세요!");
		 $("#join_addr2").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_tel2").val())==""){
		 alert("전화번호를 입력하세요!");
		 $("#join_tel2").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_tel3").val())==""){
		 alert("전화번호를 입력하세요!");
		 $("#join_tel3").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_phone2").val())==""){
		 alert("휴대전화번호를 입력하세요!");
		 $("#join_phone2").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_phone3").val())==""){
		 alert("휴대전화번호를 입력하세요!");
		 $("#join_phone3").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_mailid").val())==""){
		 alert("메일 아이디를 입력하세요!");
		 $("#join_mailid").val("").focus();
		 return false;
	 }
	 if($.trim($("#join_maildomain").val())==""){
		 alert("메일 주소를 입력하세요!");
		 $("#join_maildomain").val("").focus();
		 return false;
	 }	 	 
}
 
 
 