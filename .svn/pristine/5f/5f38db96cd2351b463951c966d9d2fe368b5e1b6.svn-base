package card.controller;

import java.io.IOException;

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


@WebServlet("/card/insert.do")
public class InsertCardController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setAttribute("menu", "cardInsert");

		req.getRequestDispatcher("/views/indexMyPage.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		ICardService cardService = CardServiceImpl.getInstance();
		HttpSession session = req.getSession();
		UserVO uv = (UserVO)session.getAttribute("userInfo");
		
		String cardCom = req.getParameter("cardCom");
		String cardNo = req.getParameter("cardNo");
		String cardDate = req.getParameter("cardDate");
		String userNo = String.valueOf(uv.getUserNo());
		
		CardVO cv = new CardVO(cardCom, cardNo, cardDate, userNo);
		
		int cnt = cardService.cardInsert(cv);
		
		String msg = "";
		
		req.getSession().setAttribute("msg", msg);
		
		req.getRequestDispatcher("/card/list.do").forward(req, resp);
		
	}
	
	
}
