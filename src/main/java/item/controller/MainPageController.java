package item.controller;

import java.io.IOException;
import java.util.List;
import java.util.Locale.Category;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import item.service.ItemService;
import kr.or.ddit.vo.CategoryVO;
import kr.or.ddit.vo.ItemVO;

@WebServlet("/item/mainPage.do")
public class MainPageController extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		ItemService itemService = ItemService.getInstance();

		List<CategoryVO> categoryList = itemService.getAllCategory();
		List<ItemVO> airBestList = itemService.getAirBest3();
		List<ItemVO> refBestList = itemService.getRefBest3();
		List<ItemVO> laundryBestList = itemService.getLaundryBest3();
		List<ItemVO> stylerBestList = itemService.getStylerBest3();
		List<ItemVO> tvBestList = itemService.getTvBest3();
		

		session.setAttribute("categoryList", categoryList);
		session.setAttribute("airBestList", airBestList);
		session.setAttribute("refBestList", refBestList);
		session.setAttribute("laundryBestList", laundryBestList);
		session.setAttribute("stylerBestList", stylerBestList);
		session.setAttribute("tvBestList", tvBestList);
		session.setAttribute("joinCode", "mainPage");
		
		
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
		System.out.println(airBestList.get(0).getItemId());
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}
