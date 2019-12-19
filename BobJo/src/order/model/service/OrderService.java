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

}
