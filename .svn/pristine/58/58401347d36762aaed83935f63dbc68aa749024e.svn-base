package company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import company.service.CompanyService;
import item.service.ItemService;
import kr.or.ddit.vo.ItemVO;

@WebServlet("/company/updateItem.do")
public class UpdateItemController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ItemService itemService = ItemService.getInstance();
		
		String itemId = req.getParameter("itemId");
		ItemVO iv = itemService.getItemInfo(itemId);
		
		req.setAttribute("itemInfo", iv);
		req.setAttribute("menu", "updateItem");
		req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String itemId = req.getParameter("itemId");
		String comId = req.getParameter("comId");
		String cateId = req.getParameter("cateId");
		String itemName = req.getParameter("itemName");
		String itemModel = req.getParameter("itemModel");
		String itemMake = req.getParameter("itemMake");
		Integer itemM12 = Integer.parseInt( req.getParameter("itemM12").replace(",", ""));
		Integer itemM36 = Integer.parseInt(req.getParameter("itemM36").replace(",", ""));
		Integer itemM60 = Integer.parseInt(req.getParameter("itemM60").replace(",", ""));
		String itemAttr = req.getParameter("itemAttr");
		String itemAs = req.getParameter("itemAs");
		
		ItemService itemService = ItemService.getInstance();
		ItemVO iv = new ItemVO();
		
		iv.setItemId(itemId);
		iv.setComId(comId);
		iv.setCateId(cateId);
		iv.setItemName(itemName);
		iv.setItemModel(itemModel);
		iv.setItemMake(itemMake);
		iv.setItemM12(itemM12);
		iv.setItemM36(itemM36);
		iv.setItemM60(itemM60);
		iv.setItemAttr(itemAttr);
		iv.setItemAs(itemAs);
		
		int cnt = itemService.updateItem(iv);
		
		// 첨부파일 저장하기

		String msg = "";

		if (cnt > 0) {
			msg = "SUCCESS";
		} else {
			msg = "FAIL";
		}
		
		
		resp.sendRedirect(req.getContextPath()+"/company/itemList.do");
		
	}
	
}
