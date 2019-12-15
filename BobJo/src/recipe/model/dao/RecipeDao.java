package recipe.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import attachment.model.vo.Attachment;
import board.model.dao.BoardDao;
import recipe.model.vo.Recipe;

public class RecipeDao {
	private Properties prop = new Properties();

	public RecipeDao() {

		String fileName = BoardDao.class.getResource("/sql/recipe/recipe-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	// 레시피 게시글 개수 카운트
	public int getListCount(Connection conn) {

		int rCount = 0;

		Statement stmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("getListCount");

		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);

			if (rset.next()) {
				rCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);

		}

		return rCount;
	}

	/*
	 * public ArrayList<Recipe> selectList(Connection conn, int currentPage, int
	 * boardLimit) { ArrayList<Recipe> rList = new ArrayList<>();
	 * 
	 * PreparedStatement pstmt = null; ResultSet rset = null;
	 * 
	 * String sql = prop.getProperty("selectList");
	 * 
	 * try { pstmt = conn.prepareStatement(sql);
	 * 
	 * int startRow = (currentPage - 1) * boardLimit + 1; int endRow = startRow +
	 * boardLimit -1;
	 * 
	 * pstmt.setInt(1, startRow); pstmt.setInt(2, endRow);
	 * 
	 * rset = pstmt.executeQuery();
	 * 
	 * while(rset.next()) { rList.add(new
	 * Recipe(rset.getString(2),rset.getString(3),rset.getString(4),rset.getString(5
	 * ),rset.getString(6),rset.getString(7),rset.getDate(8),rset.getString(9),rset.
	 * getInt(10),rset.getInt(11),rset.getInt(12),rset.getInt(13),rset.getString(14)
	 * )); }
	 * 
	 * } catch (SQLException e) { e.printStackTrace(); }finally { close(rset);
	 * close(pstmt); } return rList; }
	 */

	// 레시피 상세보기
	public Recipe selectRecipe(Connection conn, String rId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;

		Recipe r = null;

		String query = prop.getProperty("selectRecipe");

		try {
			pstmt = conn.prepareStatement(query);

			pstmt.setString(1, rId);

			rs = pstmt.executeQuery();

			if (rs.next()) {
				r = new Recipe(rs.getString("rId"), rs.getString("rName"), rs.getString("mNo"), rs.getString("rInfo"),
						rs.getInt("rCount"), rs.getInt("rCookTime"), rs.getInt("rCookLevel"), rs.getString("rInName"),
						rs.getString("rWeight"), rs.getInt("sStep"), rs.getString("sDesc"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rs);
			close(pstmt);
		}

		return r;
	}

	// 조회수 증가 dao
	public int increaseCount(Connection conn, String rId) {
		PreparedStatement pstmt = null;

		int result = 0;

		String query = prop.getProperty("increaseCount");

		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, rId);

			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}




	public ArrayList<Recipe> selectList(Connection conn, String rId) {
		ArrayList<Recipe> rList = new ArrayList<Recipe>();

		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectList");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, rId);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				rList.add(new Recipe(
						// 레시피명, 작성자명, 좋아요수, 날짜, 조회수
						rset.getString("R_ID"), rset.getString("R_NAME"), rset.getString("M_NO"),
						rset.getDate("R_DATE"), rset.getInt("R_COUNT"), rset.getInt("R_LIKE")

				));
			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return rList;
	}

	
	public Attachment selectThumbnail(Connection conn, String rId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Attachment thumbnail = null;

		String sql = prop.getProperty("selectThumbnail");

		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, rId);
			rset = pstmt.executeQuery();

			while (rset.next()) {
				thumbnail = new Attachment(rset.getString("F_ID"), 
						rset.getInt("BTYPE"), 
						rset.getString("BPRC_ID"),
						rset.getInt("F_LEVEL"), 
						rset.getString("F_STATUS"), 
						rset.getString("F_PATH"),
						rset.getString("F_NAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return thumbnail;
	}

	
	////////////////내가사용한메소드 이거는 내가 만들었어
	public ArrayList<Recipe> selectList(Connection conn) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<Recipe> rlist = new ArrayList<Recipe>();
		Recipe r = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				r = new Recipe(
						rs.getString("r_id"),
						rs.getString("r_name"),
						rs.getString("m_no"),
						rs.getString("cate_in_id"),
						rs.getString("cate_fo_id"),
						rs.getString("cate_method_id"),
						rs.getDate("r_date"),
						rs.getString("r_info"),
						rs.getInt("r_count"),
						rs.getInt("r_like"),
						rs.getInt("r_cooktime"),
						rs.getInt("r_cooklevel"),
						rs.getString("r_status")
						);
				
				rlist.add(r);
			}
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return rlist;
	}

}
