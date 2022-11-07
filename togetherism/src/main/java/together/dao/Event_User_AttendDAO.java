package together.dao;

import together.model.Club_Member_JoinDTO;
import together.model.Event_User_AttendDTO;

public interface Event_User_AttendDAO {

	public Event_User_AttendDTO attendCheck(Event_User_AttendDTO euadto) throws Exception;
	
	public Club_Member_JoinDTO joinCheck(Club_Member_JoinDTO cmjdto) throws Exception;
	
	public int attendInsert(Event_User_AttendDTO euadto) throws Exception;
	
	public int attendDelete(Event_User_AttendDTO euadto) throws Exception;
}
