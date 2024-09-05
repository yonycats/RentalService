package partnership.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.PartnershipVO;
import util.MyBatisUtil;

public class PartnershipDaoImpl implements IPartnershipDao{
	
	private static IPartnershipDao pashDao = new PartnershipDaoImpl();
	
	private PartnershipDaoImpl() {
		
	}
	
	public static IPartnershipDao getInstance() {
		return pashDao;
	}

	@Override
	public List<PartnershipVO> allListPartnership() {
		List<PartnershipVO> pashList = new ArrayList<PartnershipVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		try {
			pashList = session.selectList("partnership.allListPartnership");
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return pashList;
	}

	@Override
	public PartnershipVO detailPartnership(String pashId) {
		PartnershipVO pv = null;
		
		SqlSession session = MyBatisUtil.getSqlSession();
		try {
			pv = session.selectOne("partnership.detailPartnership",pashId);
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return pv;
	}

	@Override
	public int approvePartnership(String pashId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("partnership.approvePartnership",pashId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int rejectPartnership(String pashId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("partnership.rejectPartnership",pashId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int insertPartnership(PartnershipVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("partnership.insertPartnership",pv);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

}
 