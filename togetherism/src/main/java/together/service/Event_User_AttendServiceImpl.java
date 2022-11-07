package together.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.Event_User_AttendDAOImpl;
import together.model.Club_Member_JoinDTO;
import together.model.Event_User_AttendDTO;

@Service
public class Event_User_AttendServiceImpl implements Event_User_AttendService {
	
	@Autowired
	private Event_User_AttendDAOImpl euaDAO;

	@Override
	public Event_User_AttendDTO attendCheck(Event_User_AttendDTO euadto) throws Exception {
		// TODO Auto-generated method stub

		return euaDAO.attendCheck(euadto);
	}

	@Override
	public Club_Member_JoinDTO joinCheck(Club_Member_JoinDTO cmjdto) throws Exception {
		// TODO Auto-generated method stub
		return euaDAO.joinCheck(cmjdto);
	}

	@Override
	public int attendInsert(Event_User_AttendDTO euadto) throws Exception {
		// TODO Auto-generated method stub
		return euaDAO.attendInsert(euadto);
	}

	@Override
	public int attendDelete(Event_User_AttendDTO euadto) throws Exception {
		// TODO Auto-generated method stub
		return euaDAO.attendDelete(euadto);
	}
	
	
	
}
