package review.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.ReviewNameVO;
import kr.or.ddit.vo.ReviewVO;
import util.MyBatisUtil;

public class ReviewDaoImpl implements IReviewDao {

	private static IReviewDao reviewDao = new ReviewDaoImpl();

	private ReviewDaoImpl() {

	}

	SqlSession session = null;

	public static IReviewDao getInstance() {
		return reviewDao;
	}

	@Override
	public int reviewInsert(ReviewVO rv) {
		SqlSession session = MyBatisUtil.getSqlSession();

		int cnt = 0;

		try {
			cnt = session.insert("review.reviewInsert", rv);

			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int reviewDelete(String revId) {

		SqlSession session = MyBatisUtil.getSqlSession();

		int cnt = 0;

		try {
			cnt = session.delete("review.reviewDelete", revId);

			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public List<ReviewVO> reviewAll(String itemId) {

		List<ReviewVO> reviewList = new ArrayList<ReviewVO>();

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			reviewList = session.selectList("review.reviewAll", itemId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return reviewList;
	}

	@Override
	public List<ReviewVO> myReviewAll(String userNo) {

		List<ReviewVO> myReviewList = new ArrayList<ReviewVO>();

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			myReviewList = session.selectList("review.myReviewAll", userNo);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return myReviewList;

	}

	@Override
	public ReviewNameVO getReview(String revId) {

		ReviewNameVO rnv = new ReviewNameVO();

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			rnv = session.selectOne("review.getReview", revId);

		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return rnv;
	}

	@Override
	public int reviewUpdate(ReviewNameVO rnv) {
		SqlSession session = MyBatisUtil.getSqlSession();

		int cnt = 0;

		try {
			cnt = session.update("review.reviewUpdate", rnv);

			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

}
