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

@WebServlet("/company/updateInfo.do")
public class UpdateInfoController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setAttribute("menu", "updateInfo");
		
		req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		CompanyService companyService = CompanyService.getInstance();
		CompanyVO cv = new CompanyVO();
		
		cv.setComPass(req.getParameter("comPass"));
		cv.setComName(req.getParameter("comName"));
		cv.setComCeo(req.getParameter("comCeo"));
		cv.setComNo(req.getParameter("comNo"));
		cv.setComAddr(req.getParameter("comAddr"));
		cv.setComAddrDetail(req.getParameter("comAddrDetail"));
		cv.setComZip(Integer.parseInt(req.getParameter("comZip")));
		cv.setComTel(req.getParameter("comTel"));
		cv.setComEmail(req.getParameter("comEmail"));
		cv.setComResname(req.getParameter("comResname"));
		cv.setComRestel(req.getParameter("comRestel"));
		cv.setComId(req.getParameter("comId"));
		
		
		
		int cnt = companyService.updateComInfo(cv);
		
		if(cnt>0) {
			session.setAttribute("userInfo", cv);
			session.setAttribute("type", "com");
			req.setAttribute("menu", "checkInfo");
			req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
		}

	}
	
}
