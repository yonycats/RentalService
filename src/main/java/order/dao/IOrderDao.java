package order.dao;

import java.util.List;

import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.OrderDetailInsertVO;
import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;

public interface IOrderDao {

	public List<CardVO> userCardSelectList(UserVO uv);
	
	public ItemVO itemSelect(ItemVO iv);
	
	public UserVO userSelect(UserVO uv);
	
	public int insertOders(OrderVO ov);

	public int insertPayment(PaymentVO pv);
	
	public int insertOrderDetail(OrderDetailInsertVO odv);
		
}
