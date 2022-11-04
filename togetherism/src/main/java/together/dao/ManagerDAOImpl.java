package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.ManagerDTO;
import together.model.MemberDTO;

@Repository
public class ManagerDAOImpl implements ManagerDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	//관리자 계정 정보 가져오기
	public ManagerDTO getManager (String manager_email) {
		return sqlSession.selectOne("managerns.getManager", manager_email);
	}
	
	//전체 회원의 수
	public int memberCount() {
		return sqlSession.selectOne("managerns.memberCount");
	}
	
	//전체 회원 목록 가져오기
	public List<MemberDTO> memberList(int page) {
		return sqlSession.selectList("managerns.memberList", page);
	}
	
	//특정 회원 1명의 정보 가져오기
	public MemberDTO getMember(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.getMember", member_email);
	}
	
	//특정 회원 강제 탈퇴
	public void memberDelete(MemberDTO member_email) {
		sqlSession.update("managerns.memberDelete", member_email);
		
	}
}
