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

//	카테아이디는 일단 나중에 생각하고 전체리스트 가져오는걸로 해볼것
/*		String rId = request.getParameter("rId");*/

		//일단 서비스는 여러번쓸꺼니까 선언해두장
		RecipeService rService = new RecipeService();
		
		// 레시피 테이블 안에 있는 리스트를 전부 가져올 리스트변수를 선언합니다,,
		ArrayList<Recipe> rList = rService.selectList();

		// 레시피 아이디에 맞는 첨부파일 불러올꺼임
		ArrayList<Attachment> fList = new ArrayList<Attachment>();

		for (int i = 0; i < rList.size(); i++) {
			// R_ID에 맞는 애 가져올거임 고로 ATTACHMENT와 RECIPE의 R_ID를 맞춰줘야함.
			// 그러면 썸네일, 스텝2, 3의 사진들 여러개가 나올것임 R_01갈비찜 하나에 최소1장부터 그 이상까지 리스트에 담길 것.
			Attachment imgFile = rService.selectThumbnail(rList.get(i).getrId());
			fList.add(imgFile);
		}
		
		System.out.println("레시피 리스트 : " + rList.size());
		System.out.println("첨부파일리스트 : " + fList.size());
		

		if (rList.size() != 0 && fList.size() !=0 ) {
			request.setAttribute("rList", rList);
			//request.setAttribute("rId", rId);
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
