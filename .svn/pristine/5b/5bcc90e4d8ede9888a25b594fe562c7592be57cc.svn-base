package order.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class PaymentDaoImpl implements IPaymentDao {
	
	private static IPaymentDao paymentDao = new PaymentDaoImpl();
	
	private PaymentDaoImpl() {
	}
	
	public static IPaymentDao getInstance() {
		return paymentDao;
	}

	
	@Override
	public int orderInsert(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.orderInsert", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public OrderVO orderIdSelect(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		OrderVO result = new OrderVO();

		try {
			result = session.selectOne("order.orderIdSelect", uv);
			session.commit();
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public int orderDetailInsert(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.orderDetailInsert", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int paymentInsert(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.paymentInsert", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int rentalInsert12(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.rentalInsert12", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int rentalInsert36(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.rentalInsert36", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int rentalInsert60(PaymentVO pv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("order.rentalInsert60", pv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}



}
