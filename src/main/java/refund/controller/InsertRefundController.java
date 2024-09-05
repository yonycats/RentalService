package refund.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.RentalDetailVO;
import kr.or.ddit.vo.UserVO;
import order.dao.IOrderDao;
import order.service.IOrderService;
import order.service.IPaymentService;
import order.service.OrderServiceImpl;
import order.service.PaymentServiceImpl;
import refund.service.IRefundService;
import refund.service.RefundServiceImpl;

@WebServlet("/refund/insert.do")
public class InsertRefundController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String itemId = req.getParameter("itemId");
		String ordId = req.getParameter("ordId");
		String cardId = req.getParameter("cardId");
		String price = req.getParameter("price");
		System.out.println("여기 >> itemId : " + itemId + ", ordId : " + ordId + ", cardId : " + cardId + ", price : " + price);
		
		RentalDetailVO rdv = new RentalDetailVO();
		rdv.setItemId(itemId);
		rdv.setOrdId(ordId);
		rdv.setPayCardId(cardId);
		rdv.setRentPrice(price);
		
		System.out.println("rdv >>> " + rdv.toString());
		
		IRefundService refundService = RefundServiceImpl.getInstance();
		
		// 1. 주문아이디를 넣어서 주문상태를 렌탈취소로 업데이트 하기
		int statusCnt = refundService.updateRefundStatusSv(rdv);
		
		// 2. 주문아이디와 상품아이디를 넣어서 환불 테이블에 인서트하기
		int insertCnt = refundService.refundInsertSv(rdv);
		
		int result = statusCnt + insertCnt;
		System.out.println(result);
		
		if (result == 2) {
			HttpSession session = req.getSession();
			UserVO uv = (UserVO) session.getAttribute("userInfo");
			
			int userResult = refundService.updateUserCntSv(uv);
		}
		
		// ajax에게 결과값 전달
		resp.getWriter().print(result);
	}
	
}
