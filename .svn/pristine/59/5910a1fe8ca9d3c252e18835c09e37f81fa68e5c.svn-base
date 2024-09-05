package company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import company.service.CompanyService;
import kr.or.ddit.vo.CompanyVO;

@WebServlet("/company/signout.do")
public class SignOutController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		CompanyService companyService = CompanyService.getInstance();
		HttpSession session = req.getSession();
		CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
		String comId = cv.getComId();
		
		int cnt = companyService.signOut(comId);
		
		session.setAttribute("joinCode", "mainPage");
		
		req.getRequestDispatcher("/views/indexMain.jsp");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
