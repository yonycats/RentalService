package cart.service;

import java.util.List;

import cart.dao.CartDaoImpl;
import cart.dao.ICartDao;
import kr.or.ddit.vo.CartVO;
import kr.or.ddit.vo.OrderDetailVO;

public class CartServiceImpl implements ICartService {
	
	private static ICartService cartService = new CartServiceImpl();
	private ICartDao cartDao;
	
	private CartServiceImpl() {
		cartDao = CartDaoImpl.getInstance();
	}
	
	public static ICartService getInstance() {
		return cartService;
	}
	

	@Override
	public int insertCartSv(CartVO cv) {
		return cartDao.insertCart(cv);
	}

	@Override
	public int deleteCartSv(CartVO cv) {
		return cartDao.deleteCart(cv);
	}

	@Override
	public List<OrderDetailVO> getAllCartSv(OrderDetailVO odv) {
		return cartDao.getAllCart(odv);
	}

	@Override
	public CartVO DetailCart(CartVO cv) {
		return cartDao.DetailCart(cv);
	}
	
}
