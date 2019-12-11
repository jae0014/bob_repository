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

import file.model.vo.File;
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
	public ArrayList<Product> selectList(Connection conn, String cate) {
		ArrayList<Product> list = new ArrayList<Product>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, cate);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Product(
						// 각 필드값들 채우기
						rset.getString("PID"),
						rset.getString("CATE_IN_ID"),
						rset.getString("P_NAME"),
						rset.getInt("P_PRICE"),
						rset.getString("P_SHORT_DESC"),
						rset.getString("P_SALE_UNIT"),
						rset.getString("P_WEIGHT"),
						rset.getInt("P_STOCK")
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

	// 상품에 대한 이미지 조회
	public File selectThumbnail(Connection conn, String pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		File thumbnail = null;
		
		String sql = prop.getProperty("selectThumbnail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				thumbnail = new File(
						rset.getString("F_ID"),
						rset.getInt("BTYPE"),
						rset.getString("BPRC_ID"),
						rset.getInt("F_LEVEL"),
						rset.getString("F_STATUS"),
						rset.getString("F_PATH")
						);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return thumbnail;
	}



}
