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

	 



////////////////////////내가 사용한 메소드 이거는 수정이꺼 그대로씀	
	  public Attachment selectThumbnail(String rId) { 
		 Connection conn = getConnection(); 
		 RecipeDao rDao = new RecipeDao();
	  
	  Attachment thumnail = rDao.selectThumbnail(conn, rId); 
	  close(conn);
	  
	  return thumnail;
	  
	  }
	 



	public ArrayList<Recipe> selectList(String nation) {
		
		  Connection conn = getConnection(); 
		  RecipeDao rDao = new RecipeDao();
		  
		  ArrayList<Recipe> rList = rDao.selectList(conn,nation); 
		  close(conn);
		  
		  return rList;
		 
		
	
	
	}


	// 레시피 상세보기
	public ArrayList<Recipe> selectRecipe(String rId) {
		Connection conn = getConnection();
		RecipeDao rDao = new RecipeDao();
		ArrayList<Recipe> list = rDao.selectRecipe(conn, rId);
		
		close(conn);
		return list;
	}





	public ArrayList<Attachment> selectImages(String rId) {
		Connection conn = getConnection();
		RecipeDao rDao = new RecipeDao();
		
		ArrayList<Attachment> imgList = rDao.selectImages(conn,rId);
		
		close(conn);
		
		return imgList;
	}




	//step 이미지 불러오기
	public ArrayList<Attachment> selectStep(String rId) {
		Connection conn = getConnection();
		RecipeDao rDao = new RecipeDao();
		
		/*
		 * ArrayList<Attachment> imgList =rDao.selectStep(conn,rId); return imgList;
		 */
		
		ArrayList<Attachment> rStepList= rDao.selectStep(conn, rId);
		return rStepList;
	}



}

