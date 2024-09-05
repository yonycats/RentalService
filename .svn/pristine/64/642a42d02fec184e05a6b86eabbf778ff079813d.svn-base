package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.IUserListService;
import admin.service.UserListServiceImpl;
import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.UserVO;

@WebServlet("/admin/userList.do")
public class UserListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IUserListService userService = UserListServiceImpl.getInstance();
		
		List<UserVO> usList = userService.AllUserList();
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "usList");
		req.setAttribute("usList", usList);
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
