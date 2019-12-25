package reply.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import reply.model.vo.Reply;

/**
 * Servlet implementation class ReplyAddServlet
 */
@WebServlet("/reply.add")
public class ReplyAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReplyAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String type = request.getParameter("type");
		String quill = request.getParameter("quillDAO");
		String writer = request.getParameter("writer");
		String pId = request.getParameter("pId");
		Reply reply = new Reply();
		reply.setbType(Integer.parseInt(type));
		reply.setContent(quill);
		reply.setWriterId(writer);
		reply.setBoard_Id(pId);
		
		
		
		System.out.println(type);
		System.out.println(quill);
		System.out.println(writer);
		System.out.println(pId);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
