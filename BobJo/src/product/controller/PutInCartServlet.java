package product.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import product.model.service.ProductService;
import product.model.vo.Cart;

/**
 * Servlet implementation class PutInCartServlet
 */
@WebServlet("/cart.pr")
public class PutInCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PutInCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// 장바구니 담기
		request.setCharacterEncoding("utf-8");
		
		String pId = request.getParameter("pId");
		int quantity = Integer.parseInt(request.getParameter("quantity"));
		String userId = request.getParameter("userId");
		
		ProductService pService = new ProductService();
		
		Cart ccc = new Cart(pId, quantity, userId);
		int result = pService.putInCart(ccc);
		
		if(result > 0) {
			// 장바구니 넣기 성공
			response.setCharacterEncoding("utf-8");
			response.getWriter().print(userId + "님의 장바구니 안 상품ID : " + pId + ", 구매수량 : " + quantity);
			
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
