package order.service;

import java.util.List;

import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.OrderDetailInsertVO;
import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;
import order.dao.IOrderDao;
import order.dao.OrderDaoImpl;

public class OrderServiceImpl implements IOrderService {

	private static IOrderService orderService = new OrderServiceImpl();
	private IOrderDao orderDao;
	
	private OrderServiceImpl() {
		orderDao = OrderDaoImpl.getInstance();
	}
	
	public static IOrderService getInstance() {
		return orderService;
	}
	
	
	@Override
	public List<CardVO> userCardSelectListSv(UserVO uv) {
		return orderDao.userCardSelectList(uv);
	}

	@Override
	public ItemVO itemSelectSv(ItemVO iv) {
		return orderDao.itemSelect(iv);
	}

	@Override
	public UserVO userSelectSv(UserVO uv) {
		return orderDao.userSelect(uv);
	}

	@Override
	public int insertOdersSv(OrderVO ov) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertPaymentSv(PaymentVO pv) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int insertOrderDetailSv(OrderDetailInsertVO odv) {
		// TODO Auto-generated method stub
		return 0;
	}


}
