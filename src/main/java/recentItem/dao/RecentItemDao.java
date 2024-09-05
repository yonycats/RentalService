package recentItem.dao;

import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.RecentItemVO;
import util.MyBatisUtil;

public class RecentItemDao {
	private static RecentItemDao recentItemDao = new RecentItemDao();

	private RecentItemDao() {

	}

	public static RecentItemDao getInstance() {
		return recentItemDao;
	}
	
	public String getMaxRetId(){
		String maxRetId = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			maxRetId = session.selectOne("recentItem.getMaxRetId");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return maxRetId;
	}
	
	public List<RecentItemVO> getRecentItemList(RecentItemVO rv){
		List<RecentItemVO> itemList = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			itemList = session.selectList("recentItem.getRecentItemList", rv);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return itemList;
	}
	
	public int insertRet(RecentItemVO rv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("recentItem.insertRet", rv);
			if (cnt > 0)
				session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
}
