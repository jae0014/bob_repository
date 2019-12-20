package qna.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import post.dao.PostDao;
import post.model.vo.Post;
import qna.model.dao.QnaDao;
import qna.model.vo.Qna;

public class QnaService {

	public int getListCount() {
		Connection conn = getConnection();

		int listCount = new QnaDao().getListCount(conn);

		close(conn);

		return listCount;
	}

	public ArrayList<Qna> selectQnaList(int currentPage, int boardLimit) {
		Connection conn  = getConnection();
		
		 ArrayList<Qna> list = new QnaDao().selectQnaList(conn, currentPage, boardLimit);

		close(conn);
		 return list;
	}

	public Qna selectQna(String qId) {
		Connection conn = getConnection();
		
		Qna q = new QnaDao().selectQna(conn, qId);
		
		close(conn);
		
		return q;	
	}

	public int insertQna(Qna q) {
		// TODO Auto-generated method stub
		return 0;
	}

}
