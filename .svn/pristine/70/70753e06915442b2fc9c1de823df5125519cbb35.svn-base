package category.service;

import java.util.List;

import category.dao.CategoryDaoImpl;
import category.dao.ICategoryDao;
import kr.or.ddit.vo.CategoryVO;

public class CategoryServiceImpl implements ICategoryService{

	private static ICategoryService cateService = new CategoryServiceImpl();
	
	private ICategoryDao cateDao;
	
	public CategoryServiceImpl() {
		cateDao = CategoryDaoImpl.getInstance();
	}
	
	public static ICategoryService getInstance() {
		return cateService;
	}
	
	@Override
	public List<CategoryVO> allListCategory() {
		return cateDao.allListCategory();
	}

	@Override
	public int insertCategory(String cateId) {
		return cateDao.insertCategory(cateId);
	}

	@Override
	public int deleteCategory(String cateId) {
		return cateDao.deleteCategory(cateId);
	}

}
