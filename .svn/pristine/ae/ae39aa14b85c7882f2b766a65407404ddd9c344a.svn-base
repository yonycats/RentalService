package rental.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class RentalDaoImpl implements IRentalDao {

private static IRentalDao rentalDao = new RentalDaoImpl();
	
	private RentalDaoImpl() {
		
	}
	SqlSession session = null;
	
	public static IRentalDao getInstance() {
		return rentalDao;
	}

	@Override
	public List<RentalDetailVO> rentalList(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		List<RentalDetailVO> list = new ArrayList<RentalDetailVO>();
		
		try {
			
			list = session.selectList("rental.rentalList", uv);
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public RentalDetailVO rentalDetail(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		RentalDetailVO result = new RentalDetailVO();

		try {
			result = session.selectOne("rental.rentalDetail", rdv);
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public List<RentalDetailVO> selectListRentalDate(UserVO uv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		List<RentalDetailVO> list = new ArrayList<RentalDetailVO>();
		
		try {
			
			list = session.selectList("rental.selectListRentalDate", uv);
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}

	@Override
	public int updateOrderStatus(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("rental.updateOrderStatus", rdv);
			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return cnt;
	}

	@Override
	public RentalDetailVO selectOneRentalDate(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		RentalDetailVO result = new RentalDetailVO();

		try {
			result = session.selectOne("rental.selectOneRentalDate", rdv);
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return result;
	}

	@Override
	public List<RentalDetailVO> rentalSortList(RentalDetailVO rdv) {
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		List<RentalDetailVO> list = new ArrayList<RentalDetailVO>();
		
		try {
			
			list = session.selectList("rental.rentalSortList", rdv);
			
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return list;
	}
	
}
