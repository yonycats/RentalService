package card.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import card.service.CardServiceImpl;
import card.service.ICardService;

@WebServlet("/card/delete.do")
public class DeleteCardController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		String cardId = req.getParameter("cardId");

		ICardService cardService = CardServiceImpl.getInstance();

		int cnt = cardService.cardDelete(cardId);

		String msg = "";

		req.getSession().setAttribute("msg", msg);

		resp.sendRedirect(req.getContextPath() + "/card/list.do");

	}

	@Override
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		}
}
