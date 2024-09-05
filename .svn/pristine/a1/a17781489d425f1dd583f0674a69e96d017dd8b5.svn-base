package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.ReviewVO;
import kr.or.ddit.vo.UserVO;
import review.service.IReviewService;
import review.service.ReviewServiceImpl;


@WebServlet("/review/insert.do")
public class InsertReviewController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String itemId = req.getParameter("itemId");
		String ordId = req.getParameter("ordId");
		
//		System.out.println(itemId);
//		System.out.println(ordId);
		
		HttpSession session = req.getSession();
		session.setAttribute("itemId", itemId);
		session.setAttribute("ordId", ordId);
		
		
//		IReviewService reivewService = ReviewServiceImpl.getInstance();
//		int rvi = reivewService.getReview(param);
		
		
		
		
//		ReviewVO rv = new ReviewVO(itemId, ordId, revRating, revTitle, revImage);
//		int cnt = reivewService.
		
		
		
		req.setAttribute("menu", "reviewInsert");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		String itemId = (String) session.getAttribute("itemId");
		String ordId = (String) session.getAttribute("ordId");
		
		String revRating = req.getParameter("revRating");
		String revTitle = req.getParameter("revTitle");
		String revImage = req.getParameter("revImage");
		
		IReviewService reivewService = ReviewServiceImpl.getInstance();
		ReviewVO rv = new ReviewVO( itemId,  ordId,  revRating,  revTitle,  revImage,  userNo);

		int cnt = reivewService.reviewInsert(rv);
		System.out.println(cnt);
		
		session.removeAttribute("itemId");
		session.removeAttribute("ordId");
		
		req.getRequestDispatcher("/review/mylist.do").forward(req, resp);
	}
}