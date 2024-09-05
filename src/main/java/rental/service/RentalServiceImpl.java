package rental.service;

import java.util.List;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import rental.dao.IRentalDao;
import rental.dao.RentalDaoImpl;

public class RentalServiceImpl implements IRentalService{

	private static IRentalService rentalService = new RentalServiceImpl();

	private IRentalDao rentalDao;
	
	private RentalServiceImpl() {
		rentalDao = RentalDaoImpl.getInstance();
	}
	
	public static IRentalService getInstance() {
		return rentalService;
	}

	
	@Override
	public List<RentalDetailVO> rentalListSv(UserVO uv) {
		return rentalDao.rentalList(uv);
	}

	@Override
	public List<RentalDetailVO> selectListRentalDateSv(UserVO uv) {
		return rentalDao.selectListRentalDate(uv);
	}

	@Override
	public int updateOrderStatusSv(RentalDetailVO rdv) {
		return rentalDao.updateOrderStatus(rdv);
	}

	@Override
	public RentalDetailVO selectOneRentalDateSv(RentalDetailVO rdv) {
		return rentalDao.selectOneRentalDate(rdv);
	}

	@Override
	public RentalDetailVO rentalDetailSv(RentalDetailVO rdv) {
		return rentalDao.rentalDetail(rdv);
	}
	
	@Override
	public List<RentalDetailVO> rentalSortListSv(RentalDetailVO rdv) {
		return rentalDao.rentalSortList(rdv);
	}

}