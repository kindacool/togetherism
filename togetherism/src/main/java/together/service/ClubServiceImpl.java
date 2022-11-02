package together.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import together.dao.ClubDAO;
import together.model.ClubDTO;

@Service
public class ClubServiceImpl implements ClubService{
	
	@Autowired
	private ClubDAO clubDao;
	
	
	@Transactional
	public int checkClubName(String cn) throws Exception{
		return clubDao.checkClubName(cn);
	}
	
//	@Transactional
	public void insertClub(ClubDTO club) throws Exception{
		clubDao.insertClub(club);
	}
	
//	@Transactional
	public int updateClub(ClubDTO cedit) throws Exception{
		return clubDao.updateClub(cedit);
	}
	
//	@Transactional
	public void deleteClub(int club_num) throws Exception{
		clubDao.deleteClub(club_num);
	}
	
	//내용 보기 
	public ClubDTO club_cont(int club_num) throws Exception{
		
		ClubDTO clubdto = clubDao.getClubCont(club_num);
		
		return clubdto;
	}
	
	//수정
	public void club(ClubDTO cedto) throws Exception{
		clubDao.updateClub(cedto);
	}


}