package order.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import cart.dao.CartDaoImpl;
import cart.dao.ICartDao;
import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.CartVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.OrderDetailInsertVO;
import kr.or.ddit.vo.OrderDetailVO;
import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class OrderDaoImpl implements IOrderDao {
	
	private static IOrderDao orderDao = new OrderDaoImpl();
	
	private OrderDaoImpl() {
	}
	
	public static IOrderDao getInstance() {
		return orderDao;
	}

	@Override
	public List<CardVO> userCardSelectList(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		List<CardVO> list = new ArrayList<CardVO>();
		
		try {
			
			list = session.selectList("order.userCardSelectList", uv);
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public ItemVO itemSelect(ItemVO iv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		ItemVO result = new ItemVO();

		try {
			result = session.selectOne("order.itemSelect", iv);
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public UserVO userSelect(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		UserVO result = new UserVO();

		try {
			result = session.selectOne("order.userSelect", uv);
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public int insertOders(OrderVO ov) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPayment(PaymentVO pv) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertOrderDetail(OrderDetailInsertVO odv) {
		// TODO Auto-generated method stub
		return 0;
	}

}
