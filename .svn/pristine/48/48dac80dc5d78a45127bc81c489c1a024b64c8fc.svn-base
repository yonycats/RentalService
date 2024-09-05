package notice.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import kr.or.ddit.vo.AdminVO;
import kr.or.ddit.vo.NoticeVO;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/notice/list.do")
public class NoticeListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		INoticeService noticeService = NoticeServiceImpl.getInstance();
		
		List<NoticeVO> ntcList = noticeService.allNoticeList();
		HttpSession session = req.getSession();
		AdminVO av = (AdminVO)session.getAttribute("loginCode");
		session.setAttribute("joinCode", "ntcList");
		req.setAttribute("ntcList", ntcList);
//		NoticeVO nv = noticeService.deleteNotice();
//		int cnt = noticeService.updateNotice(nv)
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
