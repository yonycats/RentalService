package company.service;

import java.util.List;
import java.util.Map;

import company.dao.CompanyDao;
import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.ItemVO;

public class CompanyService {
	private static CompanyService comService = new CompanyService();

	private CompanyDao comDao;

	public CompanyService() {
		comDao = CompanyDao.getInstance();
	}

	public static CompanyService getInstance() {
		return comService;
	}
	
	
	public CompanyVO getComInfo(String comId){
		return comDao.getComInfo(comId);
	}
	
	public int updateComInfo(CompanyVO cv) {
		return comDao.updateComInfo(cv);
	}
	
	public int signOut(String comId) {
		return comDao.signOut(comId);
	}
	
	public CompanyVO getIdPass(String comId) {
		return comDao.getIdPass(comId);
	}
	
	public List<ItemVO> getItemInfo(String comId) {
		return comDao.getItemInfo(comId);
	}
	
	public List<ItemVO> getItemInfoPasing(Map<String, Object> map) {
		return comDao.getItemInfoPasing(map);
	}
	
	
}
