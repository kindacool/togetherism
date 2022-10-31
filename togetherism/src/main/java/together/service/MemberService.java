package together.service;

import together.model.MemberDTO;


	public interface MemberService {
	
	public void insertMember(MemberDTO member) throws Exception;

	public int checkMemberEmail(String member_email) throws Exception;
	

}
