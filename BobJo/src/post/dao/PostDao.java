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
			String sql = prop.getProperty("postSelect");
			pstmt = conn.prepareStatement(sql);
			rset = pstmt.executeQuery();
			while(rset.next())
			{
				p=new Post(
					rset.getString(1),
					rset.getInt(2),
					rset.getString(3),
					rset.getString(4),
					rset.getString(5),
					rset.getDate(6),
					rset.getInt(7),
					rset.getInt(8),
					rset.getString(9)
						);
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
	
		return p;
	}

	public int postEdit(Connection conn, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/board/post-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("postEdit");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,p.getpId());
			pstmt.setInt(2,p.getpType());
			pstmt.setString(3,p.getpTitle());
			pstmt.setString(4,p.getpCotent());
			pstmt.setString(5,p.getpWriter());
			pstmt.setDate(6,p.getpDateWritten());
			pstmt.setInt(7,p.getpCount());
			pstmt.setInt(8,p.getpLike());
			pstmt.setString(9,p.getpStatus());
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
			String sql = prop.getProperty("postDelete");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nPost);
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

	public int postInsert(Connection conn, Post p) {
		int result = 0;
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = PostDao.class.getResource("/sql/board/post-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
			String sql = prop.getProperty("postInsert");
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,p.getpId());
			pstmt.setInt(2,p.getpType());
			pstmt.setString(3,p.getpTitle());
			pstmt.setString(4,p.getpCotent());
			pstmt.setString(5,p.getpWriter());
			pstmt.setDate(6,p.getpDateWritten());
			pstmt.setInt(7,p.getpCount());
			pstmt.setInt(8,p.getpLike());
			pstmt.setString(9,p.getpStatus());
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
