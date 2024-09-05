package company.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.ItemVO;
import util.MyBatisUtil;

public class CompanyDao {
	
	private static CompanyDao comDao = new CompanyDao();

	private CompanyDao() {

	}

	public static CompanyDao getInstance() {
		return comDao;
	}
	
	public CompanyVO getComInfo(String comId){
		CompanyVO cv = new CompanyVO();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			cv = session.selectOne("company.getComInfo",comId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cv;
	}
	
	public int updateComInfo(CompanyVO cv) {
	
	int cnt = 0;
	
	SqlSession session = MyBatisUtil.getSqlSession();
	
	try {
		cnt = session.update("company.updateComInfo",cv);
		if(cnt>0)
			session.commit();
	} catch (PersistenceException ex) {
		ex.printStackTrace();
	} finally {
		session.close();
	}
	
	return cnt;
	}
	
	public int signOut(String comId) {
		
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		try {
			cnt = session.update("company.signOut",comId);
			if(cnt>0)
				session.commit();
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cnt;
	}
	
	public CompanyVO getIdPass(String comId) {
		
		CompanyVO cv = new CompanyVO();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			cv = session.selectOne("company.getIdPass",comId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cv;
		
	}
	
	public List<ItemVO> getItemInfo(String comId) {
		
		List<ItemVO> ivList = new ArrayList<ItemVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			ivList = session.selectList("company.getItemInfo",comId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return ivList;
		
	}
	
	public List<ItemVO> getItemInfoPasing(Map<String, Object> map) {
		
		List<ItemVO> ivList = new ArrayList<ItemVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			ivList = session.selectList("company.getItemInfoPasing",map);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return ivList;
		
	}
	
	
	
}
