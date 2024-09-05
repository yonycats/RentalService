package notice.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import notice.service.INoticeService;
import notice.service.NoticeServiceImpl;

@WebServlet("/notice/delete.do")
public class DeleteNoticeController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String ntcId = req.getParameter("ntcId");
		System.out.println(ntcId);
		INoticeService ntcService = NoticeServiceImpl.getInstance();
		
		int cnt = ntcService.deleteNotice(ntcId);
		System.out.println();
		String msg = "";
		
		
		if(cnt > 0) {
			msg = "FAIL";
		} 
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/notice/list.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
