package inquiryUse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiryUse.service.IUseInquiryService;
import inquiryUse.service.UseInquiryServiceImpl;

@WebServlet("/useInquiry/delete.do")
public class DeleteUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String unqId = req.getParameter("unqId");
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		
		int cnt = useInquiryService.useInquiryDelete(unqId);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/useInquiry/list.do");
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
