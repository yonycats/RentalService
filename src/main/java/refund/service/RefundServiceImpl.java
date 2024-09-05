package refund.service;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import refund.dao.IRefundDao;
import refund.dao.RefundDaoImpl;

public class RefundServiceImpl implements IRefundService {

	private static IRefundService refundService = new RefundServiceImpl() ;
	
	private IRefundDao refundDao;
	
	private RefundServiceImpl() {
		refundDao = RefundDaoImpl.getInstance();
	};
	
	public static IRefundService getInstance() {
		return refundService;
	}
	
	
	@Override
	public int updateRefundStatusSv(RentalDetailVO rdv) {
		return refundDao.updateRefundStatus(rdv);
	}

	@Override
	public int refundInsertSv(RentalDetailVO rdv) {
		return refundDao.refundInsert(rdv);
	}

	@Override
	public int updateUserCntSv(UserVO uv) {
		return refundDao.updateUserCnt(uv);
	}

}
