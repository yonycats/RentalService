package category.dao;

import java.util.List;

import kr.or.ddit.vo.CategoryVO;

public interface ICategoryDao {

	public List<CategoryVO> allListCategory();
	
	public int insertCategory(String cateId);
	
	public int deleteCategory(String cateId);
	
}
