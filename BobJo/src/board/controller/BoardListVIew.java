package board.controller;

import java.io.IOException;
import java.lang.reflect.Array;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import board.model.BoardService;
import common.vo.PageInfo;
import post.model.vo.Post;

/**
 * Servlet implementation class BoardListVIew
 */
@WebServlet("/board.list")
public class BoardListVIew extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BoardListVIew() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// �� ���� ���񽺸� ȣ���ϱ� ������ ���������� ������ ����
		BoardService bService = new BoardService();
		
		// 1_1. �Խñ� ����Ʈ �� ���� ���ϱ�
		int listCount = bService.getListCount();
		listCount = 150;
		int typeNum = 0;
		//System.out.println("listCount : " + listCount);
		
		// 1_2. ����¡ ó�� �߰�
		// ������ �� ó���� ���� ����
		int currentPage;		// ���� ������
		int pageLimit;			// �� ������ �ϴܿ� ������ ������ ��
		int maxPage;			// ��ü ���������� ���� ������ ������
		int startPage;			// �� ������ �ϴܿ� ������ ���� ������
		int endPage;			// �� ������ �ϴܿ� ������ �� ������
		
		int boardLimit = 5;	// �� �������� ������ �Խñ� �ִ� ��
		
		// * currentPage : ���� ������
		// �⺻������ �Խ����� 1 ���������� ������
		currentPage = 1;
		
		// ������ ������ ��ȯ �� ���� ���� ���� �������� ���� �� �ش� �������� currentPage�� ����
		if(request.getParameter("currentPage") != null) {
			currentPage = Integer.parseInt(request.getParameter("currentPage"));
			typeNum = Integer.parseInt(request.getParameter("typeOfBoard"));
		}
		
		// * pageLimit : �� ������ �ϴܿ� ������ ������ ��
		pageLimit = 10;
		
		// * maxPage : �� �������� ������ ��
		// �� ������ 105���̸� ������ ���� 10���� �ƴ� ¥���� 5������ �� �������� �ļ� 11������
		// ��ü �Խñ� �� / ���������� ������ ���� -> �ø� ó��
		maxPage = (int)Math.ceil((double)listCount / boardLimit);
		
		// * startPage : ���� �������� �������� ����¡ ���� ���� ��
		// ���� ���� ������(currentPage)���� pageLimit��ŭ�� ������ �ٽ� ���� �� 1�� ���Ѵ�
		// 1 / 10 * 10 + 1 -> 1
		// 5 / 10 * 10 + 1 -> 1
		// 11 / 10 * 10 + 1 -> 11
		// 15 / 10 * 10 + 1 -> 11
		// ���⼭ �� ���� ���� ��Ȳ�� 10(20, 30, ...)
		// 10 / 10 * 10 + 1 -> 11
		// �װ��� ���� ���� currentPage - 1�� �Ѵ�
		startPage = (currentPage - 1) / pageLimit * pageLimit + 1;
		
		// * endPage : ���� ���������� ������ ������ ������ ��
		endPage = startPage + pageLimit - 1;
		
		// ������ ������ ������ ���� �� ������ ������ Ŭ ���
		// ���� maxPage�� 13�ε� endPage�� 20�ϼ��� �����Ƿ�
		if(maxPage < endPage) {
			endPage = maxPage;
		}
		
		// ������ ������ ������ VO ��ü PageInfo Ŭ������ ������~~
		PageInfo pi = new PageInfo(currentPage, listCount, pageLimit, maxPage, startPage, endPage, boardLimit);
		
		ArrayList<Post> list = bService.boardSelectAll(currentPage, boardLimit,typeNum);
		
	
		RequestDispatcher view = request.getRequestDispatcher("views/board/boardView.jsp");
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
