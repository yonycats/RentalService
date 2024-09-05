package wish.controller;

import java.io.IOException;
import java.time.LocalDateTime;
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

@WebServlet("/wish/delete.do")
public class WishDeleteController extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		System.out.println("위시 delete로 들어옴");
		
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		String itemId = req.getParameter("itemId");

		IWishService wishService = WishServiceImpl.getInstance();
		
		WishVO wv = new WishVO();
		wv.setUserNo(userNo);
		wv.setItemId(itemId);
		System.out.println(wv.toString());
		
		int cnt = wishService.deleteWishSv(wv);
		System.out.println(cnt);

		resp.getWriter().print(cnt);
	}
	
}
