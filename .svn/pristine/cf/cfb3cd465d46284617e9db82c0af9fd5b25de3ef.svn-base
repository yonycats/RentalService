package rental.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import rental.service.IRentalService;
import rental.service.RentalServiceImpl;

@WebServlet("/rental/detail.do")
public class RentalDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 유저 정보 가져오기
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		String itemId = req.getParameter("itemId");
		String ordId = req.getParameter("ordId");
		System.out.println("디테일 / itemId : " + itemId + ", " + "ordId : " + ordId);
		
		// 유저넘버를 넣어서 유저가 렌탈한 상품 목록 불러오기
		IRentalService rentalService = RentalServiceImpl.getInstance();
		
		// RentalDetailVO에 userNo와 itemId 넣기
		RentalDetailVO param = new RentalDetailVO();
		param.setUserNo(userNo);
		param.setItemId(itemId);
		param.setOrdId(ordId);
		
		RentalDetailVO rdv = rentalService.rentalDetailSv(param);
		System.out.println(rdv.toString());
		
		// 날짜 정보 가져오는 쿼리 부르기
		RentalDetailVO rdvDate = rentalService.selectOneRentalDateSv(param);
		System.out.println(rdvDate);
		
		req.setAttribute("rdv", rdv);
		req.setAttribute("rdvDate", rdvDate);
		req.setAttribute("menu", "RentalDetail");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath() + "/refund/refund.do");
	}
}
