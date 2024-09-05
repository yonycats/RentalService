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
import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;


@WebServlet("/useInquiry/insert.do")
public class InsertUseInquiryController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		IUserService userService = UserServiceImpl.getInstance();
		if(session.getAttribute("userInfo")== null) {
			String userId = "user_01";
			session.setAttribute("userInfo", userService.getUser(userId));
		}
		
		session.setAttribute("joinCode", "useInquiryInsert");
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		String unqTitle = req.getParameter("unqTitle");
		String unqContent = req.getParameter("unqContent");
		String unqImage = req.getParameter("unqImage");
		
		IUseInquiryService useInquiryService = UseInquiryServiceImpl.getInstance();
		UseInquiryVO uiv = new UseInquiryVO(unqTitle,  unqContent,  unqImage, userNo);

		int cnt = useInquiryService.useInquiryInsert(uiv);
		System.out.println(cnt);
		
		resp.sendRedirect(req.getContextPath()+"/useInquiry/list.do");
	}
}
