package category.service;

import java.util.List;

import kr.or.ddit.vo.CategoryVO;

public interface ICategoryService {

	public List<CategoryVO> allListCategory();
	
	public int insertCategory(String cateId);
	
	public int deleteCategory(String cateId);
}
