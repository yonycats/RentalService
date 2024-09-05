package inquiryUse.service;

import java.util.List;

import kr.or.ddit.vo.UseInquiryVO;

	public interface IUseInquiryService {

	public int useInquiryInsert(UseInquiryVO uiv);

	public int useInquiryDelete(String unqId);
	
	public int useInquiryUpdate(UseInquiryVO uiv);
	
	public UseInquiryVO getUseInquiry(String unqId);
	
	public List<UseInquiryVO> useInquiryAll(String userNo);

	public List<UseInquiryVO> mainUseInquiryAll();
}
