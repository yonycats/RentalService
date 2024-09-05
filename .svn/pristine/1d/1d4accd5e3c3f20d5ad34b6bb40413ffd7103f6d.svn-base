package admin.service;

import java.util.List;

import admin.dao.BlacklistDaoImpl;
import admin.dao.IBlacklistDao;
import kr.or.ddit.vo.UserVO;

public class BlacklistServiceImpl implements IBlacklistService{
	
	private static IBlacklistService blackService = new BlacklistServiceImpl();
	
	private IBlacklistDao blackDao;
	
	public BlacklistServiceImpl() {
		blackDao = BlacklistDaoImpl.getInstance();
	}
	
	public static IBlacklistService getInstnace() {
		return blackService;
	}

	@Override
	public List<UserVO> allBlacklist() {
		return blackDao.allBlacklist();
	}

	@Override
	public int updateBlacklist(String userId) {
		return blackDao.updateBlacklist(userId);
	}

	@Override
	public int deleteBlacklist(String userId) {
		return blackDao.deleteBlacklist(userId);
	}

}
