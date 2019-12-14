package post.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comment.model.service.CommentService;
import comment.model.vo.Comment;
import post.model.vo.Post;

/**
 * Servlet implementation class PostViewServlet
 */
@WebServlet("/post.view")
public class PostSelectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PostSelectServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String nPost = request.getParameter("pId");
		/*
		PostService ps = new PostService();
		Post post = ps.postSelect(nPost);*/
		/*
		private String pId;
		private int pType;
		private String pTitle;
		private String pCotent;
		private String pWriter;
		private Date pDateWritten;
		private String pCount;
		private String pLike;
		private String pStatus;*/
		Post post = new Post();
		ArrayList<Comment> listcomment = new CommentService().selectAll(nPost , 1);
		
		SimpleDateFormat sdf =new SimpleDateFormat("");
		
		if(post !=null)
		{	
			request.setAttribute("post", post);
			request.setAttribute("commentList", listcomment);
			request.getRequestDispatcher("views/post/postView.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
