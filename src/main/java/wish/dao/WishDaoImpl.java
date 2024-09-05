package wish.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.WishVO;
import util.MyBatisUtil;

public class WishDaoImpl implements IWishDao {

	private static IWishDao wishDao = new WishDaoImpl();
	
	private WishDaoImpl() {
	}
	
	public static IWishDao getInstance() {
		return wishDao;
	}

	
	@Override
	public List<WishVO> selectWishList(WishVO wv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		List<WishVO> wishList = new ArrayList<WishVO>();
		
		try {
			
			wishList = session.selectList("wish.selectWishList", wv);
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return wishList;
	}

	@Override
	public int insertWish(WishVO wv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		
		
		int cnt = 0;
		
		try {
			cnt = session.update("wish.insertWish", wv);
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
	public int deleteWish(WishVO wv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("wish.deleteWish", wv);
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
