package notice.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import notice.model.vo.Notice;

public class NoticeDao {

	private Properties prop = new Properties();
	
	public NoticeDao() {
		String fileName = Notice.class.getResource("/sql/notice/notice-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 1. 공지사항리스트용 dao
	public ArrayList<Notice> selectNoticeList(Connection conn) {
		ArrayList<Notice> nlist = new ArrayList<Notice>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectNoticeList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				nlist.add(new Notice(rset.getString("n_id"), rset.getString("n_title"),
						rset.getString("n_content"), rset.getString("m_no"),
						rset.getDate("n_date"), rset.getInt("n_count"),
						rset.getString("n_status")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return nlist;
	}
	/*
	
	
	
	public int noticeInsert(Connection conn, Notice n) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("noticeInsert");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getnTitle());
			pstmt.setString(2, n.getnContent());
			pstmt.setString(3, n.getnWriter());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	// 3. 조회수 증가용 dao메소드
	public int increaseCount(Connection conn, int nno) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("increaseCount");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	
	// 공지 글 읽기용 조회 메소드
	public Notice selectNotice(Connection conn, int nno) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Notice n = null;
		
		String sql = prop.getProperty("selectNotice");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				n = new Notice();
				n.setnNo(rset.getInt("nno"));
				n.setnTitle(rset.getString("ntitle"));
				n.setnWriter(rset.getString("nwriter"));
				n.setnContent(rset.getString("ncontent"));
				n.setnCount(rset.getInt("ncount"));
				n.setnDate(rset.getDate("ndate"));
				n.setStatus(rset.getString("status"));
				
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return n;
	}
	
	// 공지사항 삭제용 dao
	public int noticeDelete(Connection conn, int nno) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		// 상태 y->n으로 업데이트
		String sql = prop.getProperty("noticeDelete");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, nno);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}
	
	
	
	public int noticeUpdate(Connection conn, Notice n) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String sql = prop.getProperty("noticeUpdate");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, n.getnTitle());
			pstmt.setString(2, n.getnContent());
			pstmt.setInt(3, n.getnNo());
			
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}

		return result;
	}
	public ArrayList<Notice> searchNotice(Connection conn, String searchCondition, String search) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Notice n = null;
		ArrayList<Notice> list = new ArrayList<>();
		
		String sql = "";
		if(searchCondition.equals("title")) {
			sql = prop.getProperty("searchNoticeTitle");
			
		}else if(searchCondition.equals("content")) {
			sql = prop.getProperty("searchNoticeContent");
		}
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, search);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				n = new Notice();
				n.setnNo(rset.getInt("nno"));
				n.setnTitle(rset.getString("ntitle"));
				n.setnContent(rset.getString("ncontent"));
				n.setnWriter(rset.getString("nwriter"));
				n.setnCount(rset.getInt("ncount"));
				n.setnDate(rset.getDate("ndate"));
				list.add(n);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
			close(rset);
		}
		return list;
	}*/
}
