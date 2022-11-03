package together.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import together.model.NoticeDTO;

@Repository
public class NoticeDAOImpl implements NoticeDAO{
	
	@Autowired
	private SqlSession sqlSession;
	
	public int insert (NoticeDTO noticeDto) {
		return sqlSession.insert("noticens.insert", noticeDto);
	}
	
	public int getCount () {
		return sqlSession.selectOne("noticens.count");
	}
	
	public List<NoticeDTO> getNoticeList (int page) {
		return sqlSession.selectList("noticens.list", page);
	}
	
	public NoticeDTO getNotice (int notice_num) {
		return sqlSession.selectOne("noticens.content", notice_num);
	}
	
	public int delete (int no) {
		return sqlSession.delete("noticens.delete", no);
	}
	
	public int update (NoticeDTO noticeDto) {
		return sqlSession.update("noticens.update", noticeDto);
	}
	
	// 공지사항 수정폼에서 첨부파일 삭제
	public int fileDelete (int notice_num) {
		return sqlSession.update("noticens.fileDelete", notice_num);
	}

}
