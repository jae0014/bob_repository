package qna.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;
import java.util.ArrayList;

import qna.model.dao.QnaDao;
import qna.model.vo.Qna;

public class QnaService {

	public int getListCount() {
		Connection conn = getConnection();

		int listCount = new QnaDao().getListCount(conn);

		close(conn);

		return listCount;
	}

	public ArrayList<Qna> selectQnaList(int currentPage, int boardLimit, int typeNum) {
		Connection conn  = getConnection();
		
		 ArrayList<Qna> list = new QnaDao().selectQnaList(conn, currentPage, boardLimit, typeNum);
		 
		close(conn);
		 return list;
	}

}
