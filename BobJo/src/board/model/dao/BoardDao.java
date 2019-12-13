package board.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import post.model.vo.Post;
import recipe.model.dao.RecipeDao;
import recipe.model.vo.Recipe;

public class BoardDao {
	private Properties prop = new Properties();

	public BoardDao() {
		String fileName = RecipeDao.class.getResource("/sql/recipe/recipe-query.properties").getPath();

		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}


	
	//레시피 등록
	public int insertBoard(Connection conn, Recipe r) {
		int result = 0;
		PreparedStatement pstmt = null;

		String sql = prop.getProperty("insertRecipe");

		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, r.getrName());
			pstmt.setString(2, b.getbTitle());
			pstmt.setString(3, b.getbContent());
			pstmt.setInt(4, Integer.parseInt(b.getbWriter()));

			result = pstmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt);
		}
		return result;
	}

}
