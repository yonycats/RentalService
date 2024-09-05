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


@WebServlet("/user/mailsender.do")
public class MailController extends HttpServlet {
   private static final long serialVersionUID = 1L;
   private final static String MAILID = "dbsekqls3098@naver.com"; // naver mail주소 입력
   private final static String PASSWORD = "ekqlsdlqmsdl!"; // mail 비밀번호 입력

   public MailController() {
   }

   protected void doGet(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {

      System.out.println(1);
      Properties prop = new Properties();
      prop.put("mail.smtp.host", "smtp.naver.com");
      prop.put("mail.smtp.port", 587);
      prop.put("mail.smtp.auth", "true");
      prop.put("mail.smtp.ssl.enable", "true");
      prop.put("mail.smtp.ssl.trust", "smtp.naver.com");

      Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
         @Override
         protected PasswordAuthentication getPasswordAuthentication() {
            return new PasswordAuthentication(MAILID, PASSWORD);
         }
      });

      
      String name = request.getParameter("name");
      String to = request.getParameter("email");
      String vNum = request.getParameter("num");

      System.out.println(name);
      System.out.println(to);
      System.out.println(vNum);
      
      try {
         MimeMessage message = new MimeMessage(session);
         message.setFrom(new InternetAddress(MAILID));
         message.addRecipient(Message.RecipientType.TO, new InternetAddress(to));

         message.setSubject("DDIT RENTAL 인증");

         message.setText("\n대덕렌탈 아이디 찾기 인증번호는 [ " + vNum + " ] 입니다.");

         Transport.send(message);
         System.out.println("메세지 보냄");
         response.getWriter().print(1);

      } catch (MessagingException e) {
         e.printStackTrace();
      }

   }

   protected void doPost(HttpServletRequest request, HttpServletResponse response)
         throws ServletException, IOException {
   }

}
