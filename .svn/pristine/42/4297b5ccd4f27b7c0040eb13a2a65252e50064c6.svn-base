package inquiry.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.ItemInquiryVO;
import kr.or.ddit.vo.ReviewVO;
import util.MyBatisUtil;

public class ItemInquiryDaoImpl implements IItemInquiryDao{

	private static IItemInquiryDao ItemInquiryDao = new ItemInquiryDaoImpl();
	
	private ItemInquiryDaoImpl() {
		
	}
	SqlSession session = null;
	
	public static IItemInquiryDao getInstance() {
		return ItemInquiryDao;
	}

	@Override
	public int itemInquiryInsert(ItemInquiryVO iiv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.insert("itemInquiry.itemInquiryInsert", iiv);
			
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
	public int itemInquiryDelete(String inqId) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.delete("itemInquiry.itemInquiryDelete", inqId);
			
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
	public int itemInquiryUpdate(ItemInquiryVO iiv) {
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		int cnt = 0;
		
		try {
			cnt = session.update("itemInquiry.itemInquiryUpdate", iiv);
			
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
	public List<ItemInquiryVO> itemInquiryAll(String itemId) {
		
		List<ItemInquiryVO> itemInquiryList = new ArrayList<ItemInquiryVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			itemInquiryList = session.selectList("itemInquiry.itemInquiryAll", itemId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return itemInquiryList;
	}

	@Override
	public ItemInquiryVO getItemInquiry(String inqId) {
		
		ItemInquiryVO iiv = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			iiv = session.selectOne("itemInquiry.getItemInquiry", inqId);
			
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		
		return iiv;
	}

	@Override
	public List<ItemInquiryVO> myitemInquiryAll(String userNo) {
		
		List<ItemInquiryVO> myitemInquiryList = new ArrayList<ItemInquiryVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			myitemInquiryList = session.selectList("itemInquiry.myitemInquiryAll", userNo);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		}finally {
			session.close();
		}
		return myitemInquiryList;
	}
}
