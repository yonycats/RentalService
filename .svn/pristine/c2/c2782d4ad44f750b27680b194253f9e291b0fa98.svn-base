package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/checkLogin.do")
public class CheckLoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		IUserService userService = UserServiceImpl.getInstance();
		HttpSession session = req.getSession();
		
		String id = req.getParameter("userId");
		String pw = req.getParameter("userPass");
		String type = req.getParameter("loginType");
		
		UserVO uv = new UserVO();
		CompanyVO cv = new CompanyVO();
		
		uv.setUserId(id);
		uv.setUserPass(pw);
		
		cv.setComId(id);
		cv.setComPass(pw);

		boolean checkUser = userService.checkUser(uv);
		boolean checkCom = userService.checkCompany(cv);
		
        
        String code ="";
        String message = "";

        if (checkUser && type.equals("user")) {
        	uv = userService.getUser(id);
			code = "user";
			session.setAttribute("joinCode", "mainPage");
			session.setAttribute("type", "user");
			session.setAttribute("userInfo", uv);
		}
        
        else if (checkCom && type.equals("company")) {
        	cv = userService.getCom(id);
			code = "com";
			session.setAttribute("joinCode", "mainPage");
			session.setAttribute("type", "com");
			session.setAttribute("userInfo", cv);
		}
        else {
        	code = "fail";
        	message = "등록되지 않은 아이디이거나 아이디 또는 비밀번호를 잘못 입력하셨습니다.";
        }

        
        JSONObject jObj = new JSONObject();
        try {
			jObj.put("code", code);
			jObj.put("message", message);
		} catch (JSONException e) {
			e.printStackTrace();
		} // key, value
        
        resp.setContentType("application/x-json; charset=utf-8");
        resp.getWriter().print(jObj);
		
	}
	
}
