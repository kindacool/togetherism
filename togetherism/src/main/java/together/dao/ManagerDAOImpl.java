package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.ClubDTO;
import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.model.ReportDTO;

@Repository
public class ManagerDAOImpl implements ManagerDAO {
	
	@Autowired
	SqlSession sqlSession;
	
	//관리자 1명의 정보 가져오기
	public ManagerDTO getManager (String manager_email) {
		return sqlSession.selectOne("managerns.getManager", manager_email);
	}
	
	//관리자 전체 정보 가져오기
	public List<ManagerDTO> getManagerlist (String sessionValue) {
		return sqlSession.selectList("manager.getManagerlist", sessionValue);
	}
	
	//전체 회원의 수
	public int memberCount() {
		return sqlSession.selectOne("managerns.memberCount");
	}
	
	//전체 회원 목록 가져오기
	public List<MemberDTO> memberList(int page) {
		return sqlSession.selectList("managerns.memberList", page);
	}
	
	//이메일, 닉네임 검색 목록 가져오기
	public List<MemberDTO> getSearch(MemberDTO memberDto) {
		return sqlSession.selectList("managerns.getSearch", memberDto);
	}
	
	//현재 활동중인 회원의 수
	public int nowMemeber() {
		return sqlSession.selectOne("managerns.nowMember");
	}
	
	//현재 활동중인 회원 목록 가져오기
	public List<MemberDTO> nowmemberList(int page) {
		return sqlSession.selectList("managerns.nowmemberList", page);
	}
	
	//특정 회원 1명의 정보 가져오기
	public MemberDTO getMember(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.getMember", member_email);
	}
	
	//특정 회원 1명의 신고 횟수 가져오기
	public int reportCount(MemberDTO member_email) {
		return sqlSession.selectOne("managerns.reportCount", member_email);
	}
	
	//특정 회원의 모임장 리스트 가져오기
	public List<ClubDTO> getClub(MemberDTO member_email) {
		return sqlSession.selectList("managerns.getClub", member_email);
	}
	
	//특정 회원 강제 탈퇴
	public void memberDelete(MemberDTO member_email) {
		sqlSession.update("managerns.memberDelete", member_email);
		
	}
}
