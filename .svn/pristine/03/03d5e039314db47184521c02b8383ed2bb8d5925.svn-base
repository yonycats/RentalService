package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.vo.ReviewNameVO;
import review.service.IReviewService;
import review.service.ReviewServiceImpl;

@WebServlet("/review/detail.do")
public class ReviewDetailController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String revId = req.getParameter("revId");

		System.out.println("revId >>>" + revId);

		IReviewService reviewService = ReviewServiceImpl.getInstance();

		ReviewNameVO rnv = reviewService.getReview(revId);

		System.out.println(rnv.toString());

		req.setAttribute("rnv", rnv);

		req.setAttribute("menu", "reviewDetail");

		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}
