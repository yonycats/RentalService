package admin.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class UserListDaoImpl implements IUserListDao{
	
	public static IUserListDao usListDao = new UserListDaoImpl();
	
	private UserListDaoImpl() {
		
	}
	
	public static IUserListDao getInstance() {
		return usListDao;
	}

	@Override
	public List<UserVO> AllUserList() {
		List<UserVO> usList = new ArrayList<UserVO>();
		
		SqlSession session = MyBatisUtil.getSqlSession(true);
		
		try {
			usList = session.selectList("admin.allUserList");
		} catch (PersistenceException e) {
			e.printStackTrace();
		} finally {
			session.close();
		}
		return usList;
	}

}
