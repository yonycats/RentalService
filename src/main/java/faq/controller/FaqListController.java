package faq.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.AdminVO;

@WebServlet("/faq/list.do")
public class FaqListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "FaqList");
		AdminVO av = (AdminVO)session.getAttribute("loginCode");
		
		if(av != null) {
			req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);			
		}else {
			
			req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
