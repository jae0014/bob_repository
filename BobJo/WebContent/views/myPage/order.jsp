<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.whole {
	width: 80%;
	height: 50%;
	margin: auto;
}

.tab1, .tab2 {
	width: 30%;
	height: 50px;
	text-align: center;
	border-radius: 5px;
	display: table-cell;
	vertical-align: middle;
	background-color: rgb(255, 235, 235);
	color: rgb(85, 0, 0);
}

.tab1:hover, .tab2:hover {
	background-color: rgb(212, 106, 106);
	cursor: pointer;
}

.content {
	border-radius: 5px;
	width: 100%;
	height: 90%;
	border: 1px solid;
}



.ta{
width:90%;
height:60%;
margin:auto;
text-align:center;



}










</style>
<body>

	<%@ include file="../common/menubar.jsp" %>
	<%@include file="../common/bootstrap.jsp"%>
	<br>
	<br>
	<%@ include file="myPage.jsp"%>

	<div class="whole">
		<div class="tab1">
			주문내역조회
			<div>0</div>
		</div>
		<div class="tab2">
			취소/반품교환
			<div>0</div>
		</div>
		<div class="content">
		<br>
		
		<div class="head" style="text-align:left; font-weight:bold">&nbsp;&nbsp;주문 상품 정보<hr></div>
		<br>
		<table class=ta>
		<tr style="border-bottom:1px solid grey">
			<th width="150">주문일자</th>
			<th width="200">이미지</th>
			<th width="400">상품정보</th>
			<th width="60">수량</th>
			<th width="120">상품구매금액</th>
			<th width="120">주문처리상태</th>
			<th width="120">취소/교환/반품</th>
			
		</tr>
		<tr style="border-bottom:1px solid grey">
			<td>2019-11-25</td>
			<td><img src="<%=request.getContextPath()%>/resources/images/마늘.jpg" style="width:100%; height:50%"></td>
			<td>깐마늘 100g</td>
			<td>1</td>
			<td>2000원</td>
			<td>결제안료</td>
			<td></td>
		</tr>
		
		</table>
		
		
		<br><br>
		</div>
	
	</div>
	<br>
	<br>

	<%@include file="../common/footer.jsp"%>

</body>
</html>