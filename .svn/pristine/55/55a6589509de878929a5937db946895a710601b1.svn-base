package user.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.exceptions.PersistenceException;
import org.apache.ibatis.session.SqlSession;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;
import util.MyBatisUtil;

public class UserDaoImpl implements IUserDao {

   private static IUserDao uDao = new UserDaoImpl();

   private UserDaoImpl() {

   }

   public static IUserDao getInstance() {
      return uDao;
   }

   @Override
   public int insertUser(UserVO uv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.insert("user.insertUser", uv);
         if (cnt > 0) {
            session.commit();
         }
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return cnt;
   }

   @Override
   public int insertCom(CompanyVO cv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.insert("user.insertCom", cv);
         if (cnt > 0) {
            session.commit();
         }
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return cnt;
   }

   @Override
   public boolean checkIdUser(String userId) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkIdUser", userId);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public boolean checkIdCom(String comId) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkIdCom", comId);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public boolean checkEmailUser(String userEmail) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkEmailUser", userEmail);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public boolean checkEmailCom(String comEmail) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkEmailCom", comEmail);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public boolean checkPassUser(String userPass) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkPassUser", userPass);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public boolean checkPassCom(String comPass) {
      SqlSession session = MyBatisUtil.getSqlSession(true);
      boolean isExist = false;
      try {
         int cnt = session.selectOne("user.checkPassCom", comPass);
         if (cnt > 0)
            isExist = true;
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return isExist;
   }

   @Override
   public UserVO getUser(String userId) {
      UserVO uv = null;
      SqlSession session = MyBatisUtil.getSqlSession();
      try {
         uv = session.selectOne("user.getUser", userId);
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return uv;
   }

   @Override
   public CompanyVO getCom(String comId) {
      CompanyVO cv = null;
      SqlSession session = MyBatisUtil.getSqlSession();
      try {
         cv = session.selectOne("user.getCom", comId);
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return cv;
   }

   @Override
   public List<UserVO> getAllUser() {
      List<UserVO> userList = new ArrayList<UserVO>();

      SqlSession session = MyBatisUtil.getSqlSession(true);

      try {
         userList = session.selectList("user.getAllUser");
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return userList;
   }

   @Override
   public List<CompanyVO> getAllCom() {
      List<CompanyVO> comList = new ArrayList<CompanyVO>();

      SqlSession session = MyBatisUtil.getSqlSession(true);

      try {
         comList = session.selectList("user.getAllCom");
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return comList;
   }

   @Override
   public int updateUser(UserVO uv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.update("user.updateUser", uv);
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

   @Override
   public int updateCom(CompanyVO cv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.update("user.updateCom", cv);
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

   @Override
   public int deleteUser(String userId) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.delete("user.deleteUser", userId);
         if (cnt > 0)
            session.commit();
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return cnt;
   }

   @Override
   public int deleteCom(String comId) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.delete("user.deleteCom", comId);
         if (cnt > 0)
            session.commit();
      } catch (PersistenceException ex) {
         session.rollback();
         ex.printStackTrace();
      } finally {
         session.close();
      }
      return cnt;
   }

   @Override
   public List<UserVO> searchUser(UserVO uv) {
      List<UserVO> userList = new ArrayList<UserVO>();
      SqlSession session = MyBatisUtil.getSqlSession(true);

      try {
         userList = session.selectList("user.searchUser", uv);
      } catch (PersistenceException ex) {
         ex.printStackTrace();

      } finally {
         session.close();
      }

      return userList;
   }

   @Override
   public List<CompanyVO> searchCom(CompanyVO cv) {
      List<CompanyVO> comList = new ArrayList<CompanyVO>();
      SqlSession session = MyBatisUtil.getSqlSession(true);

      try {
         comList = session.selectList("user.searchCom", cv);
      } catch (PersistenceException ex) {
         ex.printStackTrace();

      } finally {
         session.close();
      }

      return comList;
   }

   @Override
   public String findIdUser(UserVO uv) {
      SqlSession session = MyBatisUtil.getSqlSession(true);

      String userId = "";

      try {
         userId = session.selectOne("user.findIdUser", uv);
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return userId;
   }

   @Override
   public String findIdCom(CompanyVO cv) {
      SqlSession session = MyBatisUtil.getSqlSession(true);

      String comId = "";

      try {
         comId = session.selectOne("user.findIdCom", cv);
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return comId;
   }
   
   @Override
   public boolean checkUser(UserVO uv) {
      SqlSession session = MyBatisUtil.getSqlSession(true);

      boolean isExist = false;

      try {
         int cnt = session.selectOne("user.checkUserLogin", uv);
         if(cnt>0)
            isExist = true;
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return isExist;
   }
   
   @Override
   public boolean checkCompany(CompanyVO cv) {
      SqlSession session = MyBatisUtil.getSqlSession(true);

      boolean isExist = false;

      try {
         int cnt = session.selectOne("user.checkComLogin", cv);
         if(cnt>0)
            isExist = true;
      } catch (PersistenceException ex) {
         ex.printStackTrace();
      } finally {
         session.close();
      }

      return isExist;
   }

   @Override
   public int findPassUser(UserVO uv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.update("user.findPassUser", uv);
         
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

   @Override
   public int findPassCom(CompanyVO cv) {
      SqlSession session = MyBatisUtil.getSqlSession();
      int cnt = 0;
      try {
         cnt = session.update("user.findPassCom", cv);
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
   
   @Override
   public boolean userLoginCheck(String userId) {
	      SqlSession session = MyBatisUtil.getSqlSession(true);
	      boolean isExist = false;
	      try {
	         int cnt = session.selectOne("user.userLoginCheck", userId);
	         if (cnt > 0) {
	        	 isExist = true;
	         }
	      } catch (PersistenceException ex) {
	         ex.printStackTrace();
	      } finally {
	         session.close();
	      }

	      return isExist;
   }
   
   @Override
   public boolean comLoginCheck(String userId) {
	   SqlSession session = MyBatisUtil.getSqlSession(true);
	   boolean isExist = false;
	   try {
		   int cnt = session.selectOne("user.comLoginCheck", userId);
		   if (cnt > 0) {
			   isExist = true;
		   }
	   } catch (PersistenceException ex) {
		   ex.printStackTrace();
	   } finally {
		   session.close();
	   }
	   
	   return isExist;
   }

}
