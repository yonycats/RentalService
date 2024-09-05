package admin.service;

import java.util.List;

import admin.dao.IUserListDao;
import admin.dao.UserListDaoImpl;
import kr.or.ddit.vo.UserVO;

public class UserListServiceImpl implements IUserListService{
	
	private static IUserListService usListService = new UserListServiceImpl();
	
	private IUserListDao usListDao;
	
	public UserListServiceImpl() {
		usListDao = UserListDaoImpl.getInstance();
	}
	
	public static IUserListService getInstance() {
		return usListService;
	}
	

	@Override
	public List<UserVO> AllUserList() {
		return usListDao.AllUserList();
	}

}
