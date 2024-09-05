package comm.dao;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.AtchFileDetailVO;
import kr.or.ddit.vo.AtchFileVO;
import util.MyBatisUtil;

public class AtchFileDao {

	private static AtchFileDao fileDao = new AtchFileDao();

	private AtchFileDao() {

	}

	public static AtchFileDao getInstance() {
		return fileDao;
	}

	public int insertFile(AtchFileDetailVO AtchFileDetailVO) {

		SqlSession session = MyBatisUtil.getSqlSession(false);
		int cnt = 0;

		try {
			cnt = session.insert("atchFile.insertFile", AtchFileDetailVO);
			if (cnt > 0) {
				session.commit();
			}
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}
		return cnt;
	}
	
	public AtchFileVO getAtchFileVO(AtchFileVO atchFileVO) {

		AtchFileVO fileVO = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			fileVO = session.selectOne("atchFile.getAtchFile", atchFileVO);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return fileVO;
	}

	public AtchFileDetailVO getAtchFileDetailVO(AtchFileDetailVO atchFileDetailVO) {

		AtchFileDetailVO fileDetailVO = null;

		SqlSession session = MyBatisUtil.getSqlSession(true);

		try {
			fileDetailVO = session.selectOne("atchFile.getAtchFileDetail", atchFileDetailVO);
		} catch (PersistenceException ex) {
			ex.printStackTrace();
		} finally {
			session.close();
		}

		return fileDetailVO;
	}

}
