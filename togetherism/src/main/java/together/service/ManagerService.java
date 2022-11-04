package together.service;

import java.util.List;

import together.model.ManagerDTO;
import together.model.MemberDTO;

public interface ManagerService {
	
	public ManagerDTO getManager(String manager_email);
	public int memberCount();
	public List<MemberDTO> memberList(int page);
	public MemberDTO getMember(MemberDTO member_email);
	public void memberDelete(MemberDTO member_email);

}
