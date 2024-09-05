package inquiry.service;

import java.util.List;

import kr.or.ddit.vo.ItemInquiryVO;

public interface IItemInquiryService {

	public int itemInquiryInsert(ItemInquiryVO iiv);

	public int itemInquiryDelete(String inqId);
	
	public int itemInquiryUpdate(ItemInquiryVO iiv);
	
	public ItemInquiryVO getItemInquiry(String inqId);
	
	public List<ItemInquiryVO> itemInquiryAll(String itemId);
	
	public List<ItemInquiryVO> myitemInquiryAll(String userNo);

	
}
