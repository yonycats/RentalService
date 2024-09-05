package category.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import category.service.CategoryServiceImpl;
import category.service.ICategoryService;
import kr.or.ddit.vo.CategoryVO;

@WebServlet("/category/list.do")
public class categoryListController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ICategoryService cateService = CategoryServiceImpl.getInstance();
		
	 	List<CategoryVO> cateList = cateService.allListCategory();
	 	req.setAttribute("cateList", cateList);
	 	HttpSession session = req.getSession();
	 	session.setAttribute("joinCode", "cateAdminList");
		
		req.getRequestDispatcher("/views/indexAdmin.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 카테고리 삭제 후 리스트 출력
		String cateId = req.getParameter("cateId");
		System.out.println(cateId);
		String msg = "";
		ICategoryService cateService = CategoryServiceImpl.getInstance();
		if(cateId != null) {
			int cnt = cateService.deleteCategory(cateId);
			
			if(cnt > 0) {
				msg = "SUCCESS";
			}
		}
		
		req.getSession().setAttribute("msg", msg);
		resp.sendRedirect(req.getContextPath() + "/category/list.do");
	}
	
}
