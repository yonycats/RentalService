package inquiryUse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiryUse.service.IUseInquiryService;
import inquiryUse.service.UseInquiryServiceImpl;
import kr.or.ddit.vo.UseInquiryVO;

@WebServlet("/useInquiry/detail.do")
public class DetailUseInquiryController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String unqId = req.getParameter("unqId");
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		
		UseInquiryVO uiv = useInquiryService.getUseInquiry(unqId);
		req.setAttribute("uiv", uiv);

		req.setAttribute("menu", "useInquiryDetail");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	

}
