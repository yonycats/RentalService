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
import kr.or.ddit.vo.ItemVO;
import kr.or.ddit.vo.RecentItemVO;
import kr.or.ddit.vo.UserVO;
import recentItem.service.RecentItemService;

@WebServlet("/item/detail.do")
public class ItemDetailController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		ItemService itemService = ItemService.getInstance();
		RecentItemService recentItemService = RecentItemService.getInstance();
		
		String itemId = req.getParameter("itemId");
		ItemVO itemInfo = itemService.getItemInfo(itemId);
		String subImg = itemService.getSubImg(itemId);
//		UserVO userInfo = (UserVO)session.getAttribute("userInfo");
//		if(userInfo!=null) {
//			String retMaxId = recentItemService.getMaxRetId();
//			retMaxId = "RET" + retMaxId;
//			RecentItemVO rv = new RecentItemVO(retMaxId, itemId, userInfo.getUserNo());
//			int cnt = recentItemService.insertRet(rv);
//		}

		req.setAttribute("itemInfo", itemInfo);
		req.setAttribute("subImg", subImg);
		session.setAttribute("joinCode", "detailPage");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	}
	
}
