package partnership.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.PartnershipVO;
import partnership.service.IPartnershipService;
import partnership.service.PartnershipServiceImpl;

@WebServlet("/partnership/approve.do")
public class ApprovePartnershipController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IPartnershipService pashService = PartnershipServiceImpl.getInstance();
//		HttpSession session = req.getSession();
//		AdminVO av = (AdminVO)session.getAttribute("loginCode");
		String pashId = req.getParameter("pashId");
		
		PartnershipVO pv = pashService.detailPartnership(pashId);
		req.setAttribute("pv", pv);
//		if(av != null) {
//			req.getRequestDispatcher("/").forward(req, resp);
//		}else {
			req.getRequestDispatcher("/views/partnership/update.jsp").forward(req, resp);
			
//		}
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String pashId = req.getParameter("pashId");
		System.out.println(pashId);
		String a = req.getParameter("btn1");
		System.out.println(a);
		String b = req.getParameter("btn2");
		String msg = "";
		
		IPartnershipService pashService = PartnershipServiceImpl.getInstance();
		if(a!=null) {
	
			int cnt = pashService.approvePartnership(pashId);
			
			
			if(cnt > 0) {
				msg = "SUCCESS";
			}
			
		}
		else if(b!=null) {
			int cnt = pashService.rejectPartnership(pashId);
			if(cnt>0)
			msg = "FAIL";
		}
		else {
			msg = "FAIL";
		}
		
		
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/partnership/list.do");
	}
}
