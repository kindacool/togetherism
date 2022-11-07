package together.dao;

import java.util.List;

import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.model.ReportDTO;

public interface ManagerDAO {
	
	public ManagerDTO getManager (String manager_email);
	public int memberCount();
	public List<MemberDTO> memberList(int page);
//	public int getSearch (SearchDTO searchDto);
	public List<MemberDTO> getSearch(MemberDTO memberDto);
	public int getSearchcount ();
	public MemberDTO getMember(MemberDTO member_email);
	public int reportCount(MemberDTO member_email);
	public void memberDelete(MemberDTO member_email);
	
}
