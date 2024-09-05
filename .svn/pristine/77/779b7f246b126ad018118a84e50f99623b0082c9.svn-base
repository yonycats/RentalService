package admin.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.CompanyListServiceImpl;
import admin.service.ICompanyListService;
import kr.or.ddit.vo.CompanyVO;

@WebServlet("/admin/companyList.do")
public class CompanyListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ICompanyListService comListService = CompanyListServiceImpl.getInstance();
		List<CompanyVO> companyList = comListService.allCompanyList();
		req.setAttribute("companyList", companyList);
		
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "adminComList");
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}
