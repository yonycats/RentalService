package wish.service;

import java.util.List;

import kr.or.ddit.vo.WishVO;
import wish.dao.IWishDao;
import wish.dao.WishDaoImpl;

public class WishServiceImpl implements IWishService {

	private static IWishService wishService = new WishServiceImpl() ;
	
	private IWishDao wishDao;
	
	private WishServiceImpl() {
		wishDao = WishDaoImpl.getInstance();
	};
	
	public static IWishService getInstance() {
		return wishService;
	}

	
	@Override
	public List<WishVO> selectWishListSv(WishVO wv) {
		return wishDao.selectWishList(wv);
	}

	@Override
	public int insertWishSv(WishVO wv) {
		return wishDao.insertWish(wv);
	}

	@Override
	public int deleteWishSv(WishVO wv) {
		return wishDao.deleteWish(wv);
	}
	
}
