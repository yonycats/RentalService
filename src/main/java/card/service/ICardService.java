package card.service;

import java.util.List;

import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.UserVO;


public interface ICardService {
	
	public int cardComInsert(CardVO cv);
	
	public int cardInsert(CardVO cv);
	
	public int cardDelete(String cardId);
	
	public List<CardVO> cardAll(UserVO uv);

}
