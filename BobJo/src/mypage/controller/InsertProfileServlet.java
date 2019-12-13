package mypage.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;

import board.model.service.BoardService;
import board.model.vo.Attachment;
import common.MyFileRenamePolicy;
import member.model.vo.Member;

/**
 * Servlet implementation class InsertProfileServlet
 */
@WebServlet("/insert.pr")
public class InsertProfileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public InsertProfileServlet() {
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
			int maxSize = 1024 * 1024 * 10;
			String root = request.getSession().getServletContext().getRealPath("/");
			String savePath = root + "/resources/thumbnail_uploadFiles/";
			MultipartRequest multipartRequest = new MultipartRequest(request, savePath, maxSize, "UTF-8",
					new MyFileRenamePolicy());

			ArrayList<String> changeFiles = new ArrayList<>();
			ArrayList<String> originFiles = new ArrayList<>();

			Enumeration<String> files = multipartRequest.getFileNames();

			while (files.hasMoreElements()) {
				String name = files.nextElement();

				if (multipartRequest.getFilesystemName(name) != null) {
					// getFilessystemName() --> 리네임 된 파일명 리턴
					String changeName = multipartRequest.getFilesystemName(name);
					// getOriginFileName() --> 사용자가 업로드한 파일명 리턴
					String originName = multipartRequest.getOriginalFileName(name);

					changeFiles.add(changeName);
					originFiles.add(originName);
				}

			}
			
			
			
			String nickName = multipartRequest.getParameter("ninkname");
			String mIntro = multipartRequest.getParameter("mIntro");
			
			
			
			Member m = new Member();
			m.setNickName(nickName);
			m.setmIntro(mIntro);
			
			ArrayList<Attachment> fileList = new ArrayList<>();
			for(int i = originFiles.size() - 1; i >= 0; i--) {
				Attachment at = new Attachment();
				at.setFilePath(savePath);
				at.setOriginName(originFiles.get(i));
				at.setChangeName(changeFiles.get(i));
				
				// 메인 이미지인 경우 fileLevel 0, 일반 사진은 fileLevel 1
				if(i == originFiles.size() -1) {
					at.setFileLevel(0);
				}else {
					at.setFileLevel(1);
				}
				fileList.add(at);
			}
			
			
			int result = new BoardService().insertProfile(m, fileList);
			
			if(result > 0) {
				response.sendRedirect("list.pr");
			}else {
				// 실패 시 저장된 사진 삭제
				for(int i = 0; i < changeFiles.size(); i++) {
					// 파일 시스템에 저장 된 이름으로 파일 객체 생성함
					File failedFile = new File(savePath + changeFiles.get(i));
					failedFile.delete();
				}
				
				request.setAttribute("msg", "사진 게시판 등록 실패!!");
				request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
				
			}
			
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
