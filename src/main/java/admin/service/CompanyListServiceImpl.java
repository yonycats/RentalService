package admin.service;

import java.util.List;

import admin.dao.CompanyListDaoImpl;
import admin.dao.ICompanyListDao;
import kr.or.ddit.vo.CompanyVO;

public class CompanyListServiceImpl implements ICompanyListService{

	
	private static ICompanyListService comListService = new CompanyListServiceImpl();
	
	private ICompanyListDao comListDao;
	
	public CompanyListServiceImpl() {
		comListDao = CompanyListDaoImpl.getInstance();
	}
	
	public static ICompanyListService getInstance() {
		return comListService;
	}
	
	@Override
	public List<CompanyVO> allCompanyList() {
		return comListDao.allCompanyList();
	}

}
