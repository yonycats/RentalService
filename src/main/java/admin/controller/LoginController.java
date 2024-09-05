package admin.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import admin.service.AdminServiceImpl;
import admin.service.IAdminService;
import kr.or.ddit.vo.AdminVO;

@WebServlet("/admin/login.do")
public class LoginController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/admin/login.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		String adminId = req.getParameter("userId");
		String adminPass = req.getParameter("userPass");
		
		IAdminService adminService = AdminServiceImpl.getInstance();
		
		AdminVO av = adminService.getAd(adminId);

		boolean isAuthenticated = false; // 인증된 사용자인지 여부
		

		if (av != null) {
			if (adminPass.equals(av.getAdminPass())) { // 패스워드 일치하는 경우
				isAuthenticated = true;
			}            
		}
		
		
		if (isAuthenticated) {
			// 세션에 로그인 정보 설정하기
			HttpSession session = req.getSession();
			session.setAttribute("loginCode", av);
			resp.sendRedirect(req.getContextPath()+"/admin/mainPage.do");	

			// 메인 페이지로 이동하기
		} else { // 인증실패
			resp.sendRedirect(req.getContextPath()+"/admin/login.do");	
				
		}

	}
		

	}
	