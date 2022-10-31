package together.controller;

import java.io.File;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;


import together.model.MemberDTO;
import together.service.MemberService;


@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	
	/* ID중복검사 ajax함수로 처리부분 */
	@RequestMapping(value = "/member_emailcheck.do")
	public String member_idcheck(@RequestParam("mememail") String member_email, Model model) throws Exception {
		System.out.println(member_email);
		
		int result = memberService.checkMemberEmail(member_email);
		model.addAttribute("result", result);

		return "togetherview/member_idcheckResult";
	}
	
	/* 로그인 폼 뷰 */
	@RequestMapping(value = "/member_login.do")
	public String member_login() {
		return "togetherview/member_login";
		// togetherview 폴더의 member_login 뷰 페이지 실행
	}
	
	/* 회원가입 폼 */
	@RequestMapping(value = "/member_signup.do")
	public String member_signup() {
		System.out.println("member_signup.do컨트롤러");
		return "togetherview/member_signup";
		// togetherview 폴더의 member_signup 뷰 페이지 실행
	}
	
	/* 회원가입 */
	@RequestMapping(value = "/member_signup_ok.do")
	public String member_signup_ok(@RequestParam("member_image1") MultipartFile mf,
								   @RequestParam("email_id") String email_id,
								   @RequestParam("email_domain") String email_domain,
									MemberDTO member,
									HttpServletRequest request,
									Model model) throws Exception{
		System.out.println("member_signup_ok 컨트롤러");
		
		String filename = mf.getOriginalFilename();
		int size = (int) mf.getSize(); 	// 첨부파일의 크기 (단위:Byte) 

		String path = request.getRealPath("upload");
		System.out.println("mf=" + mf);
		System.out.println("filename=" + filename); // filename="Koala.jpg"
		System.out.println("size=" + size);
		System.out.println("Path=" + path);
		int result=0;
		
		String file[] = new String[2];
		
		String newfilename = "";
	
		if(size > 0){	 // 첨부파일이 전송된 경우	
			
			// 파일 중복문제 해결
			String extension = filename.substring(filename.lastIndexOf("."));
			System.out.println("extension:"+extension);
			
			UUID uuid = UUID.randomUUID();
			
			newfilename = uuid.toString() + extension;
			System.out.println("newfilename:"+newfilename);		
			
			StringTokenizer st = new StringTokenizer(filename, ".");
			file[0] = st.nextToken();		// 파일명		Koala
			file[1] = st.nextToken();		// 확장자	    jpg
			
			if(size > 100000){				// 100KB
				result=1;
				model.addAttribute("result", result);
				
				return "togetherview/member_uploadResult";
				
			}else if(!file[1].equals("jpg") &&
					 !file[1].equals("gif") &&
					 !file[1].equals("png") ){
				
				result=2;
				model.addAttribute("result", result);
				
				return "togetherview/member_uploadResult";
			}
		}	

		if (size > 0) { // 첨부파일이 전송된 경우
	
				mf.transferTo(new File(path + "/" + newfilename));
	
			}
		
		String mail_id = email_id.trim();
		String mail_domain = email_domain.trim();
		String mail_email = mail_id + "@" + mail_domain;
		
		
			member.setMember_email(mail_email);
			member.setMember_image(newfilename);
	
			memberService.insertMember(member);
	
			return "redirect:member_login.do";
		}
	
}
