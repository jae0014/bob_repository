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
		 list = new ArrayList<Post>();
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
		 /*
		  * int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				list.add(new Board(rset.getInt(2), rset.getInt(3), rset.getString(4), rset.getString(5),
						rset.getString(6), rset.getString(7), rset.getInt(8), rset.getDate(9), rset.getDate(10),
						rset.getString(11)));
			}
		  * */
		 int startRow = (currentPage - 1) * boardLimit + 1;
		 int endRow = startRow + boardLimit - 1;
		 for (int i = 0; i < 10; i++) {
			Post p = new Post(""+i,i,""+i,""+i,""+i,""+i,""+i,""+i,""+i);
			
			list.add(p);
		}
		 System.out.println(list.size());
		 return list;
	}

}
