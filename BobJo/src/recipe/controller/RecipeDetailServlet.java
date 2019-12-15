package recipe.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import recipe.model.dao.RecipeDao;
import recipe.model.service.RecipeService;
import recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeDetailServlet
 */
@WebServlet("/detail.re")
public class RecipeDetailServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecipeDetailServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rId = request.getParameter("r_Id");
		Recipe recipe = null;
		
		boolean isGet = false;
		Cookie[] cookies = request.getCookies();
		if(cookies !=null) {
			for(Cookie c : cookies) {
				if(c.getName().equals("r_Id"+rId)) {
					isGet= true;
				}
			}
			
			// rId 쿠키가 없는 경우
			if(!isGet) {
				recipe = new RecipeService().selectRecipe(rId);
				Cookie c1 = new Cookie("rId"+rId, String.valueOf(rId));
				response.addCookie(c1);
			}else {
				recipe = new RecipeService().selectRecipeNoCnt(rId);
			}
		}
		
		if(recipe !=null) {
			request.setAttribute("recipe", recipe);
			request.getRequestDispatcher("views/recipe/recipeDetailView.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "레시피 상세 조회에 실패하였습니다.");
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
