package mypage.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.getConnection;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
import board.model.dao.BoardDao;
import board.model.vo.Board;
import mypage.model.dao.MyPageDao;
import recipe.model.dao.RecipeDao;
import recipe.model.vo.Recipe;

public class MyPageService {

	public ArrayList<Recipe> selectList(String userId) {
		
		  Connection conn = getConnection(); 
		  MyPageDao mpDao = new MyPageDao();
		  
		  ArrayList<Recipe> rList = mpDao.selectList(conn,userId); 
		  close(conn);
		  
		  return rList;
		 
		
	
	
	}

	public Attachment selectThumbnail(String rId) {
		 Connection conn = getConnection(); 
		 MyPageDao mpDao = new MyPageDao();
	  
	  Attachment thumnail = mpDao.selectThumbnail(conn, rId); 
	  close(conn);
	  
	  return thumnail;
	  
	  }

	public int getListCount() {
		Connection conn = getConnection();

		int listCount = new MyPageDao().getListCount(conn);

		close(conn);

		return listCount;
		
	}

	public ArrayList<Recipe> selectList2(String userId, int currentPage, int boardLimit) {
		Connection conn = getConnection();

		ArrayList<Recipe> list = new MyPageDao().selectList2(conn, userId, currentPage, boardLimit);

		close(conn);

		return list;
	}
		
		
		

}
