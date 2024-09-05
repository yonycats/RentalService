package inquiryUse.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import inquiryUse.service.IUseInquiryService;
import inquiryUse.service.UseInquiryServiceImpl;
import kr.or.ddit.vo.UseInquiryVO;
import kr.or.ddit.vo.UserVO;

@WebServlet(value = "/useInquiry/mainlist.do")
public class MainListUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		
		List<UseInquiryVO> useInquiryList = useInquiryService.mainUseInquiryAll();
		
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "useInquiryList");
		
		req.setAttribute("useInquiryList", useInquiryList);
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
