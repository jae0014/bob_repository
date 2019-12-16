package email;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;
import java.util.Random;

import javax.mail.Message;
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

import member.model.service.MemberService;

/**
 * Servlet implementation class test
 */
@WebServlet("/email.me")
public class EmailCheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public EmailCheckServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// db에 해당 이메일이 있는지 확인
		String email = request.getParameter("email");

		int result = new MemberService().checkMemberEmail(email);
		
		// 2. ajax를 이용한 중복체크
		PrintWriter out = response.getWriter();
		
		
		if (result > 0) {
			System.out.println(result);
			// 중복된 이메일이 있어 인증안됨
			//request.setAttribute("msg", "이미 있는 이메일주소입니다.");
			out.print("fail");
			
		} else {

			// 이메일 중복확인 완료시

			// mail server 설정
			String host = "smtp.naver.com";
			String user = "rlawlgus0420@naver.com"; // 자신의 네이버 계정
			String password = "sydghkT{!@7}";// 자신의 네이버 패스워드

			// 메일 받을 주소
			String to_email = "rlawlgus0420@naver.com";

			// SMTP 서버 정보를 설정한다.
			Properties props = new Properties();
			props.put("mail.smtp.host", host);
			props.put("mail.smtp.port", 465);
			props.put("mail.smtp.auth", "true");
			props.put("mail.smtp.ssl.enable", "true");

			// 인증 번호 생성기
			StringBuffer temp = new StringBuffer();
			Random rnd = new Random();
			for (int i = 0; i < 10; i++) {
				int rIndex = rnd.nextInt(3);
				switch (rIndex) {
				case 0:
					// a-z
					temp.append((char) ((int) (rnd.nextInt(26)) + 97));
					break;
				case 1:
					// A-Z
					temp.append((char) ((int) (rnd.nextInt(26)) + 65));
					break;
				case 2:
					// 0-9
					temp.append((rnd.nextInt(10)));
					break;
				}
			}
			String AuthenticationKey = temp.toString();
			System.out.println("인증번호 : " + AuthenticationKey);

			Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator() {
				protected PasswordAuthentication getPasswordAuthentication() {
					return new PasswordAuthentication(user, password);
				}
			});

			// email 전송
			try {
				MimeMessage msg = new MimeMessage(session);
				msg.setFrom(new InternetAddress(user, "Chef J"));
				msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to_email));

				// 메일 제목
				msg.setSubject("Chef J 회원가입 인증메일입니다.");
				// 메일 내용
				msg.setText("인증 번호는 :" + temp);

				Transport.send(msg);
				System.out.println("이메일 전송");

			} catch (Exception e) {
				e.printStackTrace();// TODO: handle exception
			}

			// 세션에 인증키 저장
			HttpSession saveKey = request.getSession();
			saveKey.setAttribute("AuthenticationKey", AuthenticationKey);			
			
			out.print("success");

		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}