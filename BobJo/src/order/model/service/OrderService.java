package order.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import notice.model.dao.NoticeDao;
import notice.model.vo.Notice;
import order.model.dao.OrderDao;
import order.model.vo.Order;

public class OrderService {

	public ArrayList<Order> selectOrderList(String mNo) {
		Connection conn = getConnection();
		ArrayList<Order> list = new OrderDao().selectOrderList(conn, mNo);
		
		close(conn);
		return list;
		
	}

	// Shopping_Order 테이블 접근 -> 주문 추가하기
	public int insertOrder(String mNo, String rName, String rPhone, String addr, String rPlease, int chong) {
		Connection conn = getConnection();
		int r1 = new OrderDao().insertOrder(conn, mNo, rName, rPhone, addr, rPlease, chong);
		
		close(conn);
		return r1;
	}

	// order_detail 테이블 접근 -> 주문 상세 추가하기
	public int insertDetailOrder(String orderId, String pId, int quantity, int total) {
		Connection conn = getConnection();
		int result = new OrderDao().insertDetailOrder(conn, orderId, pId, quantity, total);
		
		close(conn);
		return result;
	}

	// 최근 주문 번호 1개 조회하기
	public String selectOrderId(String mNo) {
		Connection conn = getConnection();
		String orderId = new OrderDao().selectOrderId(conn, mNo);
		close(conn);
		return orderId;
	}

}
