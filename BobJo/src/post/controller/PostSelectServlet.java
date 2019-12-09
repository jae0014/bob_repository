package post.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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
		String nPost = request.getParameter("pId");
		System.out.println("was here ");
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
		Post post = new Post("pIDcreated",10,"테스트 제목이에용","테스트용 내용이에용","테스트작성자",new Date(),"123","123","n");
		ArrayList<Comment> listcomment = new ArrayList<Comment>();
		SimpleDateFormat sdf =new SimpleDateFormat("");
		for(int i =0;i<10 ; i ++)
		{
			Comment comm = new Comment("cid"+i,i,"boardid"+i,"writerId"+i,"content "+i, new Date(),"status"+i, "name"+i);
			listcomment.add(comm);
		}
		if(post !=null)
		{	
			request.setAttribute("post", post);
			request.setAttribute("commentList", listcomment);
			request.getRequestDispatcher("views/post/postView.jsp").forward(request, response);
		}
		else
		{
			request.setAttribute("msg", "게시판 상세조회에 실패하였습니다.");
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
