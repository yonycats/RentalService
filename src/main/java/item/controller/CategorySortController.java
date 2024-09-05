package item.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.google.gson.Gson;

import item.service.ItemService;
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.SearchVO;

@WebServlet("/categorySortItems.do")
public class CategorySortController extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String sortType = request.getParameter("sortType");
		String searchWord = request.getParameter("searchWord");
		HttpSession session = request.getSession();
		ItemService itemService = ItemService.getInstance();
		List<SearchVO> categoryItemList = null;
		

		if (sortType != null) {
			switch (sortType) {
			case "recent":
				categoryItemList = itemService.getSearchResultSortDate(searchWord);
				break;
			case "high-price":
				categoryItemList = itemService.getSearchResultSortHigh(searchWord);
				break;
			case "low-price":
				categoryItemList = itemService.getSearchResultSortLow(searchWord);
				break;
			}
		}

		
		response.setContentType("application/json");
		response.setCharacterEncoding("UTF-8");
		PrintWriter out = response.getWriter();
		Gson gson = new Gson();
		out.print(gson.toJson(categoryItemList));
		out.flush();
	}
}
