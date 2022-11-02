package together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.ManagerDAOImpl;
import together.model.MemberDTO;

@Service
public class ManagerServiceImpl implements ManagerService {
	
	@Autowired
	ManagerDAOImpl managerDao;
	
	public List<MemberDTO> memberList() {
		return managerDao.memberList();
	}
	
	public MemberDTO getMember(MemberDTO member_email) {
		return managerDao.getMember(member_email);
	}
	
	public void memberDelete(MemberDTO member_email) {
		managerDao.memberDelete(member_email);
	}

}
