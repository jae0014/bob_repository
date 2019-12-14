package board.model.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import static common.JDBCTemplate.*;
import post.model.vo.Post;

public class BoardDao {

	public ArrayList<Post> boardSelectAll(Connection conn, int currentPage, int boardLimit, int typeNum) {
		ArrayList<Post> list = null;
		PreparedStatement pstmt;
		ResultSet rset = null;
	
		String sql = "";

	
		return null;
	}

}
