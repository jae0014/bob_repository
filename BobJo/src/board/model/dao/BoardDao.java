
package board.model.dao;

import static common.JDBCTemplate.*;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import post.model.vo.Post;

public class BoardDao {
	private Properties prop = new Properties();

	public BoardDao() {
		String fileName = BoardDao.class.getResource("/sql/board/board.properties").getPath();
		 Properties prop = new Properties();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	
	
	public ArrayList<Post> selectList(Connection conn, int currentPage, int boardLimit ,int type) {
		ArrayList<Post> list = new ArrayList<Post>();
		 Properties prop = new Properties();
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectList");
		sql = "SELECT * FROM BoardType1 WHERE ROWNUM BETWEEN ? AND ?";
		try {
			pstmt = conn.prepareStatement(sql);

			// 쿼리문 실행 시 조건절에 넣을 변수들
			// currentPage = 1 --> startRow 1 ~ endRow 10
			// currentPage = 2 --> startRow 11 ~ endRow 20

			// startRow : (currentPage - 1) * boardLimit + 1
			// endRow : startRow + boardLimit - 1

			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;

			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				String title = rset.getString("b_title");
				Date date = rset.getDate("b_date");
				String bid = rset.getString("B_id");
				String writer = rset.getString("M_NO");
				list.add(new Post(bid,title,writer,date));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}

	public int getListCount(Connection conn) {
		 Properties prop = new Properties();
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		// SELECT COUNT(*) FROM BOARDTYPE1
		String sql = prop.getProperty("getListCount");
		sql = "SELECT COUNT(*) FROM BOARDTYPE1";
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);

			if (rset.next()) {
				listCount = rset.getInt(1);
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		return listCount;
	}

	// 2. 게시판 리스트 조회용 dao

	// 3. 조회수 증가 dao
	public int increaseCount(Connection conn, int bid) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("increaseCount");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1, bid);

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}

	// 4. 게시판 상세 보기 dao
	public Post selectBoard(Connection conn, int bid) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Post b = null;

		// 쿼리문 복잡하니 스크립트 참고
		String query = prop.getProperty("selectBoard");

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setInt(1, bid);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return b;
	}
}
