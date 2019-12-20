package order.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import member.model.vo.Member;
import order.model.service.OrderService;
import product.model.service.ProductService;

/**
 * Servlet implementation class OrderPaymentServlet
 */
@WebServlet("/orderPay")
public class OrderPaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public OrderPaymentServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 결제 성공했을 경우
		 * 1. 장바구니 해당상품 삭제
		 * 2. 주문 db에 저장
		 * 3. order id값 추출
		 * 4. 성공 페이지 이동*/
		request.setCharacterEncoding("utf-8");
		
		Member m = (Member)request.getSession().getAttribute("loginUser");
		String str = request.getParameter("pids");
		String[] pIdArr = str.split(",");
		
		// 폼에서 넘겨온 정보
		String addr = request.getParameter("roadFullAddr")+request.getParameter("addrDetail");
		String rName = request.getParameter("r_name");		// 수령인 이름
		String rPhone = request.getParameter("r_phone");	// 수령인 연락처
		String rPlease = request.getParameter("r_please");	// 배송시 요청사항
		String chong = request.getParameter("chong");	// 결제 총 금액
		
		ProductService pService = new ProductService();
		int result = 0;
		// 1. 장바구니 해당상품 삭제
		/*for(int i = 0; i < pIdArr.length; i++) {
			String pId = pIdArr[i];
			System.out.println(i+"번째 상품 : " + pId);
			result = pService.deleteCart(m.getmId(), pId);
		}*/
		
		
		OrderService oService = new OrderService();
		// 2-1. shopping_order(주문번호,주문자(회원고유번호),받는사람 이름,받는사람 연락처,배송지,배송시 요청사항,총 결제금액,주문날짜)
		//int result2 = oService.insertOrder(m.getmNo(), rName, rPhone, addr, rPlease, chong);
		// -> 주문번호 리턴 가능할까?
		
		// 2-2. 주문번호에 대한 주문 상품 상세 데이터(order_detail)
		/*주문상세고유번호,주문고유번호,상품고유번호,구매수량,상품금액 */
		// -> 삭제하기 전에 조회해서 가져오던가 해야겟다...
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
