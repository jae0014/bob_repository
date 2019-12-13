package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import attachment.model.vo.Attachment;
import product.model.service.ProductService;
import product.model.vo.Product;

/**
 * Servlet implementation class ProductListServlet
 */
@WebServlet("/list.pr")
public class ProductListServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ProductListServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cate = request.getParameter("cate");
		
		String cateStr = "";
		switch(cate) {
		case "1" : cateStr = "채소"; break;
		case "2" : cateStr = "과일"; break;
		case "3" : cateStr = "견과, 쌀"; break;
		case "4" : cateStr = "수산, 해산"; break;
		case "5" : cateStr = "건어물"; break;
		case "6" : cateStr = "정육"; break;
		case "7" : cateStr = "계란, 유제품"; break;
		case "8" : cateStr = "면, 양념, 오일"; break;
		
		}
		
		ProductService pService = new ProductService();

		// 1. 상품 리스트 조회
		ArrayList<Product> pList = pService.selectList(cate);
		
		ArrayList<Attachment> fList = new ArrayList<Attachment>();
		
		for(int i=0; i < pList.size(); i++) {
			Attachment imgFile = pService.selectThumbnail(pList.get(i).getpId());
			fList.add(imgFile);
		}
		
		
		if(pList.size() != 0 && fList.size() != 0) {
			request.setAttribute("pList", pList);
			request.setAttribute("cate", cate);
			request.setAttribute("cateStr", cateStr);
			request.setAttribute("fList", fList);
			request.getRequestDispatcher("views/product/productListView.jsp").forward(request, response);
		}else {
			request.setAttribute("msg", "상품리스트 조회 실패!!");
			request.getRequestDispatcher("views/common/errorPage.jsp").forward(request, response);
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
