package wish.controller;

import java.io.IOException;
import java.time.LocalDateTime;

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

@WebServlet("/wish/listDelete.do")
public class WishListDeleteController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		System.out.println("위시 List delete로 들어옴");
		
		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		String[] itemIds = req.getParameterValues("itemId");
		
		IWishService wishService = WishServiceImpl.getInstance();

		int cnt = 0;
		
		for (String str : itemIds) {
			System.out.println("삭제할 아이템 아이디 목록 >>" + str);
			
			WishVO wv = new WishVO();
			wv.setUserNo(userNo);
			wv.setItemId(str);
//			System.out.println("Delete >> " + wv.toString());
		
			cnt = wishService.deleteWishSv(wv);
		}
		
		
		System.out.println(cnt);
		
		resp.sendRedirect(req.getContextPath() + "/wish/list.do");
	}
}
