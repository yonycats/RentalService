package notice.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.NoticeVO;
import util.MyBatisUtil;

public class NoticeDaoImpl implements INoticeDao {
	
	public static INoticeDao ntcDao = new NoticeDaoImpl();
	
	private NoticeDaoImpl() {
		
	}
	
	public static INoticeDao getInstance() {
		return ntcDao;
	}

	@Override
	public int insertNotice(NoticeVO nv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("notice.insertNotice",nv);
			if (cnt > 0) 
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
	public int updateNotice(NoticeVO nv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.update("notice.updateNotice", nv);
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
	public int deleteNotice(String ntcId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.delete("notice.deleteNotice", ntcId);
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
	public List<NoticeVO> allNoticeList() {
		List<NoticeVO> ntcList = new ArrayList<NoticeVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			ntcList = session.selectList("notice.allNoticeList");
			
		} catch (PersistenceException e) {
			e.printStackTrace();
		}finally {
			session.close();
		}
		
		return ntcList;
	}

	@Override
	public NoticeVO detailNotice(String ntcId) {
		
		NoticeVO nv = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			nv = session.selectOne("notice.detailNotice", ntcId);
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return nv;
	}

}
