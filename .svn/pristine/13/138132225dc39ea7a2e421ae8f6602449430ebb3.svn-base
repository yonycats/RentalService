package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.BlacklistServiceImpl;
import admin.service.IBlacklistService;
import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.UserVO;

@WebServlet("/admin/blackList.do")
public class BlackListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IBlacklistService blackService = BlacklistServiceImpl.getInstnace();
		List<UserVO> blackList = blackService.allBlacklist();
		req.setAttribute("blackList", blackList);
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "blackList");
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String msg = "";
		
		IBlacklistService blackService = BlacklistServiceImpl.getInstnace();
		if(userId != null) {
			int cnt = blackService.deleteBlacklist(userId);
			
			if(cnt > 0) {
				msg = "SUCCESS";
			}
		}
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath() + "/admin/blackList.do");
	
	}
}
