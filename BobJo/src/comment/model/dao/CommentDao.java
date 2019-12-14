package comment.model.dao;

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

import comment.model.vo.Comment;
import post.dao.PostDao;

public class CommentDao {
	private Properties prop =null;
	
	public ArrayList<Comment> selectAll(Connection conn, String nPost , int type) {
		ArrayList<Comment> list = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/comment/comment.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("selectAll");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nPost);
			pstmt.setInt(2, type);
			rset = pstmt.executeQuery();
			list = new ArrayList<Comment>();
			while(rset.next())
			{	
				Comment comment = new Comment();
				list.add(comment);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally
		{	close(rset);
			close(pstmt);
		}
		return list;
	}

}
