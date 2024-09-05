package notice.service;

import java.util.List;

import kr.or.ddit.vo.NoticeVO;
import notice.dao.INoticeDao;
import notice.dao.NoticeDaoImpl;

public class NoticeServiceImpl implements INoticeService {
	
	private static INoticeService ntcService = new NoticeServiceImpl();

	private INoticeDao ntcDao;
	
	public NoticeServiceImpl() {
		ntcDao = NoticeDaoImpl.getInstance();
	}
	
	public static INoticeService getInstance() {
		return ntcService;
	}

	@Override
	public int insertNotice(NoticeVO nv) {
		return ntcDao.insertNotice(nv);
	}

	@Override
	public int updateNotice(NoticeVO nv) {
		return ntcDao.updateNotice(nv);
	}

	@Override
	public int deleteNotice(String ntcId) {
		return ntcDao.deleteNotice(ntcId);
	}

	@Override
	public List<NoticeVO> allNoticeList() {
		return ntcDao.allNoticeList();
	}

	@Override
	public NoticeVO detailNotice(String ntcId) {
		return ntcDao.detailNotice(ntcId);
	}

}
