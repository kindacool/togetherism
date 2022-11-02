package together.service;

import together.model.ClubDTO;

public interface ClubService {
	
	public int checkClubName(String cn) throws Exception;
	
	public void insertClub(ClubDTO club) throws Exception;
	
	public int updateClub(ClubDTO cedit) throws Exception;
	
	public void deleteClub(int club_num) throws Exception;
	
	public ClubDTO club_cont(int club_num) throws Exception;
	
	public void club(ClubDTO cedto) throws Exception;
		
	
}
