package common.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attachment.model.vo.Attachment;
import product.model.service.ProductService;
import product.model.vo.Product;
import recipe.model.service.RecipeService;
import recipe.model.vo.Recipe;

/**
 * Servlet implementation class MainListServlet
 */
@WebServlet("/main.do")
public class MainListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ProductService pService = new ProductService();
		RecipeService rService = new RecipeService();
		
		
		// 추천 레시피 리스트
		//레시피 세개 가져오기.
		ArrayList<Recipe> rList = rService.selectRecommendR();
		ArrayList<Attachment> R_fList = new ArrayList<Attachment>();
		
		for(int i = 0; i < rList.size(); i++) {
			Attachment imgFile = pService.selectThumbnail(rList.get(0).getrId());
			R_fList.add(imgFile);
		}
		
				
		// 추천 물건리스트
		// 상품 네개 가져오기
		ArrayList<Product> pList = pService.selectRecommendP();		
		//ArrayList<Attachment>
		
		// 할인 물건리스트
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
