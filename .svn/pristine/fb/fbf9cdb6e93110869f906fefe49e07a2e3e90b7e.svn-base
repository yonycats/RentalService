package cart.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.service.CartServiceImpl;
import cart.service.ICartService;
import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.OrderDetailVO;
import kr.or.ddit.vo.UserVO;

// http://localhost:8888/RentalService/cart/list.do
@WebServlet("/cart/list.do")
public class CartListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
		ItemService itemService = ItemService.getInstance();
		List<CategoryVO> categoryList = itemService.getAllCategory();
		req.setAttribute("categoryList", categoryList);
		

		
		String parameter = req.getParameter("code");
		
		if(parameter != null) {
			System.out.println("포스트로>>>");
			doPost(req,resp);
		}else {
			// 유저 정보 가져오기
			HttpSession session = req.getSession();
			UserVO uv = (UserVO) session.getAttribute("userInfo");
			System.out.println("sss >> " + uv.toString());
			
			String userNo = String.valueOf(uv.getUserNo());
			
			ICartService cartService = CartServiceImpl.getInstance();
			
			OrderDetailVO odt = new OrderDetailVO();
			odt.setUserNo(userNo);
			
			List<OrderDetailVO> cartList = cartService.getAllCartSv(odt);
			
			for (OrderDetailVO orderDetailVO : cartList) {
				orderDetailVO.toString();
			}
			
			req.setAttribute("cartList", cartList);
			
			req.setAttribute("menu", "SelectCartList");
	
			req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
		}
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		ItemService itemService = ItemService.getInstance();
		List<CategoryVO> categoryList = itemService.getAllCategory();
		req.setAttribute("categoryList", categoryList);

		
		String value1 = req.getParameter("itemId");
		String value2 = req.getParameter("cartId");
		System.out.println("두루왕" + value1 + value2);
		
		String value = req.getParameter("selectbutton");
		
//		String cartIds[] = req.getParameterValues("cartId");
		
		if (true) {
//			if ( !(value1 == null) ) {
			req.getRequestDispatcher("/order/order.do").forward(req, resp);
		} 
//		else if ( !(value2 == null) ) {
//			req.getRequestDispatcher("/cart/delete.do").forward(req, resp);
//		}
		
		
		
	}
	
}
