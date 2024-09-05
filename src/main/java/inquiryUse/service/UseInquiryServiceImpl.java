package inquiryUse.service;

import java.util.List;

import inquiryUse.dao.IUseInquiryDao;
import inquiryUse.dao.UseInquiryDaoImpl;
import kr.or.ddit.vo.ItemInquiryVO;
import kr.or.ddit.vo.UseInquiryVO;

public class UseInquiryServiceImpl implements IUseInquiryService{

	private static IUseInquiryService useInquiryService = new UseInquiryServiceImpl();

	private IUseInquiryDao useInquiryDao;
	
	private UseInquiryServiceImpl() {
		useInquiryDao = UseInquiryDaoImpl.getInstance();
	}
	
	public static IUseInquiryService getInstance() {
		return useInquiryService;
	}

	@Override
	public int useInquiryInsert(UseInquiryVO uiv) {
		int cnt = useInquiryDao.useInquiryInsert(uiv);
		return cnt;
	}

	@Override
	public int useInquiryDelete(String unqId) {
		int cnt = useInquiryDao.useInquiryDelete(unqId);
		return cnt;
	}

	@Override
	public int useInquiryUpdate(UseInquiryVO uiv) {
		int cnt = useInquiryDao.useInquiryUpdate(uiv);
		return cnt;
	}

	@Override
	public UseInquiryVO getUseInquiry(String unqId) {
		return useInquiryDao.getUseInquiry(unqId);
	}

	@Override
	public List<UseInquiryVO> useInquiryAll(String userNo) {
		List<UseInquiryVO> useInquiryList = useInquiryDao.useInquiryAll(userNo);
		return useInquiryList;
	}

	@Override
	public List<UseInquiryVO> mainUseInquiryAll() {
		List<UseInquiryVO> useInquiryList = useInquiryDao.mainUseInquiryAll();
		return useInquiryList;
	}
}
