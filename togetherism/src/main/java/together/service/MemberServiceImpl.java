package together.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.MemberDAO;
import together.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAO memberDao;
	

	@Override
	public void insertMember(MemberDTO member) throws Exception {
		// TODO Auto-generated method stub
		memberDao.insertMember(member);
	}


	@Override
	public int checkMemberEmail(String member_email) throws Exception {
		// TODO Auto-generated method stub
		return memberDao.checkMemberEmail(member_email);
	} 

	

	
}
