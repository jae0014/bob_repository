package qna.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
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

	public int getListCount(String mId) {
		Connection conn = getConnection();

		int listCount = new QnaDao().getListCount(conn, mId);

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
		Connection conn = getConnection();
		
		int result = new QnaDao().insertQna(conn, q);
		
		if(result > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result;
	}

	public ArrayList<Qna> selectQnaList(int currentPage, int boardLimit, String mId) {
		Connection conn  = getConnection();
		
		 ArrayList<Qna> list = new QnaDao().selectQnaList(conn, currentPage, boardLimit, mId);

		close(conn);
		 return list;
	}


}
