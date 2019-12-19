package order.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

import notice.model.vo.Notice;
import order.model.vo.Order;
import qna.model.dao.QnaDao;

public class OrderDao {
	private Properties prop = new Properties();

	public OrderDao() {
		String fileName = OrderDao.class.getResource("/sql/order/order-query.properties").getPath();
		System.out.println(fileName);
		  prop = new Properties();
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

	public ArrayList<Order> selectOrderList(Connection conn, String mNo) {
		ArrayList<Order> list = new ArrayList<Order>();
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String sql = prop.getProperty("selectOrderList");
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, mNo);
			
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new Order(rs.getString("order_id"), rs.getString("order_member"),
						rs.getString("recipient_name"), rs.getString("recipient_phone"),
						rs.getString("recipient_address"), rs.getString("delivery_Request"),
						rs.getInt("total_price"),	rs.getDate("order_Date")));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rs);
			close(pstmt);
		}
		
		return list;
	}
	
	
	
	
	
}
