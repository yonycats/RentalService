package notice.controller;

import java.io.IOException;
import java.time.LocalDate;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.NoticeVO;
import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/notice/insert.do")
public class InsertNoticeController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "ntcInsert");
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//		String ntcId = req.getParameter("ntcId");
		String ntcTitle = req.getParameter("ntcTitle");
		String ntcWriter = req.getParameter("ntcWriter");
		String ntcContent = req.getParameter("ntcContent");
//		String ntcDate2 = req.getParameter("ntcDate");
//		LocalDate ntcDate = LocalDate.parse(ntcDate2);
		String a = req.getParameter("btn1");
		
		INoticeService ntcService = NoticeServiceImpl.getInstance();
		
		NoticeVO nv = new NoticeVO(ntcTitle, ntcWriter, ntcContent);
		String msg = "";
		
		if(a!= null) {
			int cnt = ntcService.insertNotice(nv);
			
			
			if(cnt > 0) {
				msg = "SUCCESS";
			}
		}
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath()+"/notice/list.do");
		
	}
	
}
