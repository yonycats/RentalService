package inquiry.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import inquiry.service.IItemInquiryService;
import inquiry.service.ItemInquiryServiceImpl;
import kr.or.ddit.vo.ItemInquiryVO;

@WebServlet(value = "/itemInquiry/mylist.do")
public class MyListItemInquiryController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String userNo = req.getParameter("userNo");
		
		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		List<ItemInquiryVO> itemInquiryList = itemInquiryService.myitemInquiryAll(userNo);
	
		req.setAttribute("itemInquiryList", itemInquiryList);
		
//		req.setAttribute("menu", "myitemInquiry");

		req.getRequestDispatcher("/views/inquiry/itemInquiryMyList.jsp").forward(req, resp);
	
	}
	
	
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
