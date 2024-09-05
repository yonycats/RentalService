package user.service;

import java.util.List;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;
import user.dao.IUserDao;
import user.dao.UserDaoImpl;

public class UserServiceImpl implements IUserService {

   private static IUserService userService = new UserServiceImpl();

   private IUserDao userDao;

   public UserServiceImpl() {
      userDao = UserDaoImpl.getInstance();
   }

   public static IUserService getInstance() {
      return userService;
   }

   @Override
   public int insertUser(UserVO uv) {
      return userDao.insertUser(uv);
   }

   @Override
   public int insertCom(CompanyVO cv) {
      return userDao.insertCom(cv);
   }

   @Override
   public boolean checkIdUser(String userId) {
      return userDao.checkIdUser(userId);
   }

   @Override
   public boolean checkIdCom(String comId) {
      return userDao.checkIdCom(comId);
   }

   @Override
   public boolean checkEmailUser(String userEmail) {
      return userDao.checkEmailUser(userEmail);
   }

   @Override
   public boolean checkEmailCom(String comEmail) {
      return userDao.checkEmailCom(comEmail);
   }

   @Override
   public boolean checkPassUser(String userPass) {
      return userDao.checkPassUser(userPass);
   }

   @Override
   public boolean checkPassCom(String comPass) {
      return userDao.checkPassCom(comPass);
   }

   @Override
   public UserVO getUser(String userId) {
      return userDao.getUser(userId);
   }

   @Override
   public CompanyVO getCom(String comId) {
      return userDao.getCom(comId);
   }

   @Override
   public List<UserVO> getAllUser() {
      return userDao.getAllUser();
   }

   @Override
   public List<CompanyVO> getAllCom() {
      return userDao.getAllCom();
   }

   @Override
   public int updateUser(UserVO uv) {
      return userDao.updateUser(uv);
   }

   @Override
   public int updateCom(CompanyVO cv) {
      return userDao.updateCom(cv);
   }

   @Override
   public int deleteUser(String userId) {
      return userDao.deleteUser(userId);
   }

   @Override
   public int deleteCom(String comId) {
      return userDao.deleteCom(comId);
   }

   @Override
   public List<UserVO> searchUser(UserVO uv) {
      return userDao.searchUser(uv);
   }

   @Override
   public List<CompanyVO> searchCom(CompanyVO cv) {
      return userDao.searchCom(cv);
   }

   @Override
   public String findIdUser(UserVO uv) {
      return userDao.findIdUser(uv);
   }

   @Override
   public String findIdCom(CompanyVO cv) {
      return userDao.findIdCom(cv);
   }
   
   @Override
   public boolean checkUser(UserVO uv) {
      return userDao.checkUser(uv);
   }
   
   @Override
   public boolean checkCompany(CompanyVO cv) {
      return userDao.checkCompany(cv);
   }

   @Override
   public int findPassUser(UserVO uv) {
      return userDao.findPassUser(uv);
   }

   @Override
   public int findPassCom(CompanyVO cv) {
      return userDao.findPassCom(cv);
   }
   
   @Override
   public boolean userLoginCheck(String userId) {
	   return userDao.userLoginCheck(userId);
   }
   
   @Override
   public boolean comLoginCheck(String userId) {
	   return userDao.comLoginCheck(userId);
   }
}
