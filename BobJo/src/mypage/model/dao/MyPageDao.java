package mypage.model.dao;

import static common.JDBCTemplate.close;

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

import attachment.model.vo.Attachment;
import board.model.dao.BoardDao;
import member.model.vo.Member;
import post.model.vo.Post;
import recipe.model.vo.Recipe;

public class MyPageDao {
	private Properties prop = new Properties();

	public MyPageDao() {

		String fileName = BoardDao.class.getResource("/sql/myPage/myPage-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	public ArrayList<Recipe> selectList(Connection conn, String userId) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		ArrayList<Recipe> rlist = new ArrayList<Recipe>();
		Recipe r = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				
				r = new Recipe(
				
						rs.getString("r_id"),
						rs.getString("r_name"),
						rs.getString("m_no"),
						rs.getDate("r_date"),
						rs.getInt("r_count"),
						rs.getInt("r_like")
					
						);
				
				rlist.add(r);
			}
			System.out.println(rlist);
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		
		
		return rlist;
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
						rset.getString("F_NAME"),
						rset.getString("CHNAGENAME"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}

		return thumbnail;
	}


	public int getListCount(Connection conn) {
		int listCount = 0;

		Statement stmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("getListCount");

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


	public ArrayList<Recipe> selectList2(Connection conn, String userId, int currentPage, int boardLimit) {
		ArrayList<Recipe> list = new ArrayList<Recipe>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectList");

		try {
			pstmt = conn.prepareStatement(sql);

			// 쿼리문 실행 시 조건절에 넣을 변수들
			// currentPage = 1 --> startRow 1 ~ endRow 10
			// currentPage = 2 --> startRow 11 ~ endRow 20

			// startRow : (currentPage - 1) * boardLimit + 1
			// endRow : startRow + boardLimit - 1
			
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;
			System.out.println(startRow +" "+ endRow);
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);

			rset = pstmt.executeQuery();

			while (rset.next()) {
				
				/*rs.getString("r_id"),
						rs.getString("r_name"),
						rs.getString("m_no"),
						rs.getDate("r_date"),
						rs.getInt("r_count"),
						rs.getInt("r_like")
				 * 
				 * */
				String rId = rset.getString("r_id");
				String rName = rset.getString("r_name");
				String mNo = rset.getString("m_no");
				Date rDate = rset.getDate("r_date");
				int rCount = rset.getInt("rCount");
				int rLike = rset.getInt("r_like");
				list.add(new Recipe(rId,rName,mNo,rDate,rCount,rLike));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}


	public int insertPrMember(Connection conn, Member m) {
		PreparedStatement pstmt = null;

		int result = 0;
		System.out.println(m);
		String sql = prop.getProperty("insertPrMember");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, m.getNickname());
			pstmt.setString(2, m.getmIntro());
			pstmt.setString(3, m.getmId());

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}

		return result;
	}


	public int insertAttachment(Connection conn, ArrayList<Attachment> fileList) {
		PreparedStatement pstmt = null;

		int result = 0;

		String sql = prop.getProperty("insertAttachment");

		try {
			for (int i = 0; i < fileList.size(); i++) {

				Attachment at = fileList.get(i);
				pstmt = conn.prepareStatement(sql);
				
				pstmt.setString(1, at.getBprcId());
				pstmt.setString(2, at.getfPath());
				pstmt.setString(3, at.getfName());
				pstmt.setString(4, at.getChangeName());
			
				result = pstmt.executeUpdate();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}


	/**/


	public Member selectProfile(Connection conn, String mId) {
		Member mem = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectProfile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mId);
			
			rset = pstmt.executeQuery();
			
			if (rset.next()) {
				mem = new Member(
								rset.getString("nickname"),
								rset.getString("m_intro")
								);
			}
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return mem;
	}


	

}
