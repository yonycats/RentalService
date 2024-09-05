package review.controller;

import java.io.IOException;
import java.util.List;

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

@WebServlet(value = "/review/mylist.do")
public class MyListReviewController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");
		String userNo = String.valueOf(uv.getUserNo());
		
		IReviewService reviewService = ReviewServiceImpl.getInstance();
		
		List<ReviewVO> reviewList = reviewService.myReviewAll(userNo);
		
		req.setAttribute("reviewList", reviewList);
		
		req.setAttribute("menu", "myReview");

		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
	
	
}
