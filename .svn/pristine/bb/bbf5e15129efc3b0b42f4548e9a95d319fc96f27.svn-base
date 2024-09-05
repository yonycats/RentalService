package cart.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CartVO;
import kr.or.ddit.vo.OrderDetailVO;
import util.MyBatisUtil;

public class CartDaoImpl implements ICartDao {

	private static ICartDao cartDao = new CartDaoImpl();
	
	private CartDaoImpl() {
	}
	
	public static ICartDao getInstance() {
		return cartDao;
	}
	
	@Override
	public int insertCart(CartVO cv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("cart.insertCart", cv);
			
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
	public int deleteCart(CartVO cv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("cart.deleteCart", cv);
			
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
	public List<OrderDetailVO> getAllCart(OrderDetailVO odv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		List<OrderDetailVO> list = new ArrayList<OrderDetailVO>();
		
		try {
			
			list = session.selectList("cart.getAllCart", odv);
			
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public CartVO DetailCart(CartVO cv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		CartVO result = new CartVO();
		
		int cnt = 0;
		
		try {
			
			result = session.selectOne("cart.DetailCart", cv);
			
			if (cnt > 0) {
				session.commit();
			}
			
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}
	
}
