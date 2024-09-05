package admin.service;

import admin.dao.AdminDaoImpl;
import admin.dao.IAdminDao;
import kr.or.ddit.vo.AdminVO;

public class AdminServiceImpl implements IAdminService {
	
	private static IAdminService adminService = new AdminServiceImpl();

	private IAdminDao adminDao;

	public AdminServiceImpl() {
		adminDao = AdminDaoImpl.getInstance();
	}

	public static IAdminService getInstance() {
		return adminService;
	}

	@Override
	public AdminVO getAd(String adminId) {
		return adminDao.getAd(adminId);
	}

}
