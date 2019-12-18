package qna.model.dao;

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

import post.model.vo.Post;
import qna.model.vo.Qna;

public class QnaDao {
	private Properties prop = new Properties();

	public QnaDao() {
		String fileName = QnaDao.class.getResource("/sql/qna/qna-query.properties").getPath();
		System.out.println(fileName);
		  prop = new Properties();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
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

	public ArrayList<Qna> selectQnaList(Connection conn, int currentPage, int boardLimit, int typeNum) {
		ArrayList<Qna> list = new ArrayList<Qna>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;

		String sql = prop.getProperty("selectQnaList");
		System.out.println(sql);
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
				String qId = rset.getString("q_id");
				String qTitle = rset.getString("q_title");
				String mId = rset.getString("m_id");
				Date qDate = rset.getDate("q_date");
				String qCate = rset.getString("q_cate");
				String aStatus = rset.getString("a_status");
				
				list.add(new Qna(qId, qTitle, mId, qDate, qCate, aStatus));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return list;
	}



	public Qna selectQna(Connection conn, String qId) {
		Qna q = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		ArrayList<String> alist = new ArrayList<>();
		ArrayList<String> dlist = new ArrayList<>();
		try {
		
			String sql = prop.getProperty("selectQna");
			sql = "SELECT * FROM Q_DETAIL_V WHERE Q_ID = ?";
			
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, qId);
			
			rs = pstmt.executeQuery();
			
			while(rs.next())
			{
				q = new Qna();
				q.setqId(rs.getString("q_id"));
				q.setqCate(rs.getString("q_cate"));
				q.setqTitle(rs.getString("q_title"));
				q.setqContent(rs.getString("q_content"));
				q.setmId(rs.getString("m_id"));
				q.setqDate(rs.getDate("q_date"));
				q.setaStatus(rs.getString("a_status"));
				alist.add(rs.getString("a_content"));
				dlist.add(rs.getString("a_date"));
				q.setqTitle(rs.getString("q_title"));
			}
			
			//q.setaContent(/*리스트가 들어가야됨*/);
			q.setaContent(alist);
			q.setaDate(dlist);
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
		finally
		{	close(rs);
			close(pstmt);
		}
	
		return q;
	}

}
