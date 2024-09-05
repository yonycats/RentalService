package company.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONException;
import org.json.JSONObject;

import company.service.CompanyService;
import kr.or.ddit.vo.CompanyVO;

@WebServlet("/company/checkDelete.do")
public class CheckDeleteController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "checkDelete");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		CompanyService companyService = CompanyService.getInstance();
		HttpSession session = req.getSession();
		CompanyVO cv = (CompanyVO)session.getAttribute("userInfo");
		
		if(cv==null) {
			String comId = "COM00001";
			cv = companyService.getComInfo(comId);
		}
		
		boolean isExist = false;
		String msg = "";
		String comId = req.getParameter("comId");
		String comPass = req.getParameter("comPass");
		
		if(comId.equals(cv.getComId())&&comPass.equals(cv.getComPass())) {
			isExist = true;
		}
			
		if(isExist) {
			msg = "success";
		}else {
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
