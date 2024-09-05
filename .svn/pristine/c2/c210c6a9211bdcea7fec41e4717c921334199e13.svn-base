package recentItem.service;

import java.util.List;

import kr.or.ddit.vo.RecentItemVO;
import recentItem.dao.RecentItemDao;

public class RecentItemService {
	private static RecentItemService recentItemService = new RecentItemService();

	private RecentItemDao recentItemDao;

	public RecentItemService() {
		recentItemDao = RecentItemDao.getInstance();
	}

	public static RecentItemService getInstance() {
		return recentItemService;
	}
	
	public String getMaxRetId(){
		return recentItemDao.getMaxRetId();
	}
	
	public List<RecentItemVO> getRecentItemList(RecentItemVO rv){
		return recentItemDao.getRecentItemList(rv);
	}
	
	public int insertRet(RecentItemVO rv) {
		return recentItemDao.insertRet(rv);
	}
	
}
