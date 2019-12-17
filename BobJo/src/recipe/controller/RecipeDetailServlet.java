package recipe.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attachment.model.vo.Attachment;
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
		request.getParameter("utf-8");
		String rId = request.getParameter("rId");
		/*
		 * String rStep = request.getParameter("rStep"); String rIngredient =
		 * request.getParameter("rIngredient");
		 */
		RecipeService rService = new RecipeService();
		
		// 레시피 테이블 갖다오기
		// 재료 갔다오기
		// 스텝 갔다오기
		//어테치먼트 갔다오기
		ArrayList<Recipe> rlist = rService.selectRecipe(rId);
		
		
		System.out.println(rlist);
		
		
		//ArrayList<Attachment> imgList = rService.selectImages(rId);
		
		Attachment thumbnail = null;	
		Attachment recipeStep = null;
		Attachment recipefinal = null;
		
		/*
		 * for(int i = 0; i < imgList.size(); i++) { if(imgList.get(i).getfLevel()==1) {
		 * thumbnail = imgList.get(i); }else if(imgList.get(i).getfLevel()==4) {
		 * recipeStep = imgList.get(i);
		 * 
		 * }else if(imgList.get(i).getfLevel()==5) { recipeStep = imgList.get(i);
		 * 
		 * } }
		 */
		
		if(rlist !=null) {
			request.setAttribute("rlist", rlist);
			//request.setAttribute("thumbnail", thumbnail);
			request.getRequestDispatcher("views/recipe/recipeDetailView.jsp").forward(request, response);
			
			
		}else {
			request.setAttribute("msg", "레시피 조회 실패");
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
