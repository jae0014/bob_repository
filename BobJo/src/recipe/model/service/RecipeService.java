package recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
import board.model.dao.BoardDao;
import board.model.vo.Board;
import member.model.dao.MemberDao;
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
		ArrayList<Recipe> list = null;
		
		int result = rDao.increaseCount(conn, rId);
		
		if(result > 0) {
			commit(conn);
			list = rDao.selectRecipe(conn,rId);
		} else {
			rollback(conn);
		}
		
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





	public ArrayList<Recipe> selectReList(int currentPage, int boardLimit) {
		Connection conn = getConnection();

		ArrayList<Recipe> reList = new RecipeDao().selectReList(conn, currentPage, boardLimit);

		close(conn);

		return reList;
	}


	public int updateLike(String rId,String mId) {
		RecipeDao rDao = new RecipeDao();
		Connection conn = getConnection();
		int result =  rDao.updateLike(conn, rId, mId);
		
		
		if(result > 0) {
			commit(conn);
			result = rDao.selectLike(conn, rId);
			
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
	}





	public int updateDislike(String rId, String mId) {
		RecipeDao rDao = new RecipeDao();
		Connection conn = getConnection();
		int result =  rDao.updatedisLike(conn, rId, mId);
		
		if(result > 0) {
			commit(conn);
			result = rDao.selectDislike(conn,rId);
			
		}else {
			rollback(conn);
		}
		close(conn);
		
		return result;
		
		
	}





	public ArrayList<Recipe> selectRecommendR() {

		  Connection conn = getConnection(); 
		  RecipeDao rDao = new RecipeDao();
		  ArrayList<Recipe> rList = null;
		  
		  ArrayList<String> r_idList = rDao.selectRecommendRNumbers(conn); 
		  if(r_idList != null) {
			  rList = rDao.selectRecommendRList(conn, r_idList);
		  }
		  
		  close(conn);
		  
		  return rList;
	}





	 








}

