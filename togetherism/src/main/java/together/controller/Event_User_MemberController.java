package together.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import together.model.Club_Member_JoinDTO;
import together.model.Event_User_AttendDTO;
import together.service.Event_User_AttendServiceImpl;

@Controller
public class Event_User_MemberController {
	
	@Autowired
	private Event_User_AttendServiceImpl euaService;
	
	/* 이벤트 참석 이력 */
	@RequestMapping(value = "/event_user_attend_check.do", method = RequestMethod.GET)
	public String event_user_attend_check(int event_num,
											int club_num,
											HttpSession session,
											Model model) throws Exception{
		int result = -1; 		
		String email = (String) session.getAttribute("email");

		
		//모임 가입 여부 검색
		Club_Member_JoinDTO cmjdto = new Club_Member_JoinDTO();
		cmjdto.setClub_num(club_num);
		cmjdto.setMember_email(email);
		
		Club_Member_JoinDTO join = euaService.joinCheck(cmjdto);
		
		
		//이벤트 참석 이력 검색 
		Event_User_AttendDTO euadto = new Event_User_AttendDTO();
		euadto.setEvent_num(event_num);
		euadto.setMember_email(email);
		
		Event_User_AttendDTO attend = euaService.attendCheck(euadto);
		
		if(join != null) {	// 모임에 가입한 사람	
			if(attend == null ) {	// 모임에 가입했는데 이벤트에 참석하지 않은 사람
				result = 0;
			}else {					// 모임에 가입했는데 이벤트에 참석한 사람
				result = 1;
			}
		}
		
		
		// 모임에 가입하지 않은 사람: result = -1
		
		model.addAttribute("result", result);
		model.addAttribute("event_num", event_num);
		model.addAttribute("club_num", club_num);
		
		return "togetherview/Event_User_Attend_Button";
	}
	
	
	/* 이벤트 참여 */
	@RequestMapping(value = "/event_user_attend_ok.do", method = RequestMethod.GET)
	public String event_user_attend_ok(int event_num,
										int club_num,
										HttpSession session,
										Model model) throws Exception{
		
		String email = (String) session.getAttribute("email");
		
		Event_User_AttendDTO euadto = new Event_User_AttendDTO();
		euadto.setEvent_num(event_num);
		euadto.setMember_email(email);
		
		int result1 = euaService.attendInsert(euadto);
		
		model.addAttribute("result1", result1);
		model.addAttribute("event_num", event_num);
		model.addAttribute("club_num", club_num);
		
		return "togetherview/Event_User_Attend_result";
	}
	
	
	/* 이벤트 참여 취소 */
	@RequestMapping(value = "/event_user_attend_no.do", method = RequestMethod.GET)
	public String event_user_attend_no(int event_num,
										int club_num,
										HttpSession session,
										Model model) throws Exception{
		
		String email = (String) session.getAttribute("email");
		
		Event_User_AttendDTO euadto = new Event_User_AttendDTO();
		euadto.setEvent_num(event_num);
		euadto.setMember_email(email);
		
		int result2 = euaService.attendDelete(euadto);
		
		model.addAttribute("result2", result2);
		model.addAttribute("event_num", event_num);
		model.addAttribute("club_num", club_num);
		
		return "togetherview/Event_User_Attend_result";
	}
	
	
}
