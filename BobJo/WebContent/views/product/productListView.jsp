<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, common.vo.*, product.model.vo.*, attachment.model.vo.*"%>
<%
	ArrayList<Product> pList = (ArrayList<Product>) request.getAttribute("pList");
	String cate = request.getAttribute("cate").toString();
	String cateStr = request.getAttribute("cateStr").toString();
	ArrayList<Attachment> fList = (ArrayList<Attachment>) request.getAttribute("fList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>J market</title>
<style>
body {
	margin: auto;
	position: relative;
}

.content {
	width: 85%;
	/* position: absolute; 
            left: 50%; 
            transform: translateX(-50%); */
	margin-left: auto;
	margin-right: auto;
}

.list-row {
	margin-bottom: 1.5rem;
}

.card-title {
	font-weight: bold;
}

/*
        a:link : 클릭하지 않은 링크
		a:visited : 한번 클릭했던 혹은 다녀갔던 링크
		a:hover : 링크를 클릭하려고 마우스를 가져갔을 때
        */
.card-title a:link, .card-title a:visited {
	color: black;
	text-decoration: none;
}

.card-title a:hover {
	color: rgb(212, 106, 106);
	text-decoration: underline;
}

.card-img {
	width: 100%;
	height: 100%;
}

.card-img-top {
	width: 100%;
	height: 100%;
}

.col-3 {
	padding: 0px !important;
}

.cartBtn {
	padding: 0.2rem !important;
}

.plus, .minus {
	height: 2rem;
	width: 2rem;
	line-height: 0.5rem;
	font-weight: 700;
	border-radius: 0.5rem;
	background-color: rgb(250, 250, 250);
}

.numBox {
	height: 2rem;
	width: 4rem;
	text-align: center;
	border-radius: 0.5rem;
}

.card-text {
	color: gray;
	font-size: 0.8rem;
	margin-bottom: 10px;
}

.product_price {
	color: rgb(170, 57, 57);
	font-weight: bold;
	font-size: 1.2rem;
	margin: auto;
}

.card-body {
	padding: 1rem;
	text-align: left;
}

.sorting {
	padding: 0.5rem 0 0.5rem 0.5rem;
	height: 3.5rem;
	margin: 0.5rem;
	/* 정렬 드롭메뉴가 float를 사용했기 때문에 그 영역만큼 크기를 잡는다 */
}

.sort-by {
	float: right;
}

.cate {
	float: left;
	width: 10rem;
	height: 2rem;
	text-align: center;
	background-color: rgb(257, 157, 157);
	border-radius: 0.8rem;
	color: white;
	margin-top: 0.5rem;
}

#dropdownMenuButton {
	background-color: white;
	border: rgb(257, 157, 157) solid 1px;
	color: rgb(257, 157, 157);
}

.paging {
	height: 100%;
	text-align: center;
	padding: 10px;
}

.paging:before {
	content: "";
	display: inline-block;
	width: 1px;
	height: 100%;
	margin-right: 0;
	vertical-align: middle;
}

.page-nav {
	display: inline-block;
	vertical-align: middle;
}
</style>

</head>
<body>

	<%@ include file="../common/menubar.jsp"%>
	<%@ include file="../common/bootstrap.jsp"%>

	<section class="content">
		<div class="container-fluid">
			<div class="cate">
				<p><%=cateStr%></p>
			</div>
			<div class="sorting">
				<!-- 정렬 기준 추가-->
				<div class="dropdown sort-by">
					<button class="btn btn-secondary dropdown-toggle" type="button"
						id="dropdownMenuButton" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false">정렬 기준</button>
					<div class="dropdown-menu" aria-labelledby="dropdownMenu2">
						<button class="dropdown-item" type="button">신상품순</button>
						<button class="dropdown-item" type="button">인기 상품순</button>
						<button class="dropdown-item" type="button">가격 낮은 순</button>
						<button class="dropdown-item" type="button">가격 높은 순</button>
					</div>
				</div>
			</div>

			<!-- 카트 아이콘 클릭시 장바구니 작은 창 뜨는거 modal 이용(알아봐야할 듯)-->
			<div class="product-wrap">
				<%
					for (int i = 0; i < pList.size(); i++) {
						Product product = pList.get(i);
				%>
				<%
					if (i % 4 == 0) {
				%>
				<div class="row list-row">
					<%
						}
					%>
					<div class="col-sm-3 gg">
						<div class="card">
							<div class="card-img">
								<a
									href="<%=request.getContextPath()%>/detail.pr?pId=<%=pList.get(i).getpId()%>">
									<%
										for (Attachment at : fList) {
									%> <%
 	if (pList.get(i).getpId().equals(at.getBprcId())) {
 %> <%-- <img src="<%= request.getContextPath() %>/resources/sampleImg/당근.png" class="card-img-top" alt="..."> --%>
									<img
									src="<%=request.getContextPath()%>/resources/product/<%=cate%>/<%=at.getfName()%>"
									class="card-img-top" alt="..."> <%
 	}
 %> <%
 	}
 %> <%-- <img src="<%= request.getContextPath() %>/resources/product/<%= fList.get(i).getfPath() %>" class="card-img-top" alt="..."> --%>
								</a>
							</div>
							<div class="card-body">
								<div class="row">
									<div class="col-9">
										<h5 class="card-title">
											<a
												href="<%=request.getContextPath()%>/detail.pr?pId=<%=pList.get(i).getpId()%>">
												<%=pList.get(i).getpName()%>
											</a>
										</h5>
									</div>
									<div class="col-3 row">
										<!-- 장바구니 담기 버튼 -->
										<button class="btn btn-outline-danger col cartBtn" id="cartBtn<%= i %>">
											cart
											<input type="hidden" name="pId<%=i %>" value="<%= pList.get(i).getpId() %>">
											<input type="hidden" name="pName<%=i %>" value="<%= pList.get(i).getpName() %>">
											<input type="hidden" name="pPrice<%=i %>" value="<%= pList.get(i).getpPrice() %>">
											<input type="hidden" name="pStock<%=i %>" value="<%= pList.get(i).getpStock() %>">
										</button>

									</div>
								</div>
								<div class="row">
									<p class="product_price col"><%=pList.get(i).getpPrice()%>
										원
									</p>
								</div>
								<div class="row">
									<p class="card-text col"><%=pList.get(i).getpShortDesc()%></p>
								</div>
							</div>
						</div>
					</div>

					<%
						if (i % 4 == 3) {
					%>
				</div>
				<%
					}
				%>
				<%
					}
				%>

			</div>


		</div>
		<!-- container 끝-->

		<!-- paging -->
		<div class="paging">
			<nav aria-label="Page navigation example" class="page-nav">
				<ul class="pagination">
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
					</a></li>
					<li class="page-item"><a class="page-link" href="#">1</a></li>
					<li class="page-item"><a class="page-link" href="#">2</a></li>
					<li class="page-item"><a class="page-link" href="#">3</a></li>
					<li class="page-item"><a class="page-link" href="#"
						aria-label="Next"> <span aria-hidden="true">&raquo;</span>
					</a></li>
				</ul>
			</nav>
		</div>

		<!-- Modal -->
		<div class="modal fade" id="cartModal" data-backdrop="static"
			tabindex="-1" role="dialog"
			aria-labelledby="staticBackd  aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="staticBackdropLabel">장바구니</h5>
						<button type="butt =" close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div>
							<input type="hidden" name="putProductId" value="0">
							<p id="putProduct"></p>
							<button type="button" class="minus">-</button>
							<input type="number" class="numBox" min="0" value="0"
								readonly="readonly" />
							<button type="button" class="plus">+</button>
							<span id="totalPrice">0</span> 원
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" id="modal_close">닫기</button>
						<button type="button" class="btn btn-danger" id="putProductBtn">장바구니 담기</button>
					</div>
				</div>
			</div>
		</div>
		<!-- 모달 끝부분 -->


	</section>

	<script>
		$(function() {
			console.log("test");
			
			$(".cartBtn").click(function(){
				// 혹시 모르니까 모달 안 데이터 초기화
				$(".numBox").val(0);
				$("#totalPrice").html(0);
				$('input[name=putProductId]').val(0);
				
				// 모달 보이게 하기
				$('#cartModal').modal("show");
				
				var i = $(this).attr("id").substring(7);

				// i를 전달하기 위해...
				$('input[name=putProductId]').val(i);
				
				var pName = $('input[name=pName'+i+']').val();
				$("#putProduct").text(pName);
				
			});
			
			$(".plus").click(function(){
				var i = $('input[name=putProductId]').val();
	    		var num = Number($(".numBox").val());
	    		var stock = Number($('input[name=pStock'+i+']').val());
	    		var price = Number($('input[name=pPrice'+i+']').val());
	    		if(num<Number(stock)){
	        		num = num + 1;
	        		console.log(num);
	        		var total = Number($("#totalPrice").html()) + price;
	        		$("#totalPrice").html(total);
	    		}
	    		$(".numBox").val(num);
	    	});
			
			$(".minus").click(function(){
				var i = $('input[name=putProductId]').val();
	    		var num = Number($(".numBox").val());
	    		var price = Number($('input[name=pPrice'+i+']').val());
	    		if(num>0){
	        		num = num - 1;
	        		console.log(num);
	        		var total = Number($("#totalPrice").html()) - price;
	        		$("#totalPrice").html(total);
	    		}
	    		$(".numBox").val(num);
	    	});
			
			
			$("#modal_close").click(function(){
				// 모달 창을 닫으면 모달 안에 있는 데이터 모두 초기화해야함
				$(".numBox").val(0);
				$("#totalPrice").html(0);
				$('input[name=putProductId]').val(0);
				
			});
			
			$("#putProductBtn").click(function(){
				// 장바구니 담기 버튼 클릭 시 로그인 여부 확인
				<%if (loginUser != null) {%>
					// 로그인 한 상태일때
				
				<%} else {%>
					// 로그인 안되어 있을 때 로그인 페이지로 이동
					alert('로그인 후 장바구니를 이용할 수 있습니다.');
					location.href="<%= contextPath %>/views/member/memberLoginForm.jsp";
				<%}%>
			});
			
			
			
		});
		
		
		
	</script>

	<%@ include file="../common/footer.jsp"%>

</body>
</html>