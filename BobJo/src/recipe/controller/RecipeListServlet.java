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
		String nation = request.getParameter("nation");
		
	 
		System.out.println(nation);
		String nationStr = "";
		
		switch(nation) {
		case "1" : nationStr = "한식";break;
		case "2" : nationStr = "양식";break;
		case "3" : nationStr = "중식";break;
		case "4" : nationStr = "일식";break;
		}

		//일단 서비스는 여러번쓸꺼니까 선언해두장
		RecipeService rService = new RecipeService();
		
		// 레시피 테이블 안에 있는 리스트를 전부 가져올 리스트변수를 선언합니다,,
		//ArrayList<Recipe> rList = rService.selectList();
		ArrayList<Recipe> rList = rService.selectList(nation);

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
		
		
		
		
		
		
		// 페이징
		int listCount =  rService.getListCount();
		
		int currentPage;		// 현재 페이지
		int pageLimit;			// 한 페이지 하단에 보여질 페이지 수
		int maxPage;			// 전체 페이지에서 가장 마지막 페이지
		int startPage;			// 한 페이지 하단에 보여질 시작 페이지
		int endPage;			// 한 페이지 하단에 보여질 끝 페이지
		
		int boardLimit = 10;	// 한 페이지에 보여질 게시글 최대 수
		
		currentPage = 1;
		
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}
		
		
		pageLimit = 10;
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		endPage = startPage + pageLimit - 1;
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		
		
		/* System.out.println("reList : " + reList); */
		

	
		
		
		

		if (rList.size() != 0 && fList.size() !=0 ) {
			request.setAttribute("rList", rList);
			request.setAttribute("nation", nation);
			 request.setAttribute("nationStr", nationStr); 
			request.setAttribute("fList", fList); 
			request.getRequestDispatcher("views/recipe/recipeListView.jsp").forward(request, response);
			//ArrayList<Recipe> reList = rService.selectReList(currentPage, boardLimit);
			//request.setAttribute("reList", reList);
			request.setAttribute("pi", pi);
			
			//System.out.println("reList : " + reList);
			

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
