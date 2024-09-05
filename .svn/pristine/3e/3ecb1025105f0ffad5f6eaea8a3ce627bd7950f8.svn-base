package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import admin.service.BlacklistServiceImpl;
import admin.service.IBlacklistService;

@WebServlet("/admin/blackListUpdate.do")
public class BlacklistUpdateController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IBlacklistService blackService = BlacklistServiceImpl.getInstnace();
		
		String userId = req.getParameter("userId");
		
		req.setAttribute("userId", userId);
		
		req.getRequestDispatcher("/views/admin/userList.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String userId = req.getParameter("userId");
		String msg = "";
		System.out.println(userId);
		IBlacklistService blackService = BlacklistServiceImpl.getInstnace();
		if(userId != null) {
			int cnt = blackService.updateBlacklist(userId);
			
			if(cnt > 0) {
				msg = "SUCCESS";
			}
		}
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath() + "/admin/userList.do");
	}
}
