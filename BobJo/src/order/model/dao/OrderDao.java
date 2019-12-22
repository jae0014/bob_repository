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

	// 주문 추가하기
	public int insertOrder(Connection conn, String mNo, String rName, String rPhone, String addr, String rPlease,
			int chong) {
		PreparedStatement pstmt = null;
		int result = 0;
		ResultSet rset = null;
		
		String sql = prop.getProperty("insertOrder");
		
		try {
			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, mNo);
			pstmt.setString(2, rName);
			pstmt.setString(3, rPhone);
			pstmt.setString(4, addr);
			pstmt.setString(5, rPlease);
			pstmt.setInt(6, chong);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		return result;
	}

	// 주문 상세 추가하기
	public int insertDetailOrder(Connection conn, String orderId, String pId, int quantity, int total) {
		int result = 0;
		PreparedStatement pstmt = null;
		
		String sql = prop.getProperty("inserDetailOrder");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, orderId);
			pstmt.setString(2, pId);
			pstmt.setInt(3, quantity);
			pstmt.setInt(4, total);
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(pstmt);
		}
		
		return result;
	}

	// 최근 주문번호 1개 조회하기
	public String selectOrderId(Connection conn, String mNo) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		String orderId = "";
		
		String sql = prop.getProperty("selectOrderId");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, mNo);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				orderId = rset.getString(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return orderId;
	}
	
	
	
	
	
}
