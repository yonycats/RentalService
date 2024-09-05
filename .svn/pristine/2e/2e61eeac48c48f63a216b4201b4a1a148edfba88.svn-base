package wish.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.UserVO;
import kr.or.ddit.vo.WishVO;
import wish.service.IWishService;
import wish.service.WishServiceImpl;

@WebServlet("/wish/list.do")
public class WishListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		IWishService wishService = WishServiceImpl.getInstance();
		
		WishVO wv = new WishVO();
		wv.setUserNo(userNo);
		System.out.println(wv.toString());
		
		List<WishVO> wishList = wishService.selectWishListSv(wv);

		for (WishVO wishVO : wishList) {
			System.out.println(wishVO.toString());
		}
		
		req.setAttribute("menu", "wishList");
		req.setAttribute("wishList", wishList);
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		
		String userNo = String.valueOf(uv.getUserNo());
		String itemId = req.getParameter("itemId");
		String direction = req.getParameter("direction");
		System.out.println(itemId + ", " + direction + ", " + userNo);
		
		IWishService wishService = WishServiceImpl.getInstance();
		
		WishVO wv = new WishVO();
		wv.setUserNo(userNo);
		wv.setItemId(itemId);
		
		int cnt = 0;
		
		if (direction.equals("add")) {
			cnt = wishService.insertWishSv(wv);
		} else if (direction.equals("del")) {
			cnt = wishService.deleteWishSv(wv);
		}
		
		resp.getWriter().print(cnt);		
	}
}
