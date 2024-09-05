package company.controller;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.or.ddit.vo.CompanyVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/company/signUp.do")
public class SignUpController extends HttpServlet{


	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		

		
		req.getRequestDispatcher("/views/company/signUp.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		req.setCharacterEncoding("UTF-8");

		String comId = req.getParameter("comId");
		String comPass = req.getParameter("comPass");
		String comName = req.getParameter("comName");
		String comCeo = req.getParameter("comCeo");
		String comNo = req.getParameter("comNo");
		String comAddr = req.getParameter("comAddr");
		String comAddrDetail = req.getParameter("comAddrDetail");
		int comZip = Integer.parseInt(req.getParameter("comZip"));
		String comTel = req.getParameter("comTel");
		String comEmail = req.getParameter("comEmail");
		String comResname = req.getParameter("comResname");
		String comRestel = req.getParameter("comRestel");
		String comSignout = req.getParameter("comSignout");
		String comAuth = req.getParameter("comAuth");

		IUserService userService = UserServiceImpl.getInstance();

		CompanyVO cv = new CompanyVO();

		cv.setComId(comId);
		cv.setComPass(comPass);
		cv.setComName(comName);
		cv.setComCeo(comCeo);
		cv.setComNo(comNo);
		cv.setComAddr(comAddr);
		cv.setComAddrDetail(comAddrDetail);
		cv.setComZip(comZip);
		cv.setComTel(comTel);
		cv.setComEmail(comEmail);
		cv.setComResname(comResname);
		cv.setComRestel(comRestel);
		cv.setComSignout(comSignout);
		cv.setComAuth(comAuth);
		
		int cnt = userService.insertCom(cv);

		String msg = "";

		if (cnt > 0) {
			msg = "SUCCESS";
			resp.sendRedirect(req.getContextPath() + "/user/login.do");	// 민강오빠가 써준거

		} else {
			msg = "FAIL";
			resp.sendRedirect(req.getContextPath() + "/user/list.do");
		}
		req.getSession().setAttribute("msg", msg);
	}
		
	



	
}
