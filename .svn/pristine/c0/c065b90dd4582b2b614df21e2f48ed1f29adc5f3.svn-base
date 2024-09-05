package inquiryUse.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiry.service.IItemInquiryService;
import inquiry.service.ItemInquiryServiceImpl;
import inquiryUse.service.IUseInquiryService;
import inquiryUse.service.UseInquiryServiceImpl;
import kr.or.ddit.vo.ItemInquiryVO;
import kr.or.ddit.vo.UseInquiryVO;


@WebServlet("/useInquiry/update.do")
public class UpdateUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String unqId = req.getParameter("unqId");
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		
		UseInquiryVO uiv = useInquiryService.getUseInquiry(unqId);
		
		req.setAttribute("uiv", uiv);
		
		req.setAttribute("menu", "useInquiryUpdate");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String unqTitle = req.getParameter("unqTitle");
		String unqContent = req.getParameter("unqContent");
		String unqImage = req.getParameter("unqImage");
		
		String unqId = req.getParameter("unqId");
		unqId = "INQ0001";
		
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		UseInquiryVO uiv = new UseInquiryVO();
		uiv.setUnqId(unqId);
		uiv.setUnqTitle(unqTitle);
		uiv.setUnqContent(unqContent);
		uiv.setUnqImage(unqImage);

		int cnt = useInquiryService.useInquiryUpdate(uiv);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath()+"/useInquiry/list.do");
	
	}
	
	
	
}
