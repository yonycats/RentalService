package admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CompanyVO;
import util.MyBatisUtil;

public class CompanyListDaoImpl implements ICompanyListDao{
	
	private static ICompanyListDao comListDao = new CompanyListDaoImpl();
	
	private CompanyListDaoImpl() {
		
	}
	
	public static ICompanyListDao getInstance() {
		return comListDao;
	}

	@Override
	public List<CompanyVO> allCompanyList() {
		List<CompanyVO> companyList = new ArrayList<CompanyVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession();
		
		try {
			companyList = session.selectList("admin.allCompanyList");
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return companyList;
	}

}
