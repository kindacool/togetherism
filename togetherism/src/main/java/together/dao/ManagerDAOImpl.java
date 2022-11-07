package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.model.ReportDTO;

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
	
	//검색 목록 가져오기
	public List<MemberDTO> getSearch(MemberDTO memberDto) {
		return sqlSession.selectList("managerns.getSearch", memberDto);
	}
	
	//검색 목록 숫자 구하기
	public int getSearchcount () {
		return sqlSession.selectOne("managerns.getSearchcount");
	}
	
	//특정 회원 1명의 정보 가져오기
	public MemberDTO getMember(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.getMember", member_email);
	}
	
	//특정 회원 1명의 신고 횟수 가져오기
	public int reportCount(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.reportCount", member_email);
	}
	
	//특정 회원 강제 탈퇴
	public void memberDelete(MemberDTO member_email) {
		sqlSession.update("managerns.memberDelete", member_email);
		
	}
}
