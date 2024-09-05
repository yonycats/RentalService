package partnership.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.PartnershipVO;
import partnership.service.IPartnershipService;
import partnership.service.PartnershipServiceImpl;

@WebServlet("/partnership/insert.do")
public class InsertPartnershipController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "pashInsert");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
		
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		CompanyVO comVo = (CompanyVO)session.getAttribute("userInfo");
		String pashId = req.getParameter("pashId");
		String comId = comVo.getComId();
		String pashTitle = req.getParameter("pashTitle");
		String pashContent = req.getParameter("pashContent");
		String pashName = comVo.getComName();
		String pashEmail = comVo.getComEmail();
		String pashYn = req.getParameter("pashYn");
//		String a = req.getParameter("pashDate");
//		LocalDate pashDate = LocalDate.parse(a);
		String msg = "";
		
		IPartnershipService pashService = PartnershipServiceImpl.getInstance();
		
		PartnershipVO pv = new PartnershipVO(pashId, comId, pashTitle, pashContent, pashName, pashEmail, pashYn);
		
		if(pv != null) {
			int cnt = pashService.insertPartnership(pv);
				if(cnt > 0)
					msg = "INSERT";
		}
		req.getSession().setAttribute("msg", msg);
		req.getRequestDispatcher("/partnership/list.do").forward(req, resp);
	}
	
}
