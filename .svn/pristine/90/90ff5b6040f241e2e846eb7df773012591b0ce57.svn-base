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

@WebServlet("/itemInquiry/update.do")
public class UpdateItemInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String inqId = req.getParameter("inqId");
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		ItemInquiryVO iiv = itemInquiryService.getItemInquiry(inqId);
		
		req.setAttribute("iiv", iiv);
		
		req.setAttribute("menu", "itemInquiryUpdate");
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String inqTitle = req.getParameter("inqTitle");
		String inqContent = req.getParameter("inqContent");
		String inqImage = req.getParameter("inqImage");
		String inqId = req.getParameter("inqId");
		inqId = "INQ0005";
		
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		ItemInquiryVO iiv = new ItemInquiryVO();
		iiv.setInqContent(inqContent);
		iiv.setInqTitle(inqTitle);
		iiv.setInqImage(inqImage);
		iiv.setInqId(inqId);
		
		int cnt = itemInquiryService.itemInquiryUpdate(iiv);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath()+"/useInquiry/list.do");
	
	}
}
