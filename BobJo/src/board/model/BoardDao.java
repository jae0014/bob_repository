package board.model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import static common.JDBCTemplate.*;
import post.model.vo.Post;

public class BoardDao {

	public ArrayList<Post> boardSelectAll(Connection conn, int currentPage, int boardLimit, int typeNum) {
		 ArrayList<Post> list = null;
		 /*
		 PreparedStatement pstmt = null;
		 ResultSet rset  = null;
		 String sql = "";
		 try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			 close(rset);
			 close(pstmt);
		 }*/
		 /*
	private String pId;
	private int pType;
	private String pTitle;
	private String pCotent;
	private String pWriter;
	private String pDateWritten;
	private String pCount;
	private String pLike;
	private String pStatus;
	
		  * */
		 for (int i = 0; i < 150; i++) {
			Post p = new Post(""+i,i,""+i,""+i,""+i,""+i,""+i,""+i,""+i);
			
			list.add(p);
		}
		 return list;
	}

}
