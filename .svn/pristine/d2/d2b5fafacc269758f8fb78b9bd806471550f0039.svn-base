package notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.NoticeVO;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/notice/update.do")
public class UpdateNoticeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "ntcUpdate");
		INoticeService ntcService = NoticeServiceImpl.getInstance();
		
		String ntcId = req.getParameter("ntcId");
		System.out.println(ntcId);
		NoticeVO nv = ntcService.detailNotice(ntcId);
		
		req.setAttribute("nv", nv);
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ntcId = req.getParameter("ntcId");
		String ntcTitle = req.getParameter("ntcTitle");
		String ntcWriter = req.getParameter("ntcWriter");
		String ntcContent = req.getParameter("ntcContent");
//		String ntcViews2 = req.getParameter("ntcViews");
//		int ntcViews = Integer.parseInt(ntcViews2);
//		String ntcDate2 = req.getParameter("ntcDate");
//		LocalDate ntcDate = LocalDate.parse(ntcDate2);
		System.out.println("확인"+ntcId);
		INoticeService ntcService = NoticeServiceImpl.getInstance();
		
		NoticeVO nv = new NoticeVO(ntcId, ntcTitle, ntcWriter, ntcContent);
		System.out.println(nv);
		
		int cnt = ntcService.updateNotice(nv);
		System.out.println(cnt);
		
		String msg = "";
		
		if (cnt > 0) {
			msg = "UPDATE";
		} else{
			msg = "FAIL";
		}
		System.out.println(msg);
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/notice/list.do");
	}
}
