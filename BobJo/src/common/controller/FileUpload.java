package common.controller;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;
import recipe.model.vo.Ingredient;
import recipe.model.vo.Recipe;
import recipe.model.vo.Step;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/upload.image1")
public class FileUpload extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FileUpload() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
	
		if (ServletFileUpload.isMultipartContent(request)) {
			System.out.println("file is being transmiited");
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root + "/resources/step_Image/";
			int maxSize = 1024 * 1024 * 10;
			MultipartRequest multipartRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());
			ArrayList<String> changeFiles = new ArrayList<>();
			// 원본 파일의 이름을 저장할 ArrayList 생성
			ArrayList<String> originFiles = new ArrayList<>();

			// getFileNames() -> form에서 전송 된 파일 리스트들의 name 값을 반환
			Enumeration<String> files = multipartRequest.getFileNames();
			// -> 전송 순서 역순으로 쌓여 있음

			while (files.hasMoreElements()) {
				String name = files.nextElement();
			
				String regex_step = "\\w*step$";
				String regex_com = "\\w*imgcom$";
				// 파일이 null이 아닌 경우

				
				
				if (multipartRequest.getFilesystemName(name) != null) {
					// getFilessystemName() --> 리네임 된 파일명 리턴
					String changeName = multipartRequest.getFilesystemName(name);
					// getOriginFileName() --> 사용자가 업로드한 파일명 리턴
					String originName = multipartRequest.getOriginalFileName(name);
					changeFiles.add(changeName);
					originFiles.add(originName);
					
				}
			}
			
			
			
			 String rId	= multipartRequest.getParameter("testRecipe1"); //레시피Id
			 String mNo= request.getParameter("testID"); //작성자 userID
			 
			 String rName= multipartRequest.getParameter("reciepeTitle"); //레시피명
			 String rInfo= multipartRequest.getParameter("reciepeIntro"); //요리소개
			 
			 String cateFoId= multipartRequest.getParameter("category1"); //종류별id
			 String cateMethodId= multipartRequest.getParameter("category2"); //방법별id
			 String cateInId= multipartRequest.getParameter("category3"); //재료별id
			 
			 // 임시 적용
			 String rInNameTemp = multipartRequest.getParameter("inTitle"); //재료명
			 String rWeightTemp= multipartRequest.getParameter("inWeight"); //용량
				
			 String rInName = rInNameTemp.replace("\"", "");
			 String rWeight = rWeightTemp.replace("\"", "");
	
	

		}

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
