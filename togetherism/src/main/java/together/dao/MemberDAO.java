package together.dao;

import together.model.MemberDTO;

public interface MemberDAO {
	
	public int checkMemberEmail(String member_email) throws Exception;
	
	public int checkMemberNickname(String member_nickname) throws Exception;

	public void insertMember(MemberDTO member) throws Exception;
	
	public MemberDTO userCheck(String email) throws Exception;

	public void updateMember(MemberDTO member) throws Exception;

	public MemberDTO findPwd(MemberDTO member) throws Exception;

	public MemberDTO findemail(MemberDTO member) throws Exception;

	public void deleteMember(MemberDTO member) throws Exception;
}
