package recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attachment.model.vo.Attachment;
import board.model.vo.Board;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RecipeService rService = new RecipeService();

		String rId = request.getParameter("rId");

		
		ArrayList<Recipe> rList = rService.selectList(rId);

		ArrayList<Attachment> fList = new ArrayList<Attachment>();

		for (int i = 0; i < rList.size(); i++) {
			Attachment imgFile = rService.selectThumbnail(rList.get(i).getrId());
			fList.add(imgFile);

		}

		if (rList.size() != 0 && fList.size() !=0 ) {
			request.setAttribute("rList", rList);
			request.setAttribute("rId", rId);
			 request.setAttribute("fList", fList); 
			request.getRequestDispatcher("views/recipe/recipeListView.jsp").forward(request, response);

		} else {
			request.setAttribute("msg", "레시피 조회에 실패하였습니다.");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
