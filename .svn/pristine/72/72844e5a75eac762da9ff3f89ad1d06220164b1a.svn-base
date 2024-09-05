package inquiry.service;

import java.util.List;

import inquiry.dao.IItemInquiryDao;
import inquiry.dao.ItemInquiryDaoImpl;
import kr.or.ddit.vo.ItemInquiryVO;


public class ItemInquiryServiceImpl implements IItemInquiryService{

	private static IItemInquiryService itemInquiryService = new ItemInquiryServiceImpl();

	private IItemInquiryDao itemInquiryDao;
	
	private ItemInquiryServiceImpl() {
		itemInquiryDao = ItemInquiryDaoImpl.getInstance();
	}
	
	public static IItemInquiryService getInstance() {
		return itemInquiryService;
	}

	@Override
	public int itemInquiryInsert(ItemInquiryVO iiv) {
		int cnt = itemInquiryDao.itemInquiryInsert(iiv);
		return cnt;
	}

	@Override
	public int itemInquiryDelete(String inqId) {
		int cnt = itemInquiryDao.itemInquiryDelete(inqId);
		return cnt;
	}

	@Override
	public int itemInquiryUpdate(ItemInquiryVO iiv) {
		int cnt = itemInquiryDao.itemInquiryUpdate(iiv);
		return cnt;
	}

	@Override
	public List<ItemInquiryVO> itemInquiryAll(String itemId) {
		List<ItemInquiryVO> itemInquiryList = itemInquiryDao.itemInquiryAll(itemId);
		return itemInquiryList;
	}

	@Override
	public ItemInquiryVO getItemInquiry(String inqId) {
		return itemInquiryDao.getItemInquiry(inqId);
		
	}

	@Override
	public List<ItemInquiryVO> myitemInquiryAll(String userNo) {
		List<ItemInquiryVO> myitemInquiryList = itemInquiryDao.myitemInquiryAll(userNo);
		return myitemInquiryList;
	}
	
	
}
