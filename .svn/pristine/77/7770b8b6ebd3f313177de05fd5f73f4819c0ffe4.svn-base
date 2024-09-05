package item.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.SearchVO;
import util.MyBatisUtil;

public class ItemDao {
	private static ItemDao memDao = new ItemDao();

	private ItemDao() {

	}

	public static ItemDao getInstance() {
		return memDao;
	}

	public List<CategoryVO> getAllCategory(){
		List<CategoryVO> categoryList = new ArrayList<CategoryVO>();

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			categoryList = session.selectList("item.getAllCategory");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return categoryList;
	}
	
	public ItemVO getItemInfo(String itemId){
		ItemVO iv = new ItemVO();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			iv = session.selectOne("item.getItemInfo",itemId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return iv;
	}
	
	public String getSubImg(String itemId){
		String subImg = "";
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			subImg = session.selectOne("item.getSubImg",itemId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return subImg;
	}
	
	public List<String> getItemMakeFilter(String cateId){
		List<String> itemMakeFilterList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			itemMakeFilterList = session.selectList("item.itemMakeFilter",cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return itemMakeFilterList;
	}
	
	public List<String> getItemAttrFilter(String cateId){
		List<String> itemAttrFilterList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			itemAttrFilterList = session.selectList("item.itemAttrFilter",cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return itemAttrFilterList;
	}
	
	public List<String> getComNameFilter(String cateId){
		List<String> comNameFilterList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			comNameFilterList = session.selectList("item.comNameFilter",cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return comNameFilterList;
	}
	
	public List<ItemVO> getBestItemList(String cateId){
		List<ItemVO> itemList = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			itemList = session.selectList("item.getBestItemList");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return itemList;
	}
	
	public int insertItem(ItemVO iv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.insert("item.insertItem", iv);
			if (cnt > 0)
				session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	public int updateItem(ItemVO iv) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.update("item.updateItem", iv);
			if (cnt > 0)
				session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	public int deleteItem(String itemId) {
		SqlSession session = MyBatisUtil.getSqlSession();
		int cnt = 0;
		try {
			cnt = session.update("item.deleteItem", itemId);
			if (cnt > 0)
				session.commit();
		} catch (PersistenceException ex) {
			session.rollback();
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	public String getMaxItemId(){
		String MaxItemId = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			MaxItemId = session.selectOne("item.getMaxItemId");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return MaxItemId;
	}
	
	public List<ItemVO> getAirBest3(){
		List<ItemVO> airList = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			airList = session.selectList("item.getAirBest3");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return airList;
	}
	
	public List<ItemVO> getRefBest3(){
		List<ItemVO> refList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			refList = session.selectList("item.getRefBest3");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return refList;
	}
	
	public List<ItemVO> getLaundryBest3(){
		List<ItemVO> laundryList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			laundryList = session.selectList("item.getLaundryBest3");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return laundryList;
	}
	
	public List<ItemVO> getStylerBest3(){
		List<ItemVO> stylerList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			stylerList = session.selectList("item.getStylerBest3");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return stylerList;
	}
	
	public List<ItemVO> getTvBest3(){
		List<ItemVO> tvList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			tvList = session.selectList("item.getTvBest3");
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return tvList;
	}
	
	public int countItem(String cateId){
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			cnt = session.selectOne("item.countItem", cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cnt;
	}
	
	public int getSearchResultCnt(String searchWord){
		int cnt = 0;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			cnt = session.selectOne("item.getSearchResultCnt", searchWord);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return cnt;
	}
	
	public List<ItemVO> getCategoryItemList(String cateId){
		List<ItemVO> categoryItemList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			categoryItemList = session.selectList("item.getCategoryItemList", cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return categoryItemList;
	}
	
	public List<ItemVO> getCategoryItemListRecent(String cateId){
		List<ItemVO> categoryItemList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			categoryItemList = session.selectList("item.getCategoryItemListRecent", cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return categoryItemList;
	}
	
	public List<ItemVO> getCategoryItemListHigh(String cateId){
		List<ItemVO> categoryItemList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			categoryItemList = session.selectList("item.getCategoryItemListHigh", cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return categoryItemList;
	}
	
	public List<ItemVO> getCategoryItemListLow(String cateId){
		List<ItemVO> categoryItemList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			categoryItemList = session.selectList("item.getCategoryItemListLow", cateId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return categoryItemList;
	}
	
	public List<SearchVO> getSearchResultSortDate(String searchWord){
		List<SearchVO> resultList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			resultList = session.selectList("item.getSearchResultSortDate", searchWord);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return resultList;
	}
	
	public List<SearchVO> getSearchResultSortHigh(String searchWord){
		List<SearchVO> resultList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			resultList = session.selectList("item.getSearchResultSortHigh", searchWord);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return resultList;
	}
	
	public List<SearchVO> getSearchResultSortLow(String searchWord){
		List<SearchVO> resultList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			resultList = session.selectList("item.getSearchResultSortLow", searchWord);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return resultList;
	}
	
	public List<SearchVO> getSearchResult(String searchWord){
		List<SearchVO> resultList = null;
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			resultList = session.selectList("item.getSearchResult", searchWord);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		
		return resultList;
	}
	

	
	
}
