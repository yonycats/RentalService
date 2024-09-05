package notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.NoticeVO;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/notice/detail.do")
public class NoticeDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		INoticeService ntcService = NoticeServiceImpl.getInstance();
		
		String ntcId = req.getParameter("ntcId");
		
		NoticeVO nv = ntcService.detailNotice(ntcId);
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "ntcDetail");
		req.setAttribute("nv", nv);
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
