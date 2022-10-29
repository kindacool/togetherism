package together.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import together.model.EventDTO;
import together.service.EventService;
import together.service.PagingPgm;
import together.service.SampleService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	@RequestMapping(value = "/event_create.do", method = RequestMethod.POST)
	public String eventCreate(@RequestParam("event_file0") MultipartFile mf,
			@ModelAttribute EventDTO event,
			@RequestParam("club_num0") int club_num0,
			Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		
		System.out.println("Controller arrived");
		System.out.println("여기" + event.getEvent_title());

		// 현재는 club 이 구현되지 않아 club_num 이 넘어오지 않으므로, 임의로 넣은 숫자
		event.setClub_num(club_num0);
		
		// 날짜 처리
		String event_date_date = request.getParameter("event_date_date");
		String event_date_time = (String)request.getParameter("event_date_time");
		
		String event_date = event_date_date + " " + event_date_time;
		SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date to_event_date = transFormat.parse(event_date);
		
		event.setEvent_date(to_event_date);
//		System.out.println(to_event_date);
		
		// 첨부파일 처리
		String fileName = mf.getOriginalFilename();
		int fileSize = (int) mf.getSize(); // 단위 : Byte
		System.out.println(fileName);
		
		int err = 0;
		String file[] = new String[2];
		String newfilename = "";
		
		if(fileName != "") { // 첨부파일이 전송된 경우
			//파일 중복문제 해결
			String extension = fileName.substring(fileName.lastIndexOf("."), fileName.length());
			System.out.println("extension: " + extension);
			
			UUID uuid = UUID.randomUUID();
			
			newfilename = uuid.toString() + extension;
			System.out.println("newfilename; " + newfilename);
			
			StringTokenizer st = new StringTokenizer(fileName, ".");
			file[0] = st.nextToken(); // 파일명
			file[1] = st.nextToken(); // 확장자
			
			if(fileSize > 1000000) { // 1MB
				err = 1;
				model.addAttribute("err", err);
				
				return "togetherview/event_file_upload_result";
			}
		}
		
		if(fileName != "") { // 첨부파일이 전송된 경우
		// 첨부파일 업로드
		// mf.transferTo(new File("/path/"+fileName));
		String path = session.getServletContext().getRealPath("/upload");
		System.out.println("path : " + path);
		
		
		FileOutputStream fos = new FileOutputStream(path + "/" + newfilename);
		fos.write(mf.getBytes());
		fos.close();
		
		event.setEvent_file(newfilename);
		System.out.println(event.getEvent_file());
		}
		int result = eventService.eventCreate(event);
		
		return "redirect:/event_list.do"; // 이벤트 리스트 목록 불러오기
	}
	
	@RequestMapping(value = "/event_list.do", method = RequestMethod.GET)
	public String eventList(Model model, EventDTO event, HttpServletRequest request) throws Exception {
		System.out.println("Controller arrived");
		List<EventDTO> eventlist = new ArrayList<EventDTO>();
		
		// 키워드가 넘어왔는지 확인
		System.out.println("키워드 : " + event.getKeyword()); // 안넘어왔을때 null, String 형
		// club_num 즉 모임명이 넘어왔는지 확인
		System.out.println("모임 : " + event.getClub_num()); // 안넘어왔을때 0, int형
		// 지역명이 넘어왔는지 확인
		System.out.println("지역 : " + event.getEvent_region()); // 안넘어왔을떄 null, String 형
		
		int page = 1;
		int limit = 10;
		
		// 페이지 값이 넘어온 경우엔 그 값을 페이지 번호로 지정
		if (request.getParameter("page") != null) {
			page = Integer.parseInt(request.getParameter("page"));
		}

		// 총 이벤트 수를 받아옴.
		int listcount = eventService.getEventListCount();
		System.out.println("총 이벤트 수 " + listcount);
		
		int startRow = (page - 1) * limit + 1; // 1, 11, 21, 31
		int endRow = startRow + limit - 1; // 10, 20, 30, 40

		// 나머지 파생변수들을 구함
		PagingPgm pp = new PagingPgm(listcount, limit, page);
		event.setStartRow(startRow);
		event.setEndRow(endRow);
		int no = listcount - startRow + 1;		// 화면 출력 번호
		
		eventlist = eventService.getEventList(event); // 리스트를 받아옴.
		System.out.println(eventlist);
				
		// 가져온 이벤트 리스트
		model.addAttribute("eventlist", eventlist);
		// 화면 출력 번호
		model.addAttribute("no", no);
		// 데이터 갯수, 화면에 출력할 데이터 갯수, 블랙덩 페이지 갯수, 현재 페이지 번호,
		// 각 블럭의 시작 페이지, 각 블럭의 끝 페이지, 총 페이지수 
		model.addAttribute("pp", pp);
		// 검색
		model.addAttribute("keyword", event.getKeyword());
		model.addAttribute("club_num", event.getClub_num());

		return "togetherview/event_list"; // 이후 리스트 출력하는 페이지로 가는걸로 수정
	}
}
