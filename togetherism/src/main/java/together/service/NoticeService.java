package together.service;

import java.util.List;

import together.model.NoticeDTO;

public interface NoticeService {
	
	public int insert (NoticeDTO noticeDto);
	public int getCount();
	public List<NoticeDTO> getNoticeList (int page);
	public NoticeDTO getNotice (int notice_num);
	public int delete (int no);
	public int update1 (NoticeDTO noticeDto);
	public int update2 (NoticeDTO noticeDto);
	public int update (NoticeDTO noticeDto);

}
