package product.model.dao;

import static common.JDBCTemplate.close;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Properties;

import attachment.model.vo.Attachment;
import product.model.vo.Cart;
import product.model.vo.Product;

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
	public Product selectProduct(Connection conn, String pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Product p = null;
		
		String sql = prop.getProperty("selectProduct");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				p = new Product(
						// 각 필드값들 채우기
						rset.getString("PID"),
						rset.getString("CATE_IN_ID"),
						rset.getString("P_NAME"),
						rset.getInt("P_PRICE"),
						rset.getString("P_SHORT_DESC"),
						rset.getString("P_SALE_UNIT"),
						rset.getString("P_WEIGHT"),
						rset.getInt("P_STOCK")
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
	public Attachment selectThumbnail(Connection conn, String pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		Attachment thumbnail = null;
		
		String sql = prop.getProperty("selectThumbnail");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				thumbnail = new Attachment(
						rset.getString("F_ID"),
						rset.getInt("BTYPE"),
						rset.getString("BPRC_ID"),
						rset.getInt("F_LEVEL"),
						rset.getString("F_STATUS"),
						rset.getString("F_PATH"),
						rset.getString("F_NAME")
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

	// 한 상품에 대한 썸네일, 상품 설명, 상품 정보 이미지 조회하기
	public ArrayList<Attachment> selectImages(Connection conn, String pId) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		ArrayList<Attachment> imgList = new ArrayList<>();
		
		String sql = prop.getProperty("selectImages");
		
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, pId);
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				imgList.add(new Attachment(
						rset.getString("F_ID"),
						rset.getInt("BTYPE"),
						rset.getString("BPRC_ID"),
						rset.getInt("F_LEVEL"),
						rset.getString("F_STATUS"),
						rset.getString("F_PATH"),
						rset.getString("F_NAME")
						));
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close(rset);
			close(pstmt);
		}
		
		return imgList;
	}

	// 로그인유저의 장바구니에 상품, 수량 넣기
	public int putInCart(Connection conn, Cart ccc) {
		int result = 0;
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("putInCart");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, ccc.getpId());
			pstmt.setInt(2, ccc.getQuantity());
			pstmt.setString(3, ccc.getUserId());
			
			result = pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return result;
	}

	// 로그인 유저의 장바구니 상품 조회하기
	public ArrayList<Cart> selectCartList(Connection conn, String userId) {
		ArrayList<Cart> list = new ArrayList<Cart>();
		
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		
		String sql = prop.getProperty("selectCartList");
		
		try {
			pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, userId);
			
			rset = pstmt.executeQuery();
			
			while(rset.next()) {
				list.add(new Cart(
						rset.getString("PID"),
						rset.getInt("QUANTITY"),
						rset.getString("USER_ID"),
						rset.getString("P_NAME"),
						rset.getInt("P_PRICE"),
						rset.getString("CATE_IN_ID"),
						rset.getString("F_NAME")
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



}
