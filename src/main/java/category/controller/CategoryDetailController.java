package category.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;

@WebServlet("/category/detail.do")
public class CategoryDetailController extends HttpServlet{

   @Override
   protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      
      ItemService itemService = ItemService.getInstance();

      String cateId = req.getParameter("cateId");


      req.setAttribute("cateName", cateId);


      req.getRequestDispatcher("/views/category/detail.jsp").forward(req, resp);
      
      
   }
   
   @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
   
   }
   
}
