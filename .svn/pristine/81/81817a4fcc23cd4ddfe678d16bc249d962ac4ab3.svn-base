package company.controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONException;
import org.json.JSONObject;

@WebServlet("/company/valueCheck.do")
public class CaptchaValueCheckController extends HttpServlet{

	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String clientId = "Ze2GIx4aq5MiaXQEW3l2";//애플리케이션 클라이언트 아이디값";
		String clientSecret = "_HW0wM4s6z";//애플리케이션 클라이언트 시크릿값";

		String code = "1"; // 키 발급시 0,  캡차 이미지 비교시 1로 세팅
		String key = req.getParameter("key"); // 캡차 키 발급시 받은 키값
		String value = req.getParameter("captcha"); // 사용자가 입력한 캡차 이미지 글자값
		String apiURL = "https://openapi.naver.com/v1/captcha/nkey?code=" + code + "&key=" + key + "&value=" + value;

		Map<String, String> requestHeaders = new HashMap<>();
		requestHeaders.put("X-Naver-Client-Id", clientId);
		requestHeaders.put("X-Naver-Client-Secret", clientSecret);
		String responseBody = get(apiURL, requestHeaders);

		System.out.println(responseBody);
		String msg = "";
		
		if(responseBody.contains("true")) {
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
	

private static String get(String apiUrl, Map<String, String> requestHeaders) {
	HttpURLConnection con = connect(apiUrl);
	try {
		con.setRequestMethod("GET");
		for (Map.Entry<String, String> header : requestHeaders.entrySet()) {
			con.setRequestProperty(header.getKey(), header.getValue());
		}

		int responseCode = con.getResponseCode();
		if (responseCode == HttpURLConnection.HTTP_OK) { // 정상 호출
			return valueReadBody(con.getInputStream());
		} else { // 에러 발생
			return valueReadBody(con.getErrorStream());
		}
	} catch (IOException e) {
		throw new RuntimeException("API 요청과 응답 실패", e);
	} finally {
		con.disconnect();
	}
}

	private static HttpURLConnection connect(String apiUrl) {
		try {
			URL url = new URL(apiUrl);
			return (HttpURLConnection) url.openConnection();
		} catch (MalformedURLException e) {
			throw new RuntimeException("API URL이 잘못되었습니다. : " + apiUrl, e);
		} catch (IOException e) {
			throw new RuntimeException("연결이 실패했습니다. : " + apiUrl, e);
		}
	}
	
	private static String valueReadBody(InputStream body) {
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