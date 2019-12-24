package recipe.model.service;

import static common.JDBCTemplate.close;
import static common.JDBCTemplate.commit;
import static common.JDBCTemplate.getConnection;
import static common.JDBCTemplate.rollback;

import java.sql.Connection;
import java.util.ArrayList;

import attachment.model.vo.Attachment;
import recipe.model.dao.RecipeDao;
import recipe.model.vo.Recipe;
import recipe.model.vo.Step;

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





	/*
	 * public ArrayList<Recipe> selectReList(int currentPage, int boardLimit) {
	 * Connection conn = getConnection();
	 * 
	 * ArrayList<Recipe> reList = new RecipeDao().selectReList(conn, currentPage,
	 * boardLimit);
	 * 
	 * close(conn);
	 * 
	 * return reList; }
	 */


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






	public String insertRecipe(Recipe recipe) {
		Connection conn = getConnection();
		
		String result = new RecipeDao().insertRecipe(conn,recipe);
		if(!result.equals("") && !result.isEmpty())
		{
			commit(conn);
		}
		else
		{
			rollback(conn);
		}
		close(conn);
		return result;

	}






	public String retriveId() {
		Connection conn = getConnection();
		String str = new RecipeDao().retriveId(conn);
		return str;
	}





	public String insertStep(ArrayList<Step> step) {
		Connection conn = getConnection();
		String result = new RecipeDao().insertStep(conn,step);
		
		if(!result.equals("") || !result.isEmpty()) {
			commit(conn);
		}
		else {
			rollback(conn);
		}
		close(conn);
		return result;
	}





	public void deleteRecipe(String rId) {
		Connection conn = getConnection();

		int result = new RecipeDao().deleteRecipe(conn,rId);
		if(result > 0) {
			commit(conn);
			
			
		}else {
			rollback(conn);
			System.out.println("지우기 실패");
		}
		close(conn);
	}






	public void deletetStep(String rId) {
		Connection conn = getConnection();

		int result = new RecipeDao().deletetStep(conn,rId);
		if(result > 0) {
			commit(conn);
			
			
		}else {
			rollback(conn);
			System.out.println("지우기 실패");
		}
		close(conn);
	}







}
