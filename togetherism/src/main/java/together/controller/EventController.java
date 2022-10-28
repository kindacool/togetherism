package together.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
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
import together.service.SampleService;

@Controller
public class EventController {

	@Autowired
	private EventService eventService;
	
	@RequestMapping(value = "/event_create.do", method = RequestMethod.POST)
	public String eventCreate(@RequestParam("event_file0") MultipartFile mf,
			@ModelAttribute EventDTO event, 
			Model model,
			HttpSession session, HttpServletRequest request) throws Exception {
		
		System.out.println("Controller arrived");

		// club_num 을 문자 -> 숫자로
		int club_num_int = ((Integer)event.getClub_num()).intValue();
		event.setClub_num(club_num_int);
		
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
		
		// 첨부파일 업로드
		// mf.transferTo(new File("/path/"+fileName));
		String path = session.getServletContext().getRealPath("/upload");
		System.out.println("path : " + path);
		
		
		FileOutputStream fos = new FileOutputStream(path + "/" + newfilename);
		fos.write(mf.getBytes());
		fos.close();
		
		event.setEvent_file(newfilename);
		System.out.println(event.getEvent_file());
		
		int result = eventService.eventCreate(event);
		
		model.addAttribute("result", result);
		return "togetherview/sayhello"; // 추후 이벤트 리스트로 가는걸로 수정
	}
	
}
