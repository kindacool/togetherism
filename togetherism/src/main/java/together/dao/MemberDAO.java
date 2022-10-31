package together.dao;

import together.model.MemberDTO;

public interface MemberDAO {

	public void insertMember(MemberDTO member) throws Exception;
	
	public int checkMemberEmail(String member_email) throws Exception;
}
