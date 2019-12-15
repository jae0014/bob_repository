package product.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
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
	public ArrayList<Product> selectList(String cate) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		ArrayList<Product> plist = pDao.selectList(conn,cate);
		close(conn);
		
		return plist;
	}

	// 상품 상세보기
	public Product selectProduct(String pId) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		Product p = pDao.selectProduct(conn, pId);
		close(conn);
		
		return p;
	}

	// 상품에 따른 이미지 파일 조회하기
	public Attachment selectThumbnail(String pId) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		Attachment thumnail = pDao.selectThumbnail(conn, pId);
		close(conn);
		
		return thumnail;
	}

	// 한 상품에 대한 썸네일, 상품 설명, 상품 정보 이미지 조회하기
	public ArrayList<Attachment> selectImages(String pId) {
		Connection conn = getConnection();
		ProductDao pDao = new ProductDao();
		
		ArrayList<Attachment> imgList = pDao.selectImages(conn, pId);
		close(conn);
		
		return imgList;
	}

	
	
	
}
