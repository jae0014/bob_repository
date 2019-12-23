package attachment.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;
import static common.JDBCTemplate.*;

import attachment.model.vo.Attachment;

public class AttachmentDao {

	private Properties prop = new Properties();

	public AttachmentDao() {
		String fileName = AttachmentDao.class.getResource("/sql/notice/notice-query.properties").getPath();
		try {
			prop.load(new FileReader(fileName));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public int addFile(Connection conn, ArrayList<Attachment> fileList) {
		int result = 0;
		PreparedStatement pstmt = null;
		String sql = prop.getProperty("addFile");
		
		try {
			pstmt = conn.prepareStatement(sql);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			close(pstmt);
		}
		
		return result;
	}

}
