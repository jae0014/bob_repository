package member.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import board.model.service.BoardService;
import board.model.vo.Board;
import member.model.service.MemberService;

/**
 * Servlet implementation class DeleteMemberServlet
 */
@WebServlet("/delete.me")
public class DeleteMemberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteMemberServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String status = "N";
		String[] mNo= request.getParameterValues("chkmNo");
		System.out.println(status);
		System.out.println(mNo);
		
		/*
		 * if(mNo[0]== null) { request.getSession().setAttribute("msg",
		 * "탈퇴할 회원이 없습니다.");
		 * 
		 * response.sendRedirect("memeberList.admin"); }
		 */
	
		MemberService service = new MemberService();
		
		
			//회원 탈퇴
			int result = service.updateStatusMember(mNo, status);

		
		      if (result>=1) {
		          request.getSession().setAttribute("msg", "회원정보를 수정했습니다.");

		          response.sendRedirect("memeberList.admin");

		       } else {
		          request.setAttribute("msg", "회원정보 수정에 실패했습니다.");
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
