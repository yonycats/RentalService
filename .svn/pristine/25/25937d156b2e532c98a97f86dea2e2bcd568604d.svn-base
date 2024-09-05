package review.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.vo.ReviewVO;
import review.service.IReviewService;
import review.service.ReviewServiceImpl;


@WebServlet(value = "/review/list.do")
public class ListReviewController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String itemId = req.getParameter("itemId");
		
		IReviewService reviewService = ReviewServiceImpl.getInstance();
		
		List<ReviewVO> reviewList = reviewService.reviewAll(itemId);
		
		req.setAttribute("reviewList", reviewList);
		
		req.getRequestDispatcher("/views/review/list.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req,resp);
	}
}
