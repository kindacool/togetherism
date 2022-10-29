package together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.EventDAO;
import together.model.EventDTO;

@Service
public class EventServiceImpl implements EventService{

	@Autowired
	private EventDAO eventDao;
	
	
	public int eventCreate(EventDTO event) {
		return eventDao.eventCreate(event);
	}
	
	public int getEventListCount() {
		return eventDao.getEventListCount();
	}
	
	public List<EventDTO> getEventList(EventDTO event){
		return eventDao.getEventList(event);
	}
}
