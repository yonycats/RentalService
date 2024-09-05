package inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiry.service.IItemInquiryService;
import inquiry.service.ItemInquiryServiceImpl;

@WebServlet("/itemInquiry/delete.do")
public class DeleteItemInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inqId = req.getParameter("inqId");
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		int cnt = itemInquiryService.itemInquiryDelete(inqId);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/itemInquiry/list.do");
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
	
}
