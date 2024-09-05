package refund.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class RefundDaoImpl implements IRefundDao {

	private static IRefundDao refundDao = new RefundDaoImpl();
	
	private RefundDaoImpl() {
	}
	
	public static IRefundDao getInstance() {
		return refundDao;
	}
	
	
	
	@Override
	public int updateRefundStatus(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("refund.updateRefundStatus", rdv);
			
			if (cnt > 0) {
				session.commit();
			}
		} catch (Exception e) {
			e.printStackTrace();
			session.rollback();
		} finally {
			session.close();
		}

		return cnt;
	}

	@Override
	public int refundInsert(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("refund.refundInsert", rdv);
			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return cnt;
	}

	@Override
	public int updateUserCnt(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("refund.updateUserCnt", uv);
			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return cnt;
	}

}
