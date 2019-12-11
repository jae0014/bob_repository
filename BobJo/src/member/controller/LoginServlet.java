package member.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login.me")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String userId= request.getParameter("userId");
		String userPwd = request.getParameter("userPwd");
		
		// 세션에 넣어야하기때문에 Member로 받음
		Member loginUser = new MemberService().loginMember(userId, userPwd);  
		System.out.println(loginUser);
		if(loginUser != null) {
			HttpSession session = request.getSession();
			
//			session.setMaxInactiveInterval(interval); 로그인 후 10분 뒤 자동로그아웃
			session.setAttribute("loginUser", loginUser);
			System.out.println(loginUser);
			// 로그인 완료 후 메인페이지로
			response.sendRedirect(request.getContextPath());
			
		}else {
			request.setAttribute("msg", "로그인 실패. 자세한 내용은 관리자에게 문의하세요.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);;
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
