package product.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.Member;
import product.model.service.ProductService;

/**
 * Servlet implementation class CartDeleteServlet
 */
@WebServlet("/delCart.pr")
public class CartDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartDeleteServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 해당 상품 장바구니에서 삭제하기
		request.setCharacterEncoding("utf-8");
		
		Member m = (Member)request.getSession().getAttribute("loginUser");
		
		String pId = request.getParameter("pId");
		
		ProductService pService = new ProductService();

		int result = pService.deleteCart(m.getmId(), pId); 
		
		if(result > 0) {
			// 장바구니에서 삭제 성공
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(m.getmId() + "님의 장바구니 안 상품ID : 삭제 완료");
			
		}else {
			response.setCharacterEncoding("utf-8");
			response.getWriter().print("실패");
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
