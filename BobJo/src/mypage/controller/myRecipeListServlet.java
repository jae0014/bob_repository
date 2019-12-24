package mypage.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import attachment.model.vo.Attachment;
import board.model.vo.Board;
import member.model.vo.Member;
import mypage.model.service.MyPageService;
import recipe.model.service.RecipeService;
import recipe.model.vo.PageInfo;
import recipe.model.vo.Recipe;

/**
 * Servlet implementation class RecipeListServlet
 */
@WebServlet("/recipelist.mp")
public class myRecipeListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public myRecipeListServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = request.getSession();
		Member m = (Member) session.getAttribute("loginUser");

		String userId = "";

		if (m != null) {
			userId = m.getmId();
		} else {
			request.getRequestDispatcher("views/member/memberLoginForm.jsp").forward(request, response);
		}

		MyPageService mpService = new MyPageService();

		int listCount = mpService.getListCount();

		int currentPage; // 현재 페이지
		int pageLimit; // 한 페이지 하단에 보여질 페이지 수
		int maxPage; // 전체 페이지에서 가장 마지막 페이지
		int startPage; // 한 페이지 하단에 보여질 시작 페이지
		int endPage; // 한 페이지 하단에 보여질 끝 페이지

		int boardLimit = 10; // 한 페이지에 보여질 게시글 최대 수

		currentPage = 1;

		if (request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
		}

		pageLimit = 10;

		maxPage = (int) Math.ceil((double) listCount / boardLimit);

		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;

		endPage = startPage + pageLimit - 1;

		if (maxPage < endPage) {
			endPage = maxPage;
		}

		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);

		ArrayList<Recipe> list = mpService.selectList2(userId, currentPage, boardLimit);

		ArrayList<Recipe> rList = mpService.selectList(userId);

		ArrayList<Attachment> fList = new ArrayList<Attachment>();

		for (int i = 0; i < rList.size(); i++) {

			Attachment imgFile = mpService.selectThumbnail(rList.get(i).getrId());
			fList.add(imgFile);
		}

		System.out.println("레시피 리스트 : " + rList.size());
		System.out.println("첨부파일리스트 : " + fList.size());
		System.out.println("userId" + userId);
		System.out.println("리스트 : " + list.size());

		if (rList.size() != 0 && fList.size() != 0) {
			request.setAttribute("rList", rList);
			request.setAttribute("userId", userId);
			request.setAttribute("fList", fList);
			request.setAttribute("list", list);
			request.setAttribute("pi", pi);
			request.getRequestDispatcher("views/myPageUpdate/myRecipe.jsp").forward(request, response);

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
