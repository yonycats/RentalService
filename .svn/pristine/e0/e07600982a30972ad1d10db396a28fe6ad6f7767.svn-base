package user.controller;

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

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/user/signUp.do")
public class SingUpUserController extends HttpServlet {
	
	private static String clientId = "Ze2GIx4aq5MiaXQEW3l2"; //애플리케이션 클라이언트 아이디값";
	private static String clientSecret = "_HW0wM4s6z"; //애플리케이션 클라이언트 시크릿값";
	private static String filename = null;
	private static String key;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		String code = "0"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
		String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code;

		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		String responseBody = keyGet(apiURL, requestHeaders);
		
		key = responseBody.substring(8, 24);

		apiURL = "https://openapi.naver.com/v1/captcha/ncaptcha.bin?key=" + key;
		
		requestHeaders = new HashMap<>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		responseBody = imageGet(apiURL, requestHeaders, req);

		req.setAttribute("key", key);
		req.setAttribute("fileName", filename);
		
		HttpSession session = req.getSession();
		session.setAttribute("joinCode", "signUp");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);

	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String userId = req.getParameter("userId");
		String userPass = req.getParameter("userPass");
		String userName = req.getParameter("userName");
		String userEmail = req.getParameter("userEmail");
		String userTel = req.getParameter("userTel");
		String userQut = req.getParameter("userQut");
		String userAns = req.getParameter("userAns");
		String userAddr = req.getParameter("userAddr");
		String userAddrDetail = req.getParameter("userAddrDetail");
		int userZip = Integer.parseInt(req.getParameter("userZip"));

		IUserService userService = UserServiceImpl.getInstance();
		
		UserVO uv = new UserVO();
		
		uv.setUserId(userId);
		uv.setUserPass(userPass);
		uv.setUserName(userName);
		uv.setUserEmail(userEmail);
		uv.setUserTel(userTel);
		uv.setUserQut(userQut);
		uv.setUserAns(userAns);
		uv.setUserAddr(userAddr);
		uv.setUserAddrDetail(userAddrDetail);
		uv.setUserZip (userZip);

		int cnt = userService.insertUser(uv);
		
	// =========================================================================================
		


		String msg = "";

		if (cnt > 0) {
			msg = "SUCCESS";
			resp.sendRedirect(req.getContextPath() + "/user/login.do");	// 민강오빠가 써둔거

		} else {
			msg = "FAIL";
			resp.sendRedirect(req.getContextPath() + "/user/list.do");
		}
		req.getSession().setAttribute("msg", msg);
	}
	

	private static String keyGet(String apiUrl, Map<String, String> requestHeaders) {
		HttpURLConnection con = keyConnect(apiUrl);
		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				return keyReadBody(con.getInputStream());
			} else { // 에러 발생
				return keyReadBody(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	private static HttpURLConnection keyConnect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}

	private static String keyReadBody(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder responseBody = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null) {
				responseBody.append(line);
			}

			return responseBody.toString();
		} catch (IOException e) {
			throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
	}

	private static String imageGet(String apiUrl, Map<String, String> requestHeaders, HttpServletRequest req) {
		HttpURLConnection con = imageConnect(apiUrl);
		try {
			con.setRequestMethod("GET");
			for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
				con.setRequestProperty(header.getKey(), header.getValue());
			}

			int responseCode = con.getResponseCode();
			if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
				return getImage(con.getInputStream(), req);
			} else { // 에러 발생
				return error(con.getErrorStream());
			}
		} catch (IOException e) {
			throw new RuntimeException("API 요청과 응답 실패", e);
		} finally {
			con.disconnect();
		}
	}

	private static HttpURLConnection imageConnect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}

	private static String getImage(InputStream is, HttpServletRequest req) {
		int read;
		byte[] bytes = new byte[1024];
		// 랜덤한 이름으로  파일 생성
		filename = Long.valueOf(new Date().getTime()).toString();
		File f = new File(req.getServletContext().getRealPath("/") + "views/images/captcha/" + filename + ".jpg");
		try (OutputStream outputStream = new FileOutputStream(f)) {
			f.createNewFile();
			while ((read = is.read(bytes)) != -1) {
				outputStream.write(bytes, 0, read);
			}
			return "이미지 캡차가 생성되었습니다.";
		} catch (IOException e) {
			throw new RuntimeException("이미지 캡차 파일 생성에 실패 했습니다.", e);
		}
	}

	private static String error(InputStream body) {
		InputStreamReader streamReader = new InputStreamReader(body);

		try (BufferedReader lineReader = new BufferedReader(streamReader)) {
			StringBuilder responseBody = new StringBuilder();

			String line;
			while ((line = lineReader.readLine()) != null) {
				responseBody.append(line);
			}

			return responseBody.toString();
		} catch (IOException e) {
			throw new RuntimeException("API 응답을 읽는데 실패했습니다.", e);
		}
	}
	
}
