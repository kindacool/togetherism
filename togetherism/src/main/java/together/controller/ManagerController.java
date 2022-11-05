package together.controller;

import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.avalon.framework.service.ServiceManager;
import org.apache.commons.mail.HtmlEmail;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.service.ManagerServiceImpl;

@Controller
public class ManagerController {
	@Autowired
	ManagerServiceImpl managerService;
	
	//관리자 로그인 폼 진입
	@RequestMapping("admin.do")
	public String manager_loginForm () {
		System.out.println("관리자 로그인 폼 진입");
		return "togetherview/manager_loginForm";
	}
	
	//관리자 로그인 정보 확인
	@RequestMapping(value= "manager_login.do", method=RequestMethod.POST)
	public String manager_login(String manager_email, 
								String manager_pw, 
								HttpSession session,
								Model model ) {
		
		System.out.println("관리자 로그인 실행 메소드 진입");
		
		//관리자 계정 정보 가져오기
		ManagerDTO managerDto = managerService.getManager(manager_email);
		int result = 0;
		System.out.println(managerDto);
		
		//폼에서 입력한 계정 정보와 DB에서 가져온 계정 정보 비교
		if ( managerDto == null) {	// DB에 정보가 없을 때
			result = -1;
			model.addAttribute("result", result);
			
			System.out.println("관리자 계정 없음");
			return "togetherview/manager_login_fail";
		} else { 					// DB에 정보가 있을 때
			
			if (managerDto.getManager_pw().equals(manager_pw)) {	// 비밀번호 일치
				
				System.out.println("관리자 로그인 성공");
				session.setAttribute("manager_email", manager_email);
				
				model.addAttribute("managerDto", managerDto);
				
				return "togetherview/manager_main";
//				return "redirect:manager_main.do";
			} else {
				
				System.out.println("관리자 로그인 실패");
				result = 1;
				model.addAttribute("result",result);
				
				return "togetherview/manager_login_fail";
			}
		} // if - else end
	}
	
//	@RequestMapping(value="manager_main.do", method=RequestMethod.POST)
	@RequestMapping("manager_main.do")
	public String manger_main (HttpSession session) {
		
		String manager_email = (String) session.getAttribute("manager_email");
		
		System.out.println("메인화면 진입");
		
		return "togetherview/manager_main";
	}
	
	//관리자 로그아웃
	@RequestMapping("manager_logout.do")
	public String manager_logout (HttpSession session) {
		
		session.invalidate();
		
		System.out.println("로그아웃 성공");
		
		return "redirect:admin.do";
	}

	
	//회원관리 리스트 진입
	@RequestMapping("manager_list.do")
	public String manager_list(HttpServletRequest request, Model model) {
		
		//page : 현재 페이지, limit : 한 화면에 출력할 목록
		int page = 1;
		int limit = 10;
		
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}
		
		//총 데이터 개수
		int memberCount = managerService.memberCount();
		System.out.println("총 회원수: "+memberCount);
		
		//회원 목록 전체
		List<MemberDTO> memberList = managerService.memberList(page);
		System.out.println("회원 목록 구해오기 성공");
		
		//1 블럭당 페이지 개수
		int pageCount = memberCount / limit + ((memberCount%limit == 0) ? 0 : 1);
		int startPage = ((page - 1) / 10) * limit + 1;	// 1, 11, 21,
		int endPage = startPage + 10 - 1;
		
		if (endPage > pageCount) endPage = pageCount;
		
		model.addAttribute("page", page);
		model.addAttribute("memberCount", memberCount);
		model.addAttribute("memberList", memberList);
		model.addAttribute("pageCount", pageCount);
		model.addAttribute("startPage", startPage);
		model.addAttribute("endPage", endPage);
		
		System.out.println("전체 회원 목록 출력 성공");
		
		return "togetherview/manager_list";
	}
	
	//회원 1명의 상세정보
	@RequestMapping("manager_deleteForm.do")
	public String manager_memberView (MemberDTO member_email, Model model) {
		
		System.out.println("회원 상세정보 컨트롤러 진입");
		
		//회원이메일을 매개로 1명의 상세정보 구해오기 메소드
		MemberDTO memberDto = managerService.getMember(member_email);
		System.out.println("회원 상세정보 구해오기 성공");
		
		model.addAttribute("memberDto", memberDto);
		
		return "togetherview/manager_deleteForm";
	}
	
	//회원 1명 강제탈퇴 시키기 (member_del_yn 컬럼 값 변경)
	@RequestMapping("manager_delete.do")
	public String manager_delete (MemberDTO memberDto, Model model) {
		
		System.out.println("회원 삭제 메소드 진입");
		
		//회원이메일을 매개로 member_del_yn 컬럼 값을 'y'로 변경하는 메소드
		managerService.memberDelete(memberDto);
		System.out.println("삭제 메소드 호출 성공");
		
		return "togetherview/manager_delete";
	}
	
	//Q&A 페이지 진입
	@RequestMapping("qna.do")
	public String qna () {
		System.out.println("Q&A 페이지 진입");
		
		return "togetherview/qna";
	}
	
	//Q&A 메일 전송 미리보기
	@RequestMapping("before_mail.do")
	public String before_mail (String qna_category,
							   String member_nickname,
							   String member_email,
							   String mail_subject,
							   String mail_content,
							   Model model) {
		
		System.out.println(qna_category);
		
		model.addAttribute("qna_category", qna_category);
		model.addAttribute("member_nickname", member_nickname);
		model.addAttribute("member_email", member_email);
		model.addAttribute("mail_subject", mail_subject);
		model.addAttribute("mail_content", mail_content);
		
		return "togetherview/before_mail";
	}
	
	//Q&A 페이지에서 메일 전송 요청
	@RequestMapping(value= "mail.do", method = RequestMethod.POST)
	public String mail (String qna_category,
						String member_nickname,
						String member_email,
						String mail_subject,
						String mail_content,
						HttpServletResponse response, 
						Model model) throws Exception{
		
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		System.out.println("메일 보내기 진입");
		
		System.out.println("분류:"+qna_category);
		System.out.println("작성자:"+member_nickname);
		System.out.println("메일주소:"+member_email);
		System.out.println("제목:"+mail_subject);
		
		String mail_content1 = mail_content.replace("\n", "<br>");
		
		/*
		 * 관리자에게 이용자 문의 발송
		 */
		
		String charSet = "utf-8";
		String hostSMTP = "smtp.naver.com";
		String hostSMTPid = "milkysea39@naver.com";	// 메일주소 입력
		String hostSMTPpwd = "Sh**ting7!"; 		// 로그인 비밀번호 입력

		// 보내는 사람 EMail, 제목, 내용
		String fromEmail = hostSMTPid;	// 관리자 이메일
		String fromName = "관리자";	// 관리자 발송 이름
		String subject = "["+qna_category+"] "+mail_subject;	// 문의 메일 제목
		String content = mail_content1;	// 문의 메일 내용

		// 받는 사람 E-Mail 주소
		String mail = hostSMTPid;
		String nickname = fromName;

		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(charSet);
			email.setSSL(true);
			email.setHostName(hostSMTP);
			email.setSmtpPort(465);

			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			email.setTLS(true);
			email.addTo(mail, charSet);
			email.setFrom(fromEmail, fromName, charSet);
			email.setSubject(subject);
			email.setHtmlMsg(content);		// 발송 완료 메일 본문
			email.send();
			
		} catch (Exception e) {
			System.out.println(e);
		}		
		
		/*
		 * 문의 접수 안내 메일 
		 */
		
		// Mail Server 설정
		String admin_charSet = "utf-8";
		String admin_hostSMTP = "smtp.naver.com";
		String admin_hostSMTPid = "milkysea39@naver.com";	// 메일주소 입력
		String admin_hostSMTPpwd = "Sh**ting7!"; 		// 로그인 비밀번호 입력

		// 보내는 사람 EMail, 제목, 내용
		// 발송 완료 안내메일
		String admin_fromEmail = hostSMTPid;	// 관리자 이메일
		String admin_fromName = "관리자";	// 관리자 발송 이름
		String admin_subject = "[Togetherism] 문의 메일이 발송 완료 되었습니다.";	// 관리자 메일 제목
		String admin_content = "내용을 확인 후 회신 드리겠습니다. 감사합니다.";	// 관리자 메일 내용

		// 받는 사람 E-Mail 주소
		String admin_mail = member_email;
		String admin_nickname = member_nickname;

		try {
			HtmlEmail email = new HtmlEmail();
			email.setDebug(true);
			email.setCharset(admin_charSet);
			email.setSSL(true);
			email.setHostName(admin_hostSMTP);
			email.setSmtpPort(465);

			email.setAuthentication(admin_hostSMTPid, admin_hostSMTPpwd);
			email.setTLS(true);
			email.addTo(admin_mail, admin_charSet);
			email.setFrom(admin_fromEmail, admin_fromName, admin_charSet);
			email.setSubject(admin_subject);
			email.setHtmlMsg(admin_content);		// 발송 완료 메일 본문
			email.send();
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		model.addAttribute("qna_category", qna_category);
		model.addAttribute("member_nickname", member_nickname);
		model.addAttribute("member_email", member_email);
		model.addAttribute("mail_subject", mail_subject);
		model.addAttribute("mail_content1", mail_content1);
		
		return "togetherview/qna_mailResult";
//		return "redirect:togetherview/qna_mail";
	}
}
