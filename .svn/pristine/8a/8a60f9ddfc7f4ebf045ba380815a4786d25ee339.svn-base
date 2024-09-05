package cart.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import cart.service.CartServiceImpl;
import cart.service.ICartService;
import kr.or.ddit.vo.CartVO;
import kr.or.ddit.vo.UserVO;

@WebServlet("/cart/insert.do")
public class InsertCartController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("/cart/insert.do 들어옴");
		
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
	
		String userNo = String.valueOf(uv.getUserNo());
		String itemId = req.getParameter("itemId");
	
		System.out.println("userNo >> " + userNo);
		System.out.println("itemId >> " + itemId);
		
		ICartService cartService = CartServiceImpl.getInstance();
		
		CartVO cv = new CartVO();
		cv.setUserNo(userNo);
		cv.setItemId(itemId);
		
		System.out.println("test1");
		int result = cartService.insertCartSv(cv);
		System.out.println("result >> " + result);
		
		resp.getWriter().print(result);
	
//		req.getRequestDispatcher(req.getContextPath() + "/cart/list.do").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
