package user.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import kr.or.ddit.vo.UserVO;

@WebServlet("/user/checkDelete.do")
public class checkDeleteController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "checkDeleteUser");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		UserVO uv = (UserVO) session.getAttribute("userInfo");

		boolean isExist = false;
		String msg = "";
		String userId = req.getParameter("userId");
		String userPass = req.getParameter("userPass");

		if (userId.equals(uv.getUserId()) && userPass.equals(uv.getUserPass())) {
			isExist = true;
		}

		if (isExist) {
			msg = "success";
		} else {
			msg = "fail";
		}

		JSONObject jObj = new JSONObject();
		try {
			jObj.put("msg", msg);
		} catch (JSONException e) {
			e.printStackTrace();
		} // key, value

		resp.setContentType("application/x-json; charset=utf-8");
		resp.getWriter().print(jObj);

	}

}
