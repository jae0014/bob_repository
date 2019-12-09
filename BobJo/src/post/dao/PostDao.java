package post.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

import board.model.dao.BoardDao;
import post.model.vo.Post;

public class PostDao {
	private Properties prop =null;
	public Post postSelect(Connection conn, String nPost) {
		Post p = null;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/post/post-query.properties").getPath();

	
		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("");
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			
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
	
		return p;
	}

	public int postEdit(Connection conn, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/board/post-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("");
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
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
		{
			close(pstmt);
		}
		return result;
	}

	public int postDelete(Connection conn, String nPost) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/board/post-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("");
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
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
		{
			close(pstmt);
		}
		return result;
	}

	public int postInsert(Connection conn, Post nPost) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/board/post-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("");
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
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
		{
			close(pstmt);
		}
		return result;
	}

}
