package recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recipe.model.service.RecipeService;
import recipe.model.vo.PageInfo;
import recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeListServlet
 */
@WebServlet("/list.re")
public class RecipeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RecipeService rService = new RecipeService();
		
		int rCount = rService.getListCount();
		
		int currentPage;
		int pageLimit;
		int maxPage;
		int startPage;
		int endPage;
		
		int boardLimit = 10;
		
		currentPage = 1;
		
		
		if(request.getParameter("currentPage") !=null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		pageLimit = 10;
		
		maxPage = (int)Math.ceil((double)(rCount/boardLimit));
		
		startPage = (currentPage - 1) /pageLimit * pageLimit + 1;
		
		endPage = startPage + pageLimit - 1;
		
		if(maxPage < endPage) {
			
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, rCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		
		ArrayList<Recipe> rList = rService.selectList(currentPage, boardLimit);
		
		RequestDispatcher view = request.getRequestDispatcher("views/recipe/recipeListView.jsp");
		request.setAttribute("rList", rList);
		request.setAttribute("pi", pi);
		view.forward(request, response);
		
		
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
