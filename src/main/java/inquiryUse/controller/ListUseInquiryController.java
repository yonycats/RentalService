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
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet(value = "/useInquiry/list.do")
public class ListUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		IUserService userService = UserServiceImpl.getInstance();
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		if(uv==null) {
			String userId = "user_01";
			uv = userService.getUser(userId);
		}
		String userNo = String.valueOf(uv.getUserNo());
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		
		List<UseInquiryVO> useInquiryList = useInquiryService.useInquiryAll(userNo);
		
//		for (UseInquiryVO useInquiryVO : useInquiryList) {
//			System.out.println(useInquiryVO.toString());
//		}
		 
		req.setAttribute("useInquiryList", useInquiryList);
		
		req.setAttribute("menu", "useInquiryList");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
