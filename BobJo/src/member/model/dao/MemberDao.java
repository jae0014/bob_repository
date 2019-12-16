package member.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import member.model.vo.Member;

public class MemberDao {
	
	private Properties prop = new Properties();
	
	public MemberDao() {
		
		// 생성자에 프로퍼티파일 미리 불러오기
		String fileName = MemberDao.class.getResource("/sql/member/member-query.properties").getPath();
		
		try {
			
			prop.load(new FileReader(fileName));
			
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 로그인용 loginUser select메소드
	public Member loginMember(Connection conn, String userId, String userPwd) {
		PreparedStatement pstmt = null;
		Member loginUser = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("loginMember");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPwd);
			
			rs = pstmt.executeQuery();

			
			if(rs.next()) {
				loginUser = new Member(
						rs.getString("m_no"),
						rs.getString("m_id"),
						rs.getString("m_pwd"),
						rs.getString("m_name"),
						rs.getDate("m_ent_date"),
						rs.getString("email"),
						rs.getString("phone"),
						rs.getString("addr"),
						rs.getString("gender"),
						rs.getString("nickname"),
						//생일때문에 너무 고통스러움..
						rs.getString("birth"),
						rs.getString("m_grade"),
						rs.getDate("m_out_date"),
						rs.getString("m_status"),
						rs.getString("m_intro")
						);
			}

			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return loginUser;
	}

	public int idCheck(Connection conn, String userId) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("idCheck");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				result = rset.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	//회원가입 Dao
	public int insertMember(Connection conn, Member m) {
		int result = 0;

		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertMember");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, m.getmId());
			pstmt.setString(2, m.getmPwd());
			pstmt.setString(3, m.getmName());
			pstmt.setString(4, m.getEmail());
			pstmt.setString(5, m.getPhone());
			pstmt.setString(6, m.getAddr());
			pstmt.setString(7, m.getGender());
			pstmt.setString(8, m.getBirth());
					
			
			result = pstmt.executeUpdate();
					
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close(pstmt);
			
		}
		
		
		return result;
	}
	
	// 회원가입 이메일중복확인 메소드
	public int checkMemberEmail(Connection conn, String email) {
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		int result = 0;

		
		String sql = prop.getProperty("checkMemberEmail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, email);			
			
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				result = rs.getInt(1);
			}
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
			
		}
		
		return result;
	}

	
	
	
	
}
