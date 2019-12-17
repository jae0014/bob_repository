package qna.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import common.vo.PageInfo;
import qna.model.service.QnaService;
import qna.model.vo.Qna;

/**
 * Servlet implementation class QnaListServlet
 */
@WebServlet("/qna.li")
public class QnaListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public QnaListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		// 서비스 선언
		QnaService qService = new QnaService();
		
		int typeNum = 0;
	
		//
		int currentPage =1;	
		// 한 페이지 하단에 보여질 페이지 수
		int pageLimit;
		// 전체 페이지에서 가장 마지막 페이지
		int maxPage;	
		// 하단 숫자
		int startPage;	
		// 리스트 끝
		int endPage;	
		
		//게시글 최대치
		int boardLimit = 10; 
		
		
		if(request.getParameter("currentPage") != null) {
			
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			
			//typeNum = Integer.parseInt(request.getParameter("typeOfBoard"));
		}
		
		// Qna리스트 갯수 파악
		int listCount = qService.getListCount();
		System.out.println(currentPage);
		pageLimit =10;
		
		
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
	
		endPage = startPage + pageLimit - 1;
		
		System.out.println(startPage + " " +endPage);
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		// qna 전체 리스트 가져오기
		ArrayList<Qna> list = qService.selectQnaList(startPage, endPage,typeNum);
		
		System.out.println(startPage+ " " +endPage);
/*		for (Qna qna : list) {
			System.out.println(qna);
		}*/
	
		RequestDispatcher view = request.getRequestDispatcher("views/qna/qnaList.jsp");
		request.setAttribute("typeNum",typeNum);
		request.setAttribute("list", list);
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
