package coupon.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.AdminVO;

@WebServlet("/coupon/list.do")
public class CouponListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		AdminVO av = (AdminVO)session.getAttribute("loginCode");
		session.setAttribute("joinCode", "couponList");
		req.setAttribute("menu", "couponList");
		
		if(av != null) {
			req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
		}else {
			req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
			
		}
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}
