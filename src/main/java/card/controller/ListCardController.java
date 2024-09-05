package card.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import card.service.CardServiceImpl;
import card.service.ICardService;
import kr.or.ddit.vo.CardVO;
import kr.or.ddit.vo.UserVO;


@WebServlet(value = "/card/list.do")
public class ListCardController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		ICardService cardService = CardServiceImpl.getInstance();
		HttpSession session = req.getSession();
		
		UserVO uv = (UserVO)session.getAttribute("userInfo");
		
		List<CardVO> cardList = cardService.cardAll(uv);
		
		req.setAttribute("cardList", cardList);

		req.setAttribute("menu", "cardList");
		
		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
	
}
