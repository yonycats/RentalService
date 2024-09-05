package order.dao;

import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;

public interface IPaymentDao {

	public int orderInsert(PaymentVO pv);
	
	public OrderVO orderIdSelect(UserVO uv);
	
	public int orderDetailInsert(PaymentVO pv);

	public int paymentInsert(PaymentVO pv);
	
	public int rentalInsert12(PaymentVO pv);
	
	public int rentalInsert36(PaymentVO pv);
	
	public int rentalInsert60(PaymentVO pv);
}
