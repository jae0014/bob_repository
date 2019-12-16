<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/operate.css">


</head>
<style>

.part1,.mypage-contents,.sub-container{
diplay:inline-block;
height:100%;
}

.wholewhole{
width:85%;
height:1100px;
margin:auto;

}

.part1{
width:20%;
height:100%;
float:left;


}

.mypage-contents{
width:50%;
float:left;


}



</style>
<body>
<%@include file ="../common/menubar.jsp" %>
<%@include file="../common/bootstrap.jsp" %>

<br><br>
<div class="wholewhole">
<div class="part1">
<article id="container" class='sub-container'>
		<div class='site-sub-top'>
			<!-- 추가 컨텐츠 [S] -->
			
			<!-- 추가 컨텐츠 [E] -->
		</div>
		<section class='site-sub-layout'>
			<nav class="lnb-area">
			<h1 class="subtit-heading">
	<a href="/mypage/">
		<span class="font-en">MY PAGE</span>
	</a>
</h1>

	<dl class="menu-sub-left">
	<dt>
		<a href="myProfile.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		나의 쇼핑 내역
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myOrder.jsp" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="myPageDisorder.jsp" class=''>
					취소/반품/교환 현황
				</a>
			</li>
		
		</ul>
	</dd>
	<dt>
		나의 레시피 관리
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myRecipe.jsp" >
					나의 레시피
				</a>
			</li>

			<li>
				<a href="likeRecipe.jsp" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		댓글 관리
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myReply.jsp"   >
					나의 댓글
				</a>
			</li>
			<li>
				<a href="getReply.jsp" >
					내가 받은 댓글
				</a>
			</li>
	
		</ul>
	</dd>
	<dt>
		나의 커뮤니티
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myBoard.jsp" >
					나의 게시글
				</a>
			</li>
			
			
		</ul>
	</dd>
	<dt>
		<a href="">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="updateMember.jsp" class="on">
					회원정보수정
				</a>
			</li>

			<li>
				<a href="deleteMember.jsp"  >
					회원탈퇴
				</a>
			</li>
		</ul>
	</dd>
</dl>
</div>
<script>
$(function(){
	$("#check_all").click(function(){
		$('#sDate').val('');
		$('#eDate').val('');
		$('#od_search_text').val('');
		$("input[name*='order_status']").prop("checked", false);
	});
});
</script>

<div class="mypage-contents">
<section class="wrap-shopping-info">
	<h2 class="hidden">회원 쇼핑정보</h2>
	<div class="shopping-info">
		<div class="area info01">
			<p>
				안녕하세요. 홍길동님<br>
				chef J를 이용해주셔서 감사합니다.
			</p>
		</div>
	
		
		
	</div>
</section>
<%--프로필 자리 --%>
<div class="wrap-recently-order">
		<h2>취소/교환/반품 검색</h2>
		<form name="searchform2">
			<table class="order-search">
				<caption>취소/교환/반품 검색</caption>
				<colgroup>
					<col width="15%">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">기간별</th>
						<td class="order-day">
							
		<span>
			<span>
				<input type='text' id='sDate' name='sDate' value='2019-12-12' style='width:65px;' class='date-pick inputbox_05 font-en' />
			</span>
			<span>
				<input type='text' id='eDate' name='eDate' value='2019-12-12' style='width:65px;' class='date-pick inputbox_05 font-en' />
			</span>
		</span>

				<div class='calrenda_btns'>
					<a href="javascript:sDate('2019-12-12','2019-12-12',1);" onFocus='this.blur();'class='btn_date today'>오늘</a>
					<a href="javascript:sDate('2019-12-05','2019-12-12',1);" onFocus='this.blur();'class='btn_date'>1주일</a>
					<a href="javascript:sDate('2019-11-13','2019-12-12', 1);" onFocus='this.blur();'class='btn_date'>1개월</a>
					<a href="javascript:sDate('2019-06-13','2019-12-12',1);" onFocus='this.blur();'class='btn_date'>6개월</a>
					<a href="javascript:sDate('2018-12-13','2019-12-12',1);" onFocus='this.blur();' class='btn_date'>1년</a>
				</div>

		<script type='text/javascript'>
		
		</script>
	
						</td>
					</tr>
					<!-- <tr>
						<th scope="row">주문상태</th>
						<td>
							<input type="checkbox" id="order_status_CA" name="order_status[]" value="CA" > <label for="order_status_CA">취소</label>
							<input type="checkbox" id="order_status_EA" name="order_status[]" value="EA" > <label for="order_status_EA">교환</label>
							<input type="checkbox" id="order_status_RA" name="order_status[]" value="RA" > <label for="order_status_RA">반품</label>
						</td>
					</tr> -->
					<tr>
						<th scope="row"><label for="od_search_text">상품명</label></th>
						<td>
							<input type="text" id="od_search_text" name="od_search_text" value="" style='width:343px;' title="">
						</td>
					</tr>
				</tbody>
			</table>
			<div class="mypage-sub-btn">
				<input type="submit" value="선택조건검색" title="선택조건검색" alt="선택조건검색" class='main_k_buttom buttom_m'>
				<a href="<!-- javascript:void(0); -->" id="check_all" class='sub_k_buttom buttom_m'>선택 해제하기</a>
			</div>
		</form>
	</div>
	<div class="wrap-recently-order">
		<h2>취소/교환/반품 리스트</h2>
		<table class="common-table2">
			<caption>취소/교환/반품 리스트</caption>
			<colgroup>
				<col width="18%">
				<col width="*">
				<col width="15%">
				<col width="15%">
				<col width="15%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">주문일/주문번호</th>
					<th scope="col">상품사진</th>
					<th scope="col">상품명/옵션</th>
					<th scope="col">수량</th>
					<th scope="col">가격</th>
					<th scope="col">주문상태</th>
	
				</tr>
				
				
				
			</thead>
			<tbody>
					<!-- <tr>
						<td colspan="6" class="no-content">
							정보가 존재하지 않습니다.
						</td >
					</tr> -->	
				<tr >
					<td class="cart_td_list option">
							<span class="option-info bl-color">2019-12-13<br>201912130000001<br></span>
					</td>


					<td class="first" rowspan="1">
						<div class="cart-goods-info">
							
							
							
							<span class="thumb">
								<a href=''>
									<img src="<%=request.getContextPath()%>/resources/images/마늘.jpg" >
								</a>
							</span>
							
						</div>
					</td>

					<!-- 옵션 -->
					
					<!-- //옵션 -->

					<td class="cart_td_list">
						<strong>마늘 200g</strong>
					</td>
					<td class="cart_td_list" >
							<span class="bg-sum2 ">1</span>
						</td>


						
						<td class="cart_td_list" >
							<span class="bg-sum2 "><strong>13,200</strong>원</span>
						</td>

<!--묶음배송 1.착불은 무조건 개별-->
							<td class="cart_td_list" >
								취소처리중
							</td>

				</tr>
		</tbody>
		</table>
	</div>
	<div class="paging">
		
	</div>


</div>

</div>




</div>

</div>





<%@include file="../common/footer.jsp"%>
</body>

</html>