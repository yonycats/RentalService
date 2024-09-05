package admin.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.AdminVO;
import util.MyBatisUtil;

public class AdminDaoImpl implements IAdminDao {
	
	private static IAdminDao adminDao = new AdminDaoImpl();

	private AdminDaoImpl() {

	}

	public static IAdminDao getInstance() {
		return adminDao;
	}


	@Override
	public AdminVO getAd(String adminId) {
		AdminVO av = null;
		SqlSession session = MyBatisUtil.getSqlSession();
		try {
			av = session.selectOne("user.getAd", adminId);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return av;
	}
	
	

}
