package together.service;

import java.util.List;

import together.model.EventDTO;

public interface EventService {
	// 이벤트 생성
	public int eventCreate(EventDTO event);
	
	// 이벤트 목록 출력 : 이벤트 개수 구하기
	public int getEventListCount();
	
	// 이벤트 목록 출력 : 이벤트 리스트 가져오기
	public List<EventDTO> getEventList(EventDTO event);
}
