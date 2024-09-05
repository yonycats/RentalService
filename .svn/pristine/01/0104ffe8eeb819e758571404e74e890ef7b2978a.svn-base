package review.service;

import java.util.List;

import kr.or.ddit.vo.ReviewNameVO;
import kr.or.ddit.vo.ReviewVO;
import review.dao.IReviewDao;
import review.dao.ReviewDaoImpl;

public class ReviewServiceImpl implements IReviewService {

	private static IReviewService reviewService = new ReviewServiceImpl();

	private IReviewDao reviewDao;

	private ReviewServiceImpl() {
		reviewDao = ReviewDaoImpl.getInstance();
	}

	public static IReviewService getInstance() {
		return reviewService;
	}

	@Override
	public int reviewInsert(ReviewVO rv) {
		int cnt = reviewDao.reviewInsert(rv);
		return cnt;
	}

	@Override
	public int reviewDelete(String revId) {
		int cnt = reviewDao.reviewDelete(revId);
		return cnt;
	}

	@Override
	public List<ReviewVO> reviewAll(String itemId) {
		List<ReviewVO> reviewList = reviewDao.reviewAll(itemId);
		return reviewList;
	}

	@Override
	public List<ReviewVO> myReviewAll(String userNo) {
		List<ReviewVO> myReviewList = reviewDao.myReviewAll(userNo);
		return myReviewList;
	}

	@Override
	public ReviewNameVO getReview(String revId) {
		return reviewDao.getReview(revId);
	}

	@Override
	public int reviewUpdate(ReviewNameVO rnv) {
		int cnt = reviewDao.reviewUpdate(rnv);
		return cnt;
	}

}
