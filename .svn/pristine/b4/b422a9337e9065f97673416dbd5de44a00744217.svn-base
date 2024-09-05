package cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cart.service.CartServiceImpl;
import cart.service.ICartService;
import kr.or.ddit.vo.CartVO;

@WebServlet("/cart/delete.do")
public class DeleteCartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String[] cartIds = req.getParameterValues("cartId");
		
		for (String string : cartIds) {
			System.out.println(string);			
		}
		
		ICartService cartService = CartServiceImpl.getInstance();

		int cnt = 0;
		
		for (String string : cartIds) {
		CartVO cv = new CartVO();
		cv.setCartId(string);
		
		System.out.println("Delete >> " + string);
		
		cnt = cartService.deleteCartSv(cv);
		}

		System.out.println("cnt >>> " + cnt);
		
		req.setAttribute("menu", "SelectCartList");
		
		resp.sendRedirect(req.getContextPath() + "/cart/list.do");
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
