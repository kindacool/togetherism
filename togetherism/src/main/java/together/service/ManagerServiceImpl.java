package together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.ManagerDAOImpl;
import together.model.ManagerDTO;
import together.model.MemberDTO;
import together.model.ReportDTO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerDAOImpl managerDao;
	
	//관리자 계정 정보 가져오기
	public ManagerDTO getManager (String manager_email) {
		return managerDao.getManager(manager_email);
	}
	
	//전체 회원의 수
	public int memberCount() {
		return managerDao.memberCount();
	}
	
	//전체 회원 목록 가져오기
	public List<MemberDTO> memberList(int page) {
		return managerDao.memberList(page);
	}
	
	//검색 목록 가져오기
	public List<MemberDTO> getSearch(MemberDTO memberDto) {
		return managerDao.getSearch(memberDto);
	}
	
	//검색 목록 숫자 구하기
	public int getSearchcount () {
		return managerDao.getSearchcount();
	}
	
	//특정 회원 1명의 정보 가져오기
	public MemberDTO getMember(MemberDTO member_email) {
		return managerDao.getMember(member_email);
	}
	
	//특정 회원 1명의 신고 횟수 가져오기
	public int reportCount(MemberDTO member_email) {
		return managerDao.reportCount(member_email);
	}
	
	//특정 회원 강제 탈퇴
	public void memberDelete(MemberDTO member_email) {
		managerDao.memberDelete(member_email);
		
	}
}
