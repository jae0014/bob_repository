package recipe.model.service;

import java.sql.Connection;
import java.util.ArrayList;

import board.model.dao.BoardDao;
import board.model.vo.Board;
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

	public ArrayList<Recipe> selectList(int currentPage, int boardLimit) {
		Connection conn = getConnection();
		
		ArrayList<Recipe> rList = new RecipeDao().selectList(conn, currentPage, boardLimit);
		
		close(conn);
		return rList;
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

	// 레시피 상세보기(조회수 증가 없이)
	public Recipe selectRecipeNoCnt(String rId) {
		Connection conn = getConnection();
		
		Recipe r = new RecipeDao().selectRecipe(conn, rId);
		
		close(conn);
		
		
		return r;
	}

	
	// 레시피 등록 서비스
	public int insertRecipe(Recipe r, ArrayList<Step> stepList, ArrayList<Ingredient> ingredientList) {
		Connection conn = getConnection();
		
		RecipeDao rDao = new RecipeDao();
		
		int result1 = rDao.insertRecipe(conn, r);
		int result2 = rDao.insertStep(conn, stepList);
		int result3 = rDao.insertIngredient(conn,ingredientList);
		
		if(result1 > 0 && result2 > 0 && result3 > 0) {
			commit(conn);
		}else {
			rollback(conn);
		}
		
		close(conn);
		
		return result1;
	}

}
