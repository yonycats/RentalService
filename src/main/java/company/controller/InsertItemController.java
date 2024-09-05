package company.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;

@MultipartConfig
@WebServlet("/company/insertItem.do")
public class InsertItemController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setAttribute("menu", "insertItem");
		req.getRequestDispatcher("/views/indexCompany.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		String comId = req.getParameter("comId");
		String comName = req.getParameter("comName");
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
		String ItemMaxId = itemService.getMaxItemId();
		ItemMaxId = "ITEM" + ItemMaxId;
		
		iv.setItemId(ItemMaxId);
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
		
		int cnt = itemService.saveAtchFileList(req.getParts(), iv);
		
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
