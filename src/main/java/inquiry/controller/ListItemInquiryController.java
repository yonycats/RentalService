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

@WebServlet(value = "/itemInquiry/list.do")
public class ListItemInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String itemId = req.getParameter("itemId");
		
		System.out.println("itemId : " + itemId);

		IItemInquiryService itemInquiryService = ItemInquiryServiceImpl.getInstance();
		
		List<ItemInquiryVO> itemInquiryList = itemInquiryService.itemInquiryAll(itemId);
		 
//		for (ItemInquiryVO itemInquiryVO : itemInquiryList) {
//			System.out.println(itemInquiryVO);
//		}
		
		req.setAttribute("itemInquiryList", itemInquiryList);
		
		req.getRequestDispatcher("/views/inquiry/itemInquiryList.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
