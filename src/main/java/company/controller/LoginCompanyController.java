package company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.CompanyVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/company/loginCom.do")
public class LoginCompanyController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "com");
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String comId = req.getParameter("comId");
		String comPass = req.getParameter("comPass");
		

		IUserService userService = UserServiceImpl.getInstance();

		CompanyVO cv = userService.getCom(comId);
		
		
		boolean isAuthenticated = false; // 인증된 사용자인지 여부

		if (cv != null) {
			if (comPass.equals(cv.getComPass())) { // 패스워드 일치하는 경우
				isAuthenticated = true;
			}
		}

		// ----------------------------------------------------------------------

		if (isAuthenticated) {
			// 세션에 로그인 정보 설정하기
			HttpSession session = req.getSession();
			session.setAttribute("loginCode", cv);
			resp.sendRedirect("/item/mainPage.do");	

			// 메인 페이지로 이동하기
		} else { // 인증실패
			resp.sendRedirect("/company/loginCom.do");	
		}

	}

		
	}
