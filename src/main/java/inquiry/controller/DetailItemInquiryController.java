package inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiry.service.IItemInquiryService;
import inquiry.service.ItemInquiryServiceImpl;
import kr.or.ddit.vo.ItemInquiryVO;


@WebServlet("/itemInquiry/detail.do")
public class DetailItemInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inqId = req.getParameter("inqId");
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		ItemInquiryVO iiv = itemInquiryService.getItemInquiry(inqId);
		
		req.setAttribute("InquiryDetail", iiv);
		req.setAttribute("menu", "InquiryDetail");
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
	
	
	
}
