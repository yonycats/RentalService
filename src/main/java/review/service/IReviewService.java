package review.service;

import java.util.List;

import kr.or.ddit.vo.ReviewNameVO;
import kr.or.ddit.vo.ReviewVO;

public interface IReviewService {

	public int reviewInsert(ReviewVO rv);

	public int reviewDelete(String revId);
	
	public int reviewUpdate(ReviewNameVO rnv);
	
	public ReviewNameVO getReview(String revId);
	
	public List<ReviewVO> reviewAll(String itemId);
	
	public List<ReviewVO> myReviewAll(String userNo);
	
	
}
