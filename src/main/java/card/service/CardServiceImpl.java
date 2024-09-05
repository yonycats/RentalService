package card.service;

import java.util.List;

import card.dao.CardDaoImpl;
import card.dao.ICardDao;
import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.UserVO;


public class CardServiceImpl implements ICardService{

	private static ICardService cardService = new CardServiceImpl();
	
	private ICardDao cardDao;
	
	private CardServiceImpl() {
		cardDao = CardDaoImpl.getInstance();
	}
	
	public static ICardService getInstance() {
		return cardService;
	}

	@Override
	public int cardComInsert(CardVO cv) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cardInsert(CardVO cv) {
		int cnt = cardDao.cardInsert(cv);
		return cnt;
	}

	@Override
	public int cardDelete(String cardId) {
		int cnt = cardDao.cardDelete(cardId);
		return cnt;
	}

	@Override
	public List<CardVO> cardAll(UserVO uv) {
		List<CardVO> cardList = cardDao.cardAll(uv);
		return cardList;
	}
}
