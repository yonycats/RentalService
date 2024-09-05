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

@WebServlet("/company/checkInfo.do")
public class CheckInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		CompanyService companyService = CompanyService.getInstance();
		CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
		
		cv = companyService.getComInfo(cv.getComId());
		session.setAttribute("userInfo", cv);
		
		session.setAttribute("type", "com");
		req.setAttribute("menu", "checkInfo");
		req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
