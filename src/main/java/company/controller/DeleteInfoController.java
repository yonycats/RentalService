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

@WebServlet("/company/deleteInfo.do")
public class DeleteInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		HttpSession session = req.getSession();
		CompanyService companyService = CompanyService.getInstance();
		CompanyVO cv = (CompanyVO) session.getAttribute("userInfo");
		int cnt = companyService.signOut(cv.getComId());
		if(cnt>0) {
			session.invalidate();
			resp.sendRedirect(req.getContextPath()+"/item/mainPage.do");
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}
