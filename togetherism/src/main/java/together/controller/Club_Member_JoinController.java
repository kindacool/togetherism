package together.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.ExecutionException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import together.model.ClubDTO;
import together.model.Club_Member_JoinDTO;
import together.model.MemberDTO;
import together.service.Club_Member_JoinService;

@Controller
public class Club_Member_JoinController {

	@Autowired
	private Club_Member_JoinService club_Member_JoinService;
	
	// 일반 회원 모임 가입
	@RequestMapping(value = "/club_join.do", method = RequestMethod.GET)
	public String clubJoin(@ModelAttribute Club_Member_JoinDTO cmjdto, Model model) throws Exception {

		int result = 0;
		// 중복 가입 검사 : 모임가입테이블은 중복가입이 가능하므로 중복가입을 방지
		// 1. 세션 구하기 (현재는 Merge 가 안되었으므로 임의로 정함)
		String sess = "test1@gmail.com";
		cmjdto.setMember_email(sess);
		
		// 넘어오는 값 확인
		System.out.println("가입하려는 모임 번호 : " + cmjdto.getClub_num());
		System.out.println("가입인사 : " + cmjdto.getJoin_hello());
		System.out.println("가입하려는 멤버 이메일 : " + cmjdto.getMember_email());	
		model.addAttribute("club_num", cmjdto.getClub_num());

		// 3. 구한 세션으로 select
		Club_Member_JoinDTO cmj = club_Member_JoinService.getJoin(cmjdto);
		
		if(cmj != null) { // 데이터가 있을때, 즉 중복가입일때
			result = 2;
			model.addAttribute("result", result);
			return "togetherview/join_result"; // 중복가입 메세지
		} else { // 데이터가 없을때 가입 가능
			
			// 정원이 다 찼는지 확인
			// club 테이블과 연동, merge 후 수정
			ClubDTO clubdto = this.club_Member_JoinService.getClubCont(cmjdto.getClub_num());
			System.out.println(clubdto);
			
			// 정원이 다 차지 않았을때만 가입 가능
			if(clubdto.getClub_member_count() >= clubdto.getClub_member_limit()) {
				result = 3;
				model.addAttribute("result", result);
				return "togetherview/join_result";
			} else {
			
			// member 테이블 작업, merge 후 수정
			// 먼저 세션값인 이메일을 통해 Member 테이블 검색해서 멤버 프로필, 멤버 닉네임 가져오기
			// 가져와서 Setter 메소드로 cmjdto 객체에 세팅
			MemberDTO member = club_Member_JoinService.getMember(cmjdto.getMember_email());
			cmjdto.setMember_image(member.getMember_image());
			cmjdto.setMember_nickname(member.getMember_nickname());
			cmjdto.setClub_host_yn("N"); // 여기선 일반 회원 가입이므로 N 로 설정
			
			// 그 cmjdto 로 club_member_join 테이블에 insert 하기
			result = club_Member_JoinService.clubJoin(cmjdto);
			model.addAttribute("result", result);
			
			// 그 club 에 멤버수 +1 하기
			// club 테이블 작업, merge 후 수정
			club_Member_JoinService.updateMemberCount(cmjdto.getClub_num());
			
			return "togetherview/join_result";
			}
		}
		
	}
	
	// 가입된 회원 불러오기
	@RequestMapping(value = "/club_member.do", method = RequestMethod.GET)
	public String getclubMember(@RequestParam("club_num") int club_num, Model model) throws Exception {

		List<Club_Member_JoinDTO> memberlist = new ArrayList<Club_Member_JoinDTO>();
		memberlist = club_Member_JoinService.getClubMember(club_num);
		System.out.println(memberlist);
		model.addAttribute("memberlist", memberlist);
		return "togetherview/joined_member";
	}
	
	// club 테이블 작업, merge 이후 수정하기
	// 모임 상세정보 가져오기
	@RequestMapping(value = "/club_ct.do", method = RequestMethod.GET)
	public String clubCont(@RequestParam("club_num") int club_num, Model model) throws Exception{
		
		ClubDTO club = club_Member_JoinService.getClubCont(club_num);
		model.addAttribute("club", club);
		
		String clubInfobr = club.getClub_info().replace("\n", "<br>");
		model.addAttribute("clubInfobr", clubInfobr);
		
		return "togetherview/club_cont";
	}
	
	// 내가 가입한 모임
	@RequestMapping(value = "/joined_club.do", method = RequestMethod.GET)
	public String joinedClub(Model model) throws Exception{
		
		// 1. 세션 구하기 (현재는 Merge 가 안되었으므로 임의로 정함)
		String sess = "test1@gmail.com";
		// 구한 세션으로 해당 사람이 가입된 모든 cmjlist DTO 가져오기
		List<Club_Member_JoinDTO> cmjlist = club_Member_JoinService.getJoinedClub(sess);
		System.out.println(cmjlist);
		
		if (cmjlist.isEmpty()) { // 가입된 모임이 없다
		int result = 2;
		model.addAttribute("result", result);
		} else { // 가입된 모임이 있다
		// club 테이블 작업, merge 이후 수정하기
		List<ClubDTO> clist = club_Member_JoinService.getClubList(cmjlist);
		System.out.println(clist);
		model.addAttribute("clist", clist);
		}
		return "togetherview/joined_club";
	}
	
	// 모임 탈퇴
	@RequestMapping(value = "/leave_club.do", method = RequestMethod.GET)
	public String leaveClub(Model model, @ModelAttribute Club_Member_JoinDTO cmjdto) throws Exception{
		// 1. 세션 구하기 (현재는 Merge 가 안되었으므로 임의로 정함)
		String sess = "test1@gmail.com";
		cmjdto.setMember_email(sess);
		int result = 0;
		
		// 넘어온 값 확인
		System.out.println(cmjdto.getMember_email());
		System.out.println(cmjdto.getClub_num());
		
		// 모임장인지 확인하고, 모임장이 아닌 경우에만 탈퇴 가능
		String club_host_yn = club_Member_JoinService.getClubHostYN(cmjdto);
		System.out.println(club_host_yn);
		if(club_host_yn != null) {
			if(club_host_yn.equals("Y")) { // 모임장이면 탈퇴 불가, 모임 삭제를 해야하므로
				result = 2;
				model.addAttribute("result", result);
				return "toegherview/leave_club_result";
			} else if(club_host_yn.equals("N")) { // 모임장이 아닌경우 탈퇴 진행
			
				// 구한 세션으로 Club_Member_Join 테이블에서 해당 이메일인 데이터 삭제
				result = club_Member_JoinService.leaveClub(cmjdto);
				model.addAttribute("result", result);
				model.addAttribute("club_num", cmjdto.getClub_num());
			
				// 이후 club 테이블에서 update SQL문 
				// club 테이블 작업, merge 이후 수정하기
				club_Member_JoinService.minusMemberCount(cmjdto.getClub_num());
			
				return "togetherview/leave_club_result";
			}
		} else
			result = 3;
			model.addAttribute("result", result);
			return "togetherview/leave_club_result";
		}
	
	// 내가 운영하는 모임 리스트
	@RequestMapping(value = "/my_club.do", method = RequestMethod.GET)
	public String myClub(Model model) throws Exception{
		
		// 1. 세션 구하기 (현재는 Merge 가 안되었으므로 임의로 정함)
		String sess = "test1@gmail.com";
		// 구한 세션으로 해당 사람이 운영하는 모든 cmjlist DTO 가져오기
		List<Club_Member_JoinDTO> cmjlist = club_Member_JoinService.getMyClub(sess);
		System.out.println(cmjlist);
		
		if (cmjlist.isEmpty()) { // 내가 운영하는 모임이 없다
			int result = 2;
			model.addAttribute("result", result);
		} else { // 내가 운영하는 모임이 있다
			// club 테이블 작업, merge 이후 수정하기
			List<ClubDTO> clist = club_Member_JoinService.getClubList(cmjlist);
			System.out.println(clist);
			model.addAttribute("clist", clist);
		}
		return "togetherview/my_club";
	}

}
