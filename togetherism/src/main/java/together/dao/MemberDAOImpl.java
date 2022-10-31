package together.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


import together.model.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Autowired
	private SqlSession sqlSession;

	@Override
	public void insertMember(MemberDTO member) throws Exception {
		// TODO Auto-generated method stub
		sqlSession.insert( "member_insert", member);
	}

	@Override
	public int checkMemberEmail(String member_email) throws Exception {
		// TODO Auto-generated method stub
	
		int re = -1;	// 사용 가능한 ID
		MemberDTO member = (MemberDTO) sqlSession.selectOne("member_email_check", member_email);
		
		if (member != null)
			re = 1; 	// 중복id
		return re;
	}
	
}
