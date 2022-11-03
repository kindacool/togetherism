package together.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.avalon.framework.service.ServiceManager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import together.model.MemberDTO;
import together.service.ManagerServiceImpl;

@Controller
public class ManagerController {
	@Autowired
	ManagerServiceImpl managerService;
	
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
}
