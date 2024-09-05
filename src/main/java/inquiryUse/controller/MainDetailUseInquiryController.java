package inquiryUse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquiryUse.service.IUseInquiryService;
import inquiryUse.service.UseInquiryServiceImpl;
import kr.or.ddit.vo.UseInquiryVO;

@WebServlet(value = "/useInquiry/mainDetail.do")
public class MainDetailUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		String uqlId = req.getParameter("unqId");
		
		UseInquiryVO useInquiryDetail = useInquiryService.getUseInquiry(uqlId);
		
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "mainDetail");
		
		req.setAttribute("useInquiryDetail", useInquiryDetail);
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
