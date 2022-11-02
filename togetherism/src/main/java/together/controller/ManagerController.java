package together.controller;

import java.util.List;

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
	public String manager_list(Model model) {
		
		List<MemberDTO> memberList = managerService.memberList();
		
		System.out.println("회원 목록 구해오기 성공");
		
		model.addAttribute("memberList", memberList);
		
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
		
//		MemberDTO memberDto = managerService.getMember(member_email);
//		System.out.println("삭제할 회원 정보 구해오기");
		//manager_deleteForm에서 받아온 탈퇴사유 member_del_reason을 DTO에 주입
//		memberDto.setMember_del_reason(memberDto.getMember_email());
		System.out.println("삭제 메소드 호출");
		//회원이메일을 매개로 member_del_yn 컬럼 값을 'y'로 변경하는 메소드
		managerService.memberDelete(memberDto);
//		managerService.memberDelete(memberDto.get);
		
		return "togetherview/manager_delete";
	}
}
