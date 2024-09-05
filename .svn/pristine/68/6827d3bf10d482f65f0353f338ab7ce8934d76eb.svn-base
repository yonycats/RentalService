package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/user/updateInfo.do")
public class UpdateInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("menu", "updateInfo");
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		IUserService userService = UserServiceImpl.getInstance();
		String userId = req.getParameter("userId");
		String userPass = req.getParameter("userPass");
		String userName = req.getParameter("userName");
		String userTel = req.getParameter("userTel");
		String userEmail = req.getParameter("userEmail");
		String userZip = req.getParameter("userZip");
		String userAddr = req.getParameter("userAddr");
		String userAddrDetail = req.getParameter("userAddrDetail");
		
		UserVO uv = new UserVO();
		
		uv.setUserId(userId);
		uv.setUserPass(userPass);
		uv.setUserName(userName);
		uv.setUserTel(userTel);
		uv.setUserEmail(userEmail);
		uv.setUserZip(Integer.parseInt(userZip));
		uv.setUserAddr(userAddr);
		uv.setUserAddrDetail(userAddrDetail);
		
		int cnt = userService.updateUser(uv);
		if(cnt>0) {
			session.setAttribute("userInfo", uv);
			session.setAttribute("type", "user");
			req.setAttribute("menu", "checkComInfo");
			req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
		}
	}
	
}
