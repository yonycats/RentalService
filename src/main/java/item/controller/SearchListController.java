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
import kr.or.ddit.vo.SearchVO;

@WebServlet("/item/search.do")
public class SearchListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 doPost(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		ItemService itemService = ItemService.getInstance();
		HttpSession session = req.getSession();
		
		String searchWord = req.getParameter("searchWord");
		List<SearchVO> resultList = itemService.getSearchResult(searchWord);
		int resultCnt = itemService.getSearchResultCnt(searchWord);
		
		session.setAttribute("joinCode", "searchPage");
		req.setAttribute("searchWord", searchWord);
		req.setAttribute("resultList", resultList);
		req.setAttribute("resultCnt", resultCnt);
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
}
