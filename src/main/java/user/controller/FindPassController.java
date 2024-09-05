package user.controller;

import java.io.IOException;
import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.or.ddit.vo.CompanyVO;
import kr.or.ddit.vo.UserVO;
import user.service.IUserService;
import user.service.UserServiceImpl;

@WebServlet("/user/findPass.do")
public class FindPassController extends HttpServlet {

	private static final long serialVersionUID = 1L;
	private final static String MAILID = "dbsekqls3098@naver.com";
	private final static String PASSWORD = "ekqlsdlqmsdl!";

	public FindPassController() {
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		HttpSession session = req.getSession();

		session.setAttribute("joinCode", "findPass");
		req.getRequestDispatcher("/views/indexMain.jsp").forward(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		IUserService userService = UserServiceImpl.getInstance();
		String to = req.getParameter("to");
		String userName = req.getParameter("userName");
		String userId = req.getParameter("userId");

		String ranPass = RandomString.generateRandomString(12);

		UserVO uv = new UserVO();

		uv.setUserPass(ranPass);

		uv.setUserName(userName);
		uv.setUserId(userId);
		uv.setUserEmail(to);

		Properties prop = new Properties();
		prop.put("mail.smtp.host", "smtp.naver.com");
		prop.put("mail.smtp.port", 587);
		prop.put("mail.smtp.auth", "true");
		prop.put("mail.smtp.ssl.enable", "true");
		prop.put("mail.smtp.ssl.trust", "smtp.naver.com");

		System.out.println(userName);
		System.out.println(userId);
		System.out.println(to);

		int cnt = userService.findPassUser(uv);

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(MAILID, PASSWORD);
			}
		});
		
		String msg = "";

		try {

			if (cnt > 0) {
				msg = "success";

				resp.setContentType("application/json");

				resp.getWriter().print("{\"userPass\": \"" + ranPass + "\"}");

			} else {
				msg = "fail";
			}
			req.getSession().setAttribute("msg", msg);

			MimeMessage message = new MimeMessage(session);
			message.setFrom(new InternetAddress(MAILID));
			message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

			message.setSubject("대덕렌탈 비밀번호 인증");

			message.setText("임시 비밀번호가 발급되었습니다. 발급된 비밀번호는 [" + ranPass + "]입니다. \n\n로그인 후 개인정보에서 비밀번호를 변경해주세요.");

			Transport.send(message);
			System.out.println("메세지 보냄");

		} catch (MessagingException e) {
			resp.setStatus(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
			resp.getWriter().write("이메일 발송에 실패했습니다.");
			e.printStackTrace();
		}

	}
}
