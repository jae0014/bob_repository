package common.controller;

import java.io.File;
import java.io.IOException;

import java.util.ArrayList;
import java.util.Date;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import common.MyFileRenamePolicy;

/**
 * Servlet implementation class FileUpload
 */
@WebServlet("/upload")
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		
		if(ServletFileUpload.isMultipartContent(request))
		{
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root + "/resources/upload_images/";
			int maxSize = 1024*1024*10;
			MultipartRequest multipartRequest 
			= new MultipartRequest(request, savePath, maxSize, "UTF-8", new MyFileRenamePolicy());
			ArrayList<String> changeFiles = new ArrayList<>();
			// 원본 파일의 이름을 저장할 ArrayList 생성
			ArrayList<String> originFiles = new ArrayList<>();
			
			// getFileNames() -> form에서 전송 된 파일 리스트들의 name 값을 반환
			Enumeration<String> files = multipartRequest.getFileNames();
			// -> 전송 순서 역순으로 쌓여 있음
			
			while(files.hasMoreElements()) {
				String name = files.nextElement();
				
				//System.out.println("name : " + name);
				
				// 파일이 null이 아닌 경우
				if(multipartRequest.getFilesystemName(name) != null) {
					// getFilessystemName() --> 리네임 된 파일명 리턴
					String changeName = multipartRequest.getFilesystemName(name);
					// getOriginFileName() --> 사용자가 업로드한 파일명 리턴
					String originName = multipartRequest.getOriginalFileName(name);
					
					changeFiles.add(changeName);
					originFiles.add(originName);
				}
			}
			// 레시피 , 문의 내역, 프로필, 상품등록 
			// 5. 파일 외에 게시판 제목, 내용, 작성자 회원 번호를 받아와서 Board 객체 생성하기
			
			String typeImage = multipartRequest.getParameter("typeImage");
			//String bWriter = String.valueOf(((Member)request.getSession().getAttribute("loginUser"))());

			if(typeImage.equals("recipe-create"))
			{	  //제목
				  String title = multipartRequest.getParameter("title"); 
				  //요리소개
				  String content =  multipartRequest.getParameter("content");
				  String[] category = multipartRequest.getParameterValues("category");
				  Date date = new Date();
				  
				  
			}
			if(typeImage.equals("product-create"))
			{
				
			}
			if(typeImage.equals("profile-create"))
			{
				
			}
			if(typeImage.equals("QA-create"))
			{
				
			}
			 /* String title = multipartRequest.getParameter("title"); String content =
			  multipartRequest.getParameter("content"); 
			  String bWriter = String.valueOf(((Member)request.getSession().getAttribute("loginUser")).getUserNo());
			 
			
			  //Board b = new Board(); 
			  //b.setbTitle(title); 
			  //b.setbContent(content);
			  //b.setbWriter(bWriter);
			  
			  // 6. Attachment 테이블에 삽입할 값 작업하기 ArrayList<Attachment> fileList = new
			  ArrayList<>(); // 전송 순서 역순으로 파일이 저장되어 있으므로 반복문을 역으로 수행하기 for(int i =
			  originFiles.size() - 1; i >= 0; i--) { Attachment at = new Attachment();
			  at.setFilePath(savePath); at.setOriginName(originFiles.get(i));
			  at.setChangeName(changeFiles.get(i));
			  
			  // 메인 이미지인 경우 fileLevel 0, 일반 사진은 fileLevel 1 if(i == originFiles.size() -1)
			  { at.setFileLevel(0); }else { at.setFileLevel(1); } fileList.add(at); }
			 
			
			
			// 7. 사진 게시판 작성용 비즈니스 로직을 처리할 서비스 요청
			
			  //int result = new BoardService().insertThumbnail(b, fileList);
			  
			  if(result > 0) { response.sendRedirect("list.th"); }else { // 실패 시 저장된 사진 삭제
			  for(int i = 0; i < changeFiles.size(); i++) { // 파일 시스템에 저장 된 이름으로 파일 객체 생성함
			  File failedFile = new File(savePath + changeFiles.get(i));
			  failedFile.delete(); }
			  
			  request.setAttribute("msg", "사진 게시판 등록 실패!!");
			  request.getRequestDispatcher("views/common/errorPage.jsp").forward(request,
			  response);
			  
			  }
			 */
		}
		
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
