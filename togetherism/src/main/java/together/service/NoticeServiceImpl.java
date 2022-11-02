package together.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import together.dao.NoticeDAO;
import together.dao.NoticeDAOImpl;
import together.model.NoticeDTO;

@Service
public class NoticeServiceImpl {
	@Autowired
	private NoticeDAOImpl noticeDao;
	
	public int insert (NoticeDTO noticeDto){
		return noticeDao.insert(noticeDto);
	}
	
	public int getCount(){
		return noticeDao.getCount();
	}
	
	public List<NoticeDTO> getNoticeList (int page) {
		return noticeDao.getNoticeList(page);
	}
	
	public NoticeDTO getNotice (int notice_num){
		return noticeDao.getNotice(notice_num);
	}
	
	public int delete (int no){
		return noticeDao.delete(no);
	}
	
	public int update (NoticeDTO noticeDto){
		return noticeDao.update(noticeDto);
	}

}
