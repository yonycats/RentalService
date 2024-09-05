package category.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import category.service.CategoryServiceImpl;
import category.service.ICategoryService;
import kr.or.ddit.vo.CategoryVO;

@WebServlet("/category/insert.do")
public class CategoryInsertController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.getRequestDispatcher("/views/category/insert.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String cateId = req.getParameter("cateId");
		ICategoryService cateService = CategoryServiceImpl.getInstance();
		
		
		int cnt = cateService.insertCategory(cateId);
		
		resp.sendRedirect(req.getContextPath() + "/category/list.do");
	}
}
