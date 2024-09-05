package partnership.service;

import java.util.List;

import kr.or.ddit.vo.PartnershipVO;
import partnership.dao.IPartnershipDao;
import partnership.dao.PartnershipDaoImpl;

public class PartnershipServiceImpl implements IPartnershipService{
	
	private static IPartnershipService pashService = new PartnershipServiceImpl();
	
	private IPartnershipDao pashDao;
	
	public PartnershipServiceImpl() {
		pashDao = PartnershipDaoImpl.getInstance();
	}
	
	public static IPartnershipService getInstance() {
		return pashService;
	}

	@Override
	public List<PartnershipVO> allListPartnership() {
		return pashDao.allListPartnership();
	}

	@Override
	public PartnershipVO detailPartnership(String pashId) {
		return pashDao.detailPartnership(pashId);
	}

	@Override
	public int approvePartnership(String pashId) {
		return pashDao.approvePartnership(pashId);
	}

	@Override
	public int rejectPartnership(String pashId) {
		return pashDao.rejectPartnership(pashId);
	}

	@Override
	public int insertPartnership(PartnershipVO pv) {
		return pashDao.insertPartnership(pv);
	}

}
