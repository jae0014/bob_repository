package product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import product.model.dao.ProductDao;
import product.model.vo.Product;

import static common.JDBCTemplate.*;

public class ProductService {
	
	// 상품 리스트 갯수 조회용 서비스 메소드
	public int getListCount() {
		Connection conn = getConnection();
		
		int listCount = new ProductDao().getListCount(conn);
		close(conn);
		
		return listCount;
	}
	
	// 상품 리스트 조회용 서비스 메소드
	public ArrayList<Product> selectList(int currentPage, int boardLimit) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		ArrayList<Product> plist = pDao.selectList(conn, currentPage, boardLimit);
		close(conn);
		
		return plist;
	}

	// 상품 상세보기
	public Product selectProduct(int pId) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		Product p = pDao.selectProduct(conn, pId);
		close(conn);
		
		return p;
	}

	
}
