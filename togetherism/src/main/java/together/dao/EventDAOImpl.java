package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.EventDTO;

@Repository
public class EventDAOImpl implements EventDAO {
	
	@Autowired
	private SqlSession sqlSession;
	
	public int eventCreate(EventDTO event) {
		System.out.println(event.getClub_host_email());
		System.out.println(event.getClub_num());
		System.out.println(event.getEvent_file());
		System.out.println(event.getEvent_info());
		System.out.println(event.getEvent_num());
		System.out.println(event.getEvent_spot_lat());
		System.out.println(event.getEvent_spot_long());
		System.out.println(event.getEvent_title());
		System.out.println(event.getEvent_date());
		System.out.println(event.getEvent_reg_date());
		return sqlSession.insert("eventns.create",event);
	}
	
	public int getEventListCount(EventDTO event) {
		return sqlSession.selectOne("eventns.listcount", event);
	}
	
	public List<EventDTO> getEventList(EventDTO event){
		return sqlSession.selectList("eventns.eventlist", event);
	}
}
