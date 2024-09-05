package inquiryUse.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.ItemInquiryVO;
import kr.or.ddit.vo.UseInquiryVO;
import util.MyBatisUtil;


public class UseInquiryDaoImpl implements IUseInquiryDao {

private static IUseInquiryDao UseInquiryDao = new UseInquiryDaoImpl();
	
	private UseInquiryDaoImpl() {
		
	}
	SqlSession session = null;
	
	public static IUseInquiryDao getInstance() {
		return UseInquiryDao;
	}

	@Override
	public int useInquiryInsert(UseInquiryVO uiv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("useInquiry.useInquiryInsert", uiv);
			
			if(cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int useInquiryDelete(String unqId) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.delete("useInquiry.useInquiryDelete", unqId);
			
			if(cnt>0){
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public int useInquiryUpdate(UseInquiryVO uiv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("useInquiry.useInquiryUpdate", uiv);
			
			if(cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return cnt;
	}

	@Override
	public UseInquiryVO getUseInquiry(String unqId) {
		
		UseInquiryVO uiv = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			uiv = session.selectOne("useInquiry.getUseInquiry", unqId);
			
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return uiv;
	}


	@Override
	public List<UseInquiryVO> useInquiryAll(String userNo) {
		
		List<UseInquiryVO> useInquiryList = new ArrayList<UseInquiryVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			useInquiryList = session.selectList("useInquiry.useInquiryAll", userNo);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return useInquiryList;
	}

	@Override
	public List<UseInquiryVO> mainUseInquiryAll() {
		
		List<UseInquiryVO> useInquiryList = new ArrayList<UseInquiryVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			useInquiryList = session.selectList("useInquiry.mainUseInquiryList");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return useInquiryList;
	}
	
	
	
}
