package card.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;


public class CardDaoImpl implements ICardDao {

	private static ICardDao cardDao = new CardDaoImpl();
	
	private CardDaoImpl() {
		
	}
	SqlSession session = null;
	
	public static ICardDao getInstance() {
		return cardDao;
	}

	@Override
	public int cardComInsert(CardVO cv) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int cardInsert(CardVO cv) {

		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("card.cardInsert", cv);
			
			if(cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int cardDelete(String cardId) {

		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.delete("card.cardDelete", cardId);
			
			if(cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public List<CardVO> cardAll(UserVO uv) {

		List<CardVO> cardList = new ArrayList<CardVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			cardList = session.selectList("card.cardAll", uv);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cardList;
	}
	
	
}
