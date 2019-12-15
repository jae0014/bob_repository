package reply.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Properties;

import reply.model.vo.Reply;


public class ReplyDao {
	private Properties prop =null;
	
	public ArrayList<Reply> selectAll(Connection conn, String nPost , int type) {
		ArrayList<Reply> list = new ArrayList<Reply>();
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String fileName = ReplyDao.class.getResource("/sql/reply/reply.properties").getPath();
		
		try {
			System.out.println(fileName);
			prop.load(new FileReader(fileName));
			
			String sql = prop.getProperty("selectAll");
			System.out.println("sql");
			System.out.println(sql);
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, nPost);
			pstmt.setInt(2, type);
			rset = pstmt.executeQuery();
			while(rset.next())
			{	String cid= rset.getString("c_ID");
				int btye= rset.getInt("btype");
				String brid = rset.getString("br_id");
				String mno = rset.getString("m_no");
				String content = rset.getString("c_content");
				Date date = rset.getDate("c_date");
				String status = rset.getString("c_status");
				String m_name = rset.getString("m_name");
				
				Reply comment = new Reply(cid,btye,brid,mno,content,date,status,m_name);
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
