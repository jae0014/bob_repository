package product.model.dao;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import product.model.vo.Product;

import static common.JDBCTemplate.*;

public class ProductDao {
	
	private Properties prop = new Properties();
	
	public ProductDao() {
		String fileName = ProductDao.class.getResource("/sql/product/product-query.properties").getPath();
		
		try {
			prop.load(new FileReader(fileName));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	// 상품 리스트 총 갯수 조회용 Dao
	public int getListCount(Connection conn) {
		int listCount = 0;
		Statement stmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("getListCount");
		
		try {
			stmt = conn.createStatement();
			rset = stmt.executeQuery(sql);
			
			if(rset.next()) {
				listCount = rset.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(stmt);
		}
		
		return listCount;
	}

	// 상품 리스트 조회
	public ArrayList<Product> selectList(Connection conn, int currentPage, int boardLimit) {
		ArrayList<Product> list = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			// 쿼리문 실행 시 조건절에 넣을 변수들
			// currentPage = 1 --> startRow 1 ~ endRow 10
			// currentPage = 2 --> startRow 11 ~ endRow 20
			
			// startRow : (currentPage -1 ) * boardLimit + 1
			// endRow : startRow + boardLimit - 1
			
			int startRow = (currentPage - 1) * boardLimit + 1;
			int endRow = startRow + boardLimit - 1;
			
			pstmt.setInt(1, startRow);
			pstmt.setInt(2, endRow);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(
						// 각 필드값들 채우기
						));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return list;
	}
	
	// 상품 상세보기 Dao
	public Product selectProduct(Connection conn, int pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Product p = null;
		
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, pId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				p = new Product(
						// 각 필드값들 채우기
						// ex) rset.getInt("pId"), rset.getString("pName"), ...
						);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		return p;
	}


}
