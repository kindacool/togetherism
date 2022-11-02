package together.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.MemberDAOImpl;
import together.model.MemberDTO;

@Service
public class MemberServiceImpl implements MemberService{
	
	@Autowired
	private MemberDAOImpl memberDao;
	
	

	@Override
	public int checkMemberEmail(String member_email) throws Exception {
		// TODO Auto-generated method stub
		return memberDao.checkMemberEmail(member_email);
	}
	

	@Override
	public int checkMemberNickname(String member_nickname) throws Exception {
		// TODO Auto-generated method stub
		return memberDao.checkMemberNickname(member_nickname);
	} 

	@Override
	public void insertMember(MemberDTO member) throws Exception {
		// TODO Auto-generated method stub
		memberDao.insertMember(member);
	}

	@Override
	public MemberDTO userCheck(String email) throws Exception {
		// TODO Auto-generated method stub
		return memberDao.userCheck(email);
	
	}

	@Override
	public void updateMember(MemberDTO member) throws Exception{
		// TODO Auto-generated method stub
		memberDao.updateMember(member);
	}

	@Override
	public MemberDTO findPwd(MemberDTO member) throws Exception{
		// TODO Auto-generated method stub
		return memberDao.findPwd(member);
	}


	@Override
	public MemberDTO findemail(MemberDTO member) throws Exception{
		// TODO Auto-generated method stub
		return memberDao.findemail(member);
	}

	@Override
	public void deleteMember(MemberDTO member) throws Exception{
		// TODO Auto-generated method stub
		memberDao.deleteMember(member);
		
	}


	
}
