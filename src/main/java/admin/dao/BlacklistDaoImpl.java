package admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class BlacklistDaoImpl implements IBlacklistDao{
	
	private static IBlacklistDao blackDao = new BlacklistDaoImpl();
	
	private BlacklistDaoImpl() {
		
	}
	
	public static IBlacklistDao getInstance() {
		return blackDao;
	}

	@Override
	public List<UserVO> allBlacklist() {
		List<UserVO> blackList = new ArrayList<UserVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		try {
			blackList = session.selectList("admin.allBlackList");
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return blackList;
	}

	@Override
	public int updateBlacklist(String userId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.update("admin.updateBlacklist", userId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int deleteBlacklist(String userId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.update("admin.deleteBlacklist", userId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

}
