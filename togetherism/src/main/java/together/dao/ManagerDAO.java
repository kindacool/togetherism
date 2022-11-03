package together.dao;

import java.util.List;

import together.model.MemberDTO;

public interface ManagerDAO {
	
	public List<MemberDTO> memberList(int page);
	public MemberDTO getMember(MemberDTO member_email);
	public void memberDelete(MemberDTO member_email);
	public int memberCount();

}
