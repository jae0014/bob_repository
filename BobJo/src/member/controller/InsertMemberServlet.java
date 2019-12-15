package member.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.service.MemberService;
import member.model.vo.Member;

/**
 * Servlet implementation class InsertMemberServlet
 * 회원 추가 서블릿
 */
@WebServlet("/insert.me")
public class InsertMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InsertMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 1. 한글이 있을 경우 인코딩 처리
				request.setCharacterEncoding("utf-8");
				
				// 2. request에 담겨있는 값들 꺼내서 변수에 저장 및 객체 생성
				String userId = request.getParameter("userId");
				String userPwd = request.getParameter("userPwd");
				String userName = request.getParameter("userName");
				String phone = request.getParameter("phone");
				String email = request.getParameter("email");
				String address=request.getParameter("address");
				
				// 단, checkbox는 배열로 값을 받아 하나의 문자열로 만들어 저장(, 기준 문자열 합치기)
				String[] interest = request.getParameterValues("interest");
				String inter = "";
				if(interest !=null) {
					inter = String.join(", ", interest);
					
				}
				
				// 3. 비즈니스 로직을 수행할 서비스 메소드 전달하고 결과 값 받기
				Member mem = new Member(userId, userPwd, userName, phone, email, address, inter);
				MemberService ms = new MemberService();
				int result = ms.insertMember(mem);
				// 4. 결과 값에 따라 성공 / 실패 페이지로 이동
				
				// 성공 시 메인 페이지
				if(result > 0) {
					// menubar.jsp에서 alert창 출력하도록 설정
					request.getSession().setAttribute("msg",  "회원 가입 성공!!");//세션에다가 메세지를 담아봄 리퀘스트로 담아봤자 소용없음
					response.sendRedirect(request.getContextPath());
				}else {
					// 실패시 "회원 가입 실패!!" 메세지 가지고 errorPage.jsp로
					request.setAttribute("msg", "회원가입 실패!!!");
					RequestDispatcher view = request.getRequestDispatcher("views/common/errorPage.jsp");
					view.forward(request, response);
					
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
