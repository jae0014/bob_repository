package recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
import board.model.dao.BoardDao;
import board.model.vo.Board;
import product.model.dao.ProductDao;
import product.model.vo.Product;
import recipe.model.dao.RecipeDao;
import recipe.model.vo.Ingredient;
import recipe.model.vo.Recipe;
import recipe.model.vo.Step;

import static common.JDBCTemplate.*;

public class RecipeService {

	public int getListCount() {
		Connection conn = getConnection();
		
		int rCount = new RecipeDao().getListCount(conn);
		
		close(conn);
		
		
		return rCount;
		
	}

	 

	//레시피 상세보기(조회수 증가)
	public Recipe selectRecipe(String rId) {
		Connection conn = getConnection();
		
		RecipeDao rDao = new RecipeDao();
		
		int result = rDao.increaseCount(conn,rId);
		
		Recipe r = null;
		
		if(result>0) {
			commit(conn);
			r = rDao.selectRecipe(conn, rId);
		}else {
			rollback(conn);
		}
		close(conn);
		
		return r;
	}



////////////////////////내가 사용한 메소드 이거는 수정이꺼 그대로씀	
	  public Attachment selectThumbnail(String rId) { 
		 Connection conn = getConnection(); 
		 RecipeDao rDao = new RecipeDao();
	  
	  Attachment thumnail = rDao.selectThumbnail(conn, rId); 
	  close(conn);
	  
	  return thumnail;
	  
	  }
	 



	public ArrayList<Recipe> selectList( String rId ) {
		
		  Connection conn = getConnection(); 
		  RecipeDao rDao = new RecipeDao();
		  
		  ArrayList<Recipe> rList = rDao.selectList(conn,rId); 
		  close(conn);
		  
		  return rList;
		 
		
	
	
	}



	public ArrayList<Recipe> selectList() {
		Connection conn = getConnection();
		
		ArrayList<Recipe> rlist = new RecipeDao().selectList(conn);
		
		
		close(conn);
		return rlist;
	}

}

