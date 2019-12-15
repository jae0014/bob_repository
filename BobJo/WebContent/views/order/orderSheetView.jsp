<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CHEF J</title>
<style>
body {
	margin: auto;
	position: relative;
}

.content {
	width: 80%;
	/* position: absolute; 
            left: 50%; 
            transform: translateX(-50%); */
	margin-left: auto;
	margin-right: auto;
}

.order_top {
	padding: 2rem;
}

.order_top p {
	text-align: center;
	margin: auto;
}

.top-title {
	font-size: 2rem;
	font-weight: bold;
}

#productInfoBtn {
	width: 100%;
	border: none;
	border-radius: 0.5rem;
	background-color: rgb(255, 235, 235);
	color: rgb(170, 57, 57);
	font-size: 1.2rem;
	font-weight: 600;
}

#paymentDiv {
	text-align: center;
	/* margin-top: 2rem; */
	margin-bottom: 3rem;
}

#paymentBtn {
	border: none;
	width: 13rem;
	height: 3rem;
	border-radius: 0.5rem;
	background-color: rgb(170, 57, 57);
	color: white;
	font-size: 1.2rem;
}

.order_info, .delivery_info, .coupon, .payment {
	margin-bottom: 2.5rem;
}

.order_info p, .delivery_info p, .coupon p, .payment p {
	font-size: 1.2rem;
	font-weight: bold;
	margin-left: 0.5rem;
}

.info_table {
	width: 55%;
	border-top: 2px solid rgb(170, 57, 57);
	border-bottom: 2px solid rgb(170, 57, 57);
	margin-bottom: 1rem;
}

.info_table td {
	border-top: 1px solid gray;
	padding: 0.8rem 1rem 0.8rem 1rem;
}

.info_table tr td:first-child {
	width: 30%;
}

#payment_method_table, #total_price_table {
	width: 100%;
	border-top: 2px solid rgb(170, 57, 57);
	border-bottom: 2px solid rgb(170, 57, 57);
	margin-bottom: 1rem;
}

#payment_method_table td, #total_price_table td {
	border-top: 1px solid gray;
	padding: 0.8rem 1rem 0.8rem 1rem;
}

#payment_method_table td:first-child, #total_price_table td:first-child
	{
	width: 35%;
}

.total_price {
	width: 60%;
}
</style>

</head>
<body>

	<%@ include file="../common/menubar.jsp"%>
	<%@ include file="../common/bootstrap.jsp"%>

	<section class="content">
		<div class="container-fluid">
			<div class="order_top">
				<p class="top-title">주문서</p>
				<p>주문하실 상품명 및 수량 정보를 정확히 확인해 주세요.</p>
			</div>

			<div class="order_middle">
				<div class="products_info">
					<div class="collapse" id="collapseExample"
						style="margin-bottom: 1rem">
						<div class="card card-body">
							<table class="table table-hover">
								<thead class="thead-light">
									<tr>
										<th scope="col">상품 정보</th>
										<th scope="col">수량</th>
										<th scope="col">상품 금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td><img src="" alt="상품이미지">상품명 1</td>
										<td>1</td>
										<td>2000 원</td>
									</tr>
									<tr>
										<td>Jacob</td>
										<td>Thornton</td>
										<td>@fat</td>
									</tr>
									<tr>
										<td>Larry</td>
										<td>the Bird</td>
										<td>@twitter</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
					<p>
						<button class="btn btn-primary" type="button"
							data-toggle="collapse" id="productInfoBtn"
							data-target="#collapseExample" aria-expanded="false"
							aria-controls="collapseExample">상품 정보 열기</button>
					</p>



				</div>

				<div class="order_info">
					<!-- 주문자 정보-->
					<p>주문자 정보</p>
					<table class="info_table">
						<tr>
							<td>이 름</td>
							<td>홍길동</td>
						</tr>
						<tr>
							<td>휴대폰</td>
							<td></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td></td>
						</tr>
					</table>
				</div>

				<div class="delivery_info">
					<!-- 배송 정보-->
					<p>배송 정보</p>
					<table class="info_table">
						<tr>
							<td>배송지 선택 *</td>
							<td><input type="radio" name="address" id="defaultAddress"
								checked="checked"><label for="defaultAddress">&nbsp;기본
									배송지</label>&nbsp;&nbsp; <input type="radio" name="address"
								id="newAddress"><label for="newAddress">&nbsp;새로운 배송지</label>
							</td>
						</tr>
						<tr>
							<td>배송지(주소) *</td>
							<td><input type="text"><br> <input type="text">
							</td>
						</tr>
						<tr>
							<td>수령인 이름 *</td>
							<td><input type="text"></td>
						</tr>
						<tr>
							<td>휴대폰(연락처) *</td>
							<td><input type="tel"></td>
						</tr>
						<tr>
							<td>배송시 요청사항</td>
							<td><textarea rows="2" cols="50"></textarea></td>
						</tr>
					</table>
				</div>

				<div class="coupon">
					<!-- 쿠폰-->
					<p>쿠폰</p>
					<table class="info_table">
						<tr>
							<td>쿠폰 사용여부</td>
							<td><input type="radio" name="coupon" id="noCoupon"
								checked="checked"><label for="noCoupon">&nbsp;사용 안함</label>&nbsp;&nbsp;
								<input type="radio" name="coupon" id="useCoupon"><label
								for="useCoupon">&nbsp;쿠폰 사용</label></td>
						</tr>
					</table>
				</div>

				<div class="payment row">
					<!-- 결제 수단-->
					<div class="payment_method col-5">
						<p>결제 수단</p>
						<table id="payment_method_table">
							<tr>
								<td>일반 결제</td>
								<td></td>
							</tr>
							<tr>
								<td>네이버 페이</td>
								<td></td>
							</tr>
							<tr>
								<td>카카오 페이</td>
								<td></td>
							</tr>
							<tr>
								<td>에스크로 결제</td>
								<td></td>
							</tr>
						</table>
					</div>
					<div class="col-2"></div>
					<!-- 최종 결제 금액-->
					<div class="total_price col-4">
						<p>최종 결제 금액</p>
						<table id="total_price_table">
							<tr>
								<td>상품 금액</td>
								<td></td>
							</tr>
							<tr>
								<td>배송비 (+)</td>
								<td></td>
							</tr>
							<tr>
								<td>쿠폰 (-)</td>
								<td></td>
							</tr>
							<tr style="background-color: rgb(255, 235, 235)">
								<td>총 결제 금액</td>
								<td></td>
							</tr>
						</table>
					</div>
				</div>

				<br>

				<div id="paymentDiv">
					<button type="button" id="paymentBtn">결제 하기</button>
				</div>
			</div>

		</div>
	</section>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>