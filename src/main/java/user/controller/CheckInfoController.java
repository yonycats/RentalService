package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/user/checkInfo.do")
public class CheckInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String type = (String)session.getAttribute("type");
		
		if(type.equals("user")) {
			req.setAttribute("menu", "checkInfo");
			req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
		}
		
		else if(type.equals("com")) {
			req.setAttribute("menu", "checkInfo");
			req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
		}
		
		else if(type.equals("")) {
			req.setAttribute("joinCode", "login");
			req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
		}
		
			
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
