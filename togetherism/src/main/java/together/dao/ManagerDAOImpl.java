package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.MemberDTO;

@Repository
public class ManagerDAOImpl implements ManagerDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	public List<MemberDTO> memberList() {
		return sqlSession.selectList("managerns.memberList");
	}
	
	public MemberDTO getMember(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.getMember", member_email);
	}
	
	public void memberDelete(MemberDTO member_email) {
		sqlSession.update("managerns.memberDelete", member_email);
	}

}
