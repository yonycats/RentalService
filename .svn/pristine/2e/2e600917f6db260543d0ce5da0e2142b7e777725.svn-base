package company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import item.service.ItemService;

@WebServlet("/company/deleteItem.do")
public class DeleteItemController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ItemService itemService = ItemService.getInstance();
		String itemId = req.getParameter("itemId");
		
		itemService.deleteItem(itemId);
		resp.sendRedirect(req.getContextPath()+"/company/itemList.do");
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.sendRedirect(req.getContextPath()+"/company/itemList.do");
	}
	
}
