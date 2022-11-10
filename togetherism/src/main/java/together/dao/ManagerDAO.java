package together.dao;

import java.util.List;

import together.model.ClubDTO;
import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.model.ReportDTO;

public interface ManagerDAO {
	
	public ManagerDTO getManager (String manager_email);
	public List<ManagerDTO> getManagerlist(String sessionValue);
	public int memberCount();
	public List<MemberDTO> memberList(int page);
	public List<MemberDTO> getSearch(MemberDTO memberDto);
	public int nowMemeber();
	public List<MemberDTO> nowmemberList(int page);
	public MemberDTO getMember(MemberDTO member_email);
	public int reportCount(MemberDTO member_email);
	public List<ClubDTO> getClub(MemberDTO member_email);
	public void memberDelete(MemberDTO member_email);
	
}
