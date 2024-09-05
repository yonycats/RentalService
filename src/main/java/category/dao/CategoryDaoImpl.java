package category.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CategoryVO;
import util.MyBatisUtil;

public class CategoryDaoImpl implements ICategoryDao{

	private static ICategoryDao cateDao = new CategoryDaoImpl();
	
	private CategoryDaoImpl() {
		
	}
	
	public static ICategoryDao getInstance() {
		return cateDao;
	}
	
	@Override
	public List<CategoryVO> allListCategory() {

		List<CategoryVO> cateList = new ArrayList<CategoryVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		try {
			cateList = session.selectList("category.allListCategory");
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cateList;
	}

	@Override
	public int insertCategory(String cateId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("category.insertCategory",cateId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int deleteCategory(String cateId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("category.deleteCategory",cateId);
			if(cnt > 0)
				session.commit();
		} catch (PersistenceException e) {
			session.rollback();
			e.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}

}
