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

@WebServlet("/review/update.do")
public class UpdateReviewController extends HttpServlet {
	
	ReviewNameVO rnv = new ReviewNameVO();

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String revId = req.getParameter("revId");

		IReviewService reviewService = ReviewServiceImpl.getInstance();

		rnv = reviewService.getReview(revId);
		
		req.setAttribute("rnv", rnv);

		req.setAttribute("menu", "reviewUpdate");

		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String revId = req.getParameter("revId");
		String revRating = req.getParameter("revRating");
		String revDate = req.getParameter("revDate");
		String revTitle = req.getParameter("revTitle");
		String revImage = req.getParameter("revImage");

		IReviewService reivewService = ReviewServiceImpl.getInstance();
		
		rnv.setRevId(revId);
		rnv.setRevRating(revRating);
		rnv.setRevDate(revDate);
		rnv.setRevTitle(revTitle);
		rnv.setRevImage(revImage);

		int cnt = reivewService.reviewUpdate(rnv);

		String msg = "";

		req.getSession().setAttribute("msg", msg);

		resp.sendRedirect(req.getContextPath() + "/review/mylist.do");

	}

}
