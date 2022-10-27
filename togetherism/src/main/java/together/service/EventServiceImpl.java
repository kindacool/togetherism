package together.service;

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
}
