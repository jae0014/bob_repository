package board.model;

import java.sql.Connection;
import java.util.ArrayList;

import post.model.vo.Post;

import static common.JDBCTemplate.*;
public class BoardService {

	public ArrayList<Post> boardSelectAll(int currentPage, int boardLimit, int typeNum) {
		//Connection conn  = getConnection();
		Connection conn = null;
		 ArrayList<Post> list = new BoardDao().boardSelectAll(conn,currentPage, boardLimit, typeNum);
		return list;
	}

	public int getListCount() {
		// TODO Auto-generated method stub
		return 0;
	}

}
