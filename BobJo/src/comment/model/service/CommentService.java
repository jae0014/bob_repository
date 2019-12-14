package comment.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import comment.model.dao.CommentDao;
import comment.model.vo.Comment;
public class CommentService {

	public ArrayList<Comment> selectAll(String nPost, int type) {
		Connection conn = getConnection();
		ArrayList<Comment> list = new CommentDao().selectAll(conn, nPost, type);
		close(conn);
		return list;
	}
	
}
	