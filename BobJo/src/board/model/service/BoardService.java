package board.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import post.model.vo.Post;

import static common.JDBCTemplate.*;
public class BoardService {

	public ArrayList<Post> boardSelectAll(int currentPage, int boardLimit, int typeNum) {
		Connection conn  = getConnection();
		
		 ArrayList<Post> list = new BoardDao().selectList(conn,currentPage, boardLimit, typeNum);
		close(conn);
		 return list;
	}

	public int getListCount() {
		Connection conn = getConnection();

		int listCount = new BoardDao().getListCount(conn);

		close(conn);

		return listCount;
	}

	
	
}
