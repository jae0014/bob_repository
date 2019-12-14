package member.model.service;

import static common.JDBCTemplate.*;

import java.sql.Connection;

import member.model.dao.MemberDao;
import member.model.vo.Member;

public class MemberService {

	// 1. 로그인용 서비스
		public Member loginMember(String userId, String userPwd) {
			// JDBCTemplate 만들기
			Connection conn = getConnection();
			
			Member loginUser = new MemberDao().loginMember(conn, userId, userPwd);
			
			close(conn);
			
			return loginUser;
		}

		// 아이디 중복확인
		public int idCheck(String userId) {
			Connection conn = getConnection();
			int result = new MemberDao().idCheck(conn, userId);
			
			close(conn);
			
			return result;
		}

}
