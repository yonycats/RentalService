package order.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.OrderVO;
import kr.or.ddit.vo.PaymentVO;
import kr.or.ddit.vo.UserVO;
import kr.or.ddit.vo.WishVO;
import order.service.IPaymentService;
import order.service.PaymentServiceImpl;
import wish.service.IWishService;
import wish.service.WishServiceImpl;

@WebServlet("/order/payment.do")
public class PaymentController extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		
		ItemService itemService = ItemService.getInstance();
		List<CategoryVO> categoryList = itemService.getAllCategory();
		req.setAttribute("categoryList", categoryList);
		
		String rentDate = req.getParameter("rentDate");
		String cardId = req.getParameter("cardId");
		String userNo = req.getParameter("userNo");
		String odAmount = req.getParameter("odAmount");
		String itemId = req.getParameter("itemId");

		// 000,000 형식으로 들어온 값을 숫자만 제외하고 모두 지우기
		odAmount = odAmount.replaceAll("[^0-9]", "");
		
		System.out.println("왔지롱!");
		System.out.println("rentDate : " + rentDate+", cardId : " + cardId+", userNo : " + userNo+", odAmount : " + odAmount+", itemId : " + itemId);
		
		IPaymentService paymentService = PaymentServiceImpl.getInstance();
		
		// 1. 주문테이블 인서트 하기
		PaymentVO pv = new PaymentVO();
		pv.setUserNo(userNo);
		pv.setOrderTotalAmount(odAmount);

		int cntOrder = paymentService.orderInsertSv(pv);
//		System.out.println(cntOrder);
		
		// 2. 회원의 가장 최근의 주문번호 가져오기
		UserVO uv = new UserVO();
		uv.setUserNo(Integer.parseInt(userNo));
		
		OrderVO ov = new OrderVO(); 
		ov = paymentService.orderIdSelectSv(uv);
//		System.out.println(ov.toString());
		
		String ordId = ov.getOrdId();
		
		// 3. 상세주문테이블 인서트 하기
		pv.setOrdId(ordId);
		pv.setItemId(itemId);
		pv.setPayCardId(cardId);
		pv.setOdAmount(odAmount);
		
		int cntOrderDetail = paymentService.orderDetailInsertSv(pv);
//		System.out.println(cntOrderDetail);
		
		// 4. 결제테이블 인서트 하기
		int cntPayment = paymentService.paymentInsertSv(pv);
//		System.out.println(cntPayment);
		
		// 5. 렌탈테이블 인서트 하기
		int cntRental = 0;
		
		if (rentDate.equals("12")) {
			cntRental = paymentService.rentalInsertSv12(pv);
		} else if (rentDate.equals("36")) {
			cntRental = paymentService.rentalInsertSv36(pv);
		} else if (rentDate.equals("60")) {
			cntRental = paymentService.rentalInsertSv60(pv);
		}
//		System.out.println(cntRental);
		
		// 6. 장바구니에서 해당 상품 지우기
		
		
		
		// 7. 찜에서 해당 상품 지우기- 유저 아이디와 상품 아이디
		IWishService wishService = WishServiceImpl.getInstance();
		
		WishVO wv = new WishVO();
		wv.setUserNo(userNo);
		wv.setItemId(itemId);
		System.out.println("WishDelete >> " + wv.toString());
		
		int cntWish = wishService.deleteWishSv(wv);
		
		System.out.println("cntWish >> " + cntWish);
		
		
		
		int cnt = cntOrder + cntOrderDetail + cntPayment + cntRental;
		System.out.println(cnt);
		
		
		resp.getWriter().print(cnt); //요청했던 ajax에게 응답으로 전달
	}
}
