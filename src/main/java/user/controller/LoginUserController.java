package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/user/login.do")
public class LoginUserController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		IUserService userService = UserServiceImpl.getInstance();

		session.setAttribute("joinCode", "login");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String userId = req.getParameter("userId");
		String userPass = req.getParameter("userPass");
		String comId = req.getParameter("userId");
		String comPass = req.getParameter("userPass");

		IUserService userService = UserServiceImpl.getInstance();

		UserVO uv = userService.getUser(userId);
		CompanyVO cv = userService.getCom(comId);
		boolean userLogin = userService.userLoginCheck(userId);
		boolean comLogin = userService.comLoginCheck(comId);
		
		boolean isAuthenticated = false; // 인증된 사용자인지 여부
		
		if(userLogin==true||comLogin==true) {
			
			if (uv != null) {
				if (userPass.equals(uv.getUserPass())) { // 패스워드 일치하는 경우
					isAuthenticated = true;
				}
			}
			
			if (cv != null) {
				if (comPass.equals(cv.getComPass())) { // 패스워드 일치하는 경우
					isAuthenticated = true;
				}
			}
		}


		// ----------------------------------------------------------------------

		if (isAuthenticated)

		{
			// 세션에 로그인 정보 설정하기
//	         HttpSession session = req.getSession();
//	         session.setAttribute("loginCodeUv", uv);
//	         session.setAttribute("loginCodeCv", cv);
			resp.sendRedirect(req.getContextPath() + "/item/mainPage.do");

			// 메인 페이지로 이동하기
		} else { // 인증실패
			resp.sendRedirect(req.getContextPath() + "/user/login.do");
		}

	}

}
