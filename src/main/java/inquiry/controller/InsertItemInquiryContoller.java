package inquiry.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquiry.service.IItemInquiryService;
import inquiry.service.ItemInquiryServiceImpl;
import kr.or.ddit.vo.ItemInquiryVO;
import kr.or.ddit.vo.UserVO;

@WebServlet("/itemInquiry/insert.do")
public class InsertItemInquiryContoller extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		req.getRequestDispatcher("/views/inquiry/itemInquiryInsert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		
		String inqTitle = req.getParameter("inqTitle");
		String inqContent = req.getParameter("inqContent");
		String inqImage = req.getParameter("inqImage");
		String itemId = req.getParameter("itemId");
		
		System.out.println(">>>>>"+itemId);
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		ItemInquiryVO iiv = new ItemInquiryVO(inqTitle, inqContent, inqImage, userNo, itemId);

		int cnt = itemInquiryService.itemInquiryInsert(iiv);
		
		String msg = "";
		
		
		
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath()+"/itemInquiry/list.do");
	}
}