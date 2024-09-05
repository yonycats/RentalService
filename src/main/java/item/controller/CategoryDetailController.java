package item.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;

@WebServlet("/item/categoryDetail.do")
public class CategoryDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ItemService itemService = ItemService.getInstance();
		String cateId = req.getParameter("cateId");

		List<ItemVO> bestItemList = itemService.getBestItemList(cateId);
//		List<CategoryVO> categoryList = itemService.getAllCategory();
		List<ItemVO> categoryItemList = itemService.getCategoryItemList(cateId);
		for (ItemVO itemVO : categoryItemList) {
			System.out.println(itemVO.getItemName());
		}
		int cnt = itemService.countItem(cateId);

		List<String> itemMakeFilter = itemService.getItemMakeFilter(cateId);
		List<String> itemAttrFilter = itemService.getItemAttrFilter(cateId);
		List<String> comNameFilter = itemService.getComNameFilter(cateId);
		
		req.setAttribute("itemMakeFilter", itemMakeFilter);
		req.setAttribute("itemAttrFilter", itemAttrFilter);
		req.setAttribute("comNameFilter", comNameFilter);
		
		HttpSession session = req.getSession();
		session.setAttribute("cateId", cateId);
		session.setAttribute("cnt", cnt);
		session.setAttribute("bestItemList", bestItemList);
		session.setAttribute("categoryItemList", categoryItemList);
		session.setAttribute("joinCode", "categoryItemList");
		
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
}
