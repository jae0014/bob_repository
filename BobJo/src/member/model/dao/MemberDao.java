package member.model.dao;

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
			
			
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		
		
		
		
		return loginUser;
	}

}
