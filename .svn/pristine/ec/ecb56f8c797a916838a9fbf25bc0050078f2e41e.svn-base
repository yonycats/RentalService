package order.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.service.ItemService;
import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.UserVO;
import order.service.IOrderService;
import order.service.OrderServiceImpl;

// http://localhost:8888/RentalService/order/order.do
@WebServlet("/order/order.do")
public class OrderController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 장바구니에서 주문을 눌렀을 때 들어오는 곳
		
		ItemService itemService = ItemService.getInstance();
		List<CategoryVO> categoryList = itemService.getAllCategory();
		req.setAttribute("categoryList", categoryList);
		

		IOrderService orderService = OrderServiceImpl.getInstance();
		
		// 유저 정보 가져오기
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		 
		UserVO uvResult = orderService.userSelectSv(uv);
		req.setAttribute("uvResult", uvResult);
		
		// 유저 정보값 확인하기
		System.out.println("uvResult >> " + uvResult.toString());
		
		
		// 아이템 정보를 불러와서 리스트에 쌓기
		List<ItemVO> itemList = new ArrayList<ItemVO>();
		
		String itemIds[] = req.getParameterValues("itemId");
		
		for (String string : itemIds) {
			System.out.println("itemIds >> " + string);
		}
		
		for (String str : itemIds) {
			ItemVO iv = new ItemVO();
			iv.setItemId(str);
			ItemVO ivResult = orderService.itemSelectSv(iv);
			
			itemList.add(ivResult);
			
			// 아이템 정보값 확인하기
			System.out.println("ivResult >> " + ivResult.toString());			
		}
		req.setAttribute("itemList", itemList);
		
		
		// 유저의 카드 정보 불러오기
		List<CardVO> cardList = orderService.userCardSelectListSv(uv);
		req.setAttribute("cardList", cardList);
		
		for (CardVO cv1 : cardList) {
			// 카드 정보값 확인하기
			System.out.println("cv1 >> " + cv1.toString());	
		}
		
		
		req.setAttribute("menu", "Order");
		
		req.getRequestDispatcher("/views/indexOrder.jsp").forward(req, resp);

	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 바로 주문을 눌렀을 때 들어오는 곳
		
		System.out.println("주문 doPost로 들어옴!");
		
		ItemService itemService = ItemService.getInstance();
		List<CategoryVO> categoryList = itemService.getAllCategory();
		req.setAttribute("categoryList", categoryList);

		
		IOrderService orderService = OrderServiceImpl.getInstance();
		
		// 유저 정보 가져오기
		HttpSession session = req.getSession();
		// 만약 로그인이 되어 있지 않다면 로그인 페이지로 돌아가기
		if (session.getAttribute("userInfo") == null) {
			System.out.println("이 안으로 왔다");
			
			session.setAttribute("joinCode", "login");
			req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
//			resp.sendRedirect(req.getContextPath() + "/user/login.do");	// 왜 안되지??
			
			System.out.println("여길 거쳤어?");
		}
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		
		UserVO uvResult = orderService.userSelectSv(uv);
		req.setAttribute("uvResult", uvResult);
		
		// 유저 정보값 확인하기
		System.out.println("uvResult >> " + uvResult.toString());
		
		
		// 아이템 정보를 불러와서 리스트에 쌓기
		List<ItemVO> itemList = new ArrayList<ItemVO>();
		
		String itemId = req.getParameter("itemId");
		
		System.out.println("doPost의 itemId >> " + itemId);
	
		ItemVO iv = new ItemVO();
		iv.setItemId(itemId);
		ItemVO ivResult = orderService.itemSelectSv(iv);
		
		itemList.add(ivResult);
		
		// 아이템 정보값 확인하기
		System.out.println("ivResult >> " + ivResult.toString());			

		req.setAttribute("itemList", itemList);
		
		
		// 유저의 카드 정보 불러오기
		List<CardVO> cardList = orderService.userCardSelectListSv(uv);
		req.setAttribute("cardList", cardList);
		
		for (CardVO cv1 : cardList) {
			// 카드 정보값 확인하기
			System.out.println("cv1 >> " + cv1.toString());	
		}
		
		
		req.setAttribute("menu", "Order");
		
		req.getRequestDispatcher("/views/indexOrder.jsp").forward(req, resp);


	}
}
