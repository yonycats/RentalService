package user.service;

import java.util.List;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;

public interface IUserService {

   public int insertUser(UserVO uv);

   public int insertCom(CompanyVO cv);

   public boolean checkIdUser(String userId);
   
   public boolean checkIdCom(String comId);

   public boolean checkEmailUser(String userEmail);
   
   public boolean checkEmailCom(String comEmail);

   public boolean checkPassUser(String userPass); // 비번 두 번 쓰는거
   
   public boolean checkPassCom(String comPass); // 비번 두 번 쓰는거

   public UserVO getUser(String userId);
   
   public CompanyVO getCom(String comId);

   public List<UserVO> getAllUser();
   
   public List<CompanyVO> getAllCom();

   public int updateUser(UserVO uv);
   
   public int updateCom(CompanyVO cv);

   public int deleteUser(String userId);
   
   public int deleteCom(String comId);

   public List<UserVO> searchUser(UserVO uv);
   
   public List<CompanyVO> searchCom(CompanyVO cv);

   public String findIdUser(UserVO uv);
   
   public String findIdCom(CompanyVO cv);
   
   public int findPassUser(UserVO uv);
   
   public int findPassCom(CompanyVO cv);
   
   public boolean checkUser(UserVO uv);
   
   public boolean checkCompany(CompanyVO cv);
   
   public boolean userLoginCheck(String userId);
   
   public boolean comLoginCheck(String userId);

}
