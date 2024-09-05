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

@WebServlet("/user/findId.do")
public class FindIdController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		IUserService userService = UserServiceImpl.getInstance();

		session.setAttribute("joinCode", "findId");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String userEmail = req.getParameter("userEmail");
		String userQut = req.getParameter("userQut");
		String userAns = req.getParameter("userAns");
		String comEmail = req.getParameter("userEmail");
//		String comQut = req.getParameter("userQut");
//		String comAns = req.getParameter("userAns");

		UserVO uv = new UserVO();
		CompanyVO cv = new CompanyVO();

		uv.setUserEmail(userEmail);
		uv.setUserQut(userQut);
		uv.setUserAns(userAns);
		cv.setComEmail(comEmail);
//		cv.setComQut(comQut);
//		cv.setComAns(comAns);

		IUserService userService = UserServiceImpl.getInstance();

		String userId = userService.findIdUser(uv);
		String comId = userService.findIdCom(cv);

		resp.setContentType("application/json");
		resp.getWriter().print("{\"userId\":\"" + userId + "\"}");
		resp.getWriter().print("{\"comId\":\"" + comId + "\"}");

		boolean isAuthenticated = false; // 인증된 사용자인지 여부

		if (uv != null) {
			if (userEmail.equals(uv.getUserEmail())) { // 이메일 일치하는 경우

			}
		}

		if (cv != null) {
			if (userEmail.equals(uv.getUserEmail())) { // 이메일 일치하는 경우

			}
		}

		if (isAuthenticated) {
			// 세션에 로그인 정보 설정하기
			HttpSession session = req.getSession();
			session.setAttribute("findIdCodeUv", uv);
			session.setAttribute("findIdCodeCv", cv);
			resp.sendRedirect(req.getContextPath() + "/user/login.do");

			// 메인 페이지로 이동하기
		} else { // 인증실패
			resp.sendRedirect(req.getContextPath() + "/user/findId.do");
		}

	}

}
