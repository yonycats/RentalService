package review.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import review.service.IReviewService;
import review.service.ReviewServiceImpl;


@WebServlet("/review/delete.do")
public class DeleteReviewController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String revId = req.getParameter("revId");
		
		IReviewService reviewService = ReviewServiceImpl.getInstance();
		
		int cnt = reviewService.reviewDelete(revId);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		resp.sendRedirect(req.getContextPath() + "/review/mylist.do");
		
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	}
}
