package order.service;

import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;
import order.dao.IPaymentDao;
import order.dao.PaymentDaoImpl;

public class PaymentServiceImpl implements IPaymentService {

	private static IPaymentService paymentService = new PaymentServiceImpl();
	private IPaymentDao paymentDao;
	
	private PaymentServiceImpl() {
		paymentDao = PaymentDaoImpl.getInstance();
	}
	
	public static IPaymentService getInstance() {
		return paymentService;
	}
	
	
	@Override
	public int orderInsertSv(PaymentVO pv) {
		return paymentDao.orderInsert(pv);
	}

	@Override
	public OrderVO orderIdSelectSv(UserVO uv) {
		return paymentDao.orderIdSelect(uv);
	}

	@Override
	public int orderDetailInsertSv(PaymentVO pv) {
		return paymentDao.orderDetailInsert(pv);
	}

	@Override
	public int paymentInsertSv(PaymentVO pv) {
		return paymentDao.paymentInsert(pv);
	}

	@Override
	public int rentalInsertSv12(PaymentVO pv) {
		return paymentDao.rentalInsert12(pv);
	}

	@Override
	public int rentalInsertSv36(PaymentVO pv) {
		return paymentDao.rentalInsert36(pv);
	}

	@Override
	public int rentalInsertSv60(PaymentVO pv) {
		return paymentDao.rentalInsert60(pv);
	}
	
}
