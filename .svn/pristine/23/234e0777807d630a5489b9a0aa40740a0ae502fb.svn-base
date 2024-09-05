package partnership.dao;

import java.util.List;

import kr.or.ddit.vo.PartnershipVO;

public interface IPartnershipDao {
	
	// 제휴문의 전체 리스트 
	public List<PartnershipVO> allListPartnership();
	
	// 제휴문의 상세정보
	public PartnershipVO detailPartnership(String pashId);

	// 제휴문의 승인
	public int approvePartnership(String pashId);
	
	// 제휴문의 거절
	public int rejectPartnership(String pashId);
	
	// 제휴문의 등록
	public int insertPartnership(PartnershipVO pv);
	
}
