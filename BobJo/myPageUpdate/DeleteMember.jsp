
</body>
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/operate.css">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">


<script>
var templet_src='/data/enterdev_data/templet/bienbien';
var front_language='korean';
</script>
<script src="library.js"></script>
<script src="ui.js"></script>
<script src="basic_head.js"></script>


<script src="mypage.js"></script>

</head>
<style>

div{
/* border:1px solid red; */
}
.part1,.mypage-contents,.sub-container{
diplay:inline-block;
/* border:1px solid red; */
height:100%;
}

.wholewhole{
width:85%;
height:1100px;
margin:auto;
/* border:1px solid blue; */

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




.content{
border-radius:5px;
width:100%;
height:90%;
border:1px solid grey;
}

.myprofile{

width:25%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
}

.background,.text{
height:50%;
}


.pic{
width:30%;
height:30%;
border-radius:50%;
margin-top:-12%;
margin-left:33%;
positon:relative;
z-index: 2;
}

.text{
margin-top:-12%;
}

.pf{
width:100%;
height:100%;
border-radius:50%;
position:relative; 
z-index:1;

}

.bg{
width:100%;
height:100%;
opacity:0.5;
z-index: -1;
}

.nickname{
margin-top:13%;
height:20%;
text-align:center;
font-size:40px;
margin-bottom:10px;

}

.introduce{
text-align:center;
font-size:20px;

}

.myprofile{

width:80%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
margin:auto;

}


.cover{
margin-left:10%;
background-color:grey;
border-radius:5px;
width:45%;


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
		<a href="/mypage/profile.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		<a href="/mypage/order_history.php">나의 쇼핑 내역</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/order_history.php" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="/mypage/return_history.php" class=''>
					취소/반품/교환 현황
				</a>
			</li>
			<!--<li>
				<a href="/mypage/add_pay_history.php" class='' >
					추가결제 내역
				</a>
			</li>-->
			<li>
				<a href="/mypage/receipt.php" class=''>
					증빙문서관리
				</a>
			</li>
		</ul>
	</dd>
	<dt>
		<a href="/mypage/coupon.php">나의 레시피 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/mileage.php" >
					내가 작성한 레시피
				</a>
			</li>

			<li>
				<a href="/mypage/coupon.php" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">댓글 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/recent_view.php"   >
					내가 작성한 댓글
				</a>
			</li>
			<li>
				<a href="/mypage/wishlist.php" >
					내가 받은 댓글
				</a>
			</li>
			
			<!--li>
				<a href="/mypage/event_favorite.php" >
					찜한 기획전/참여 이벤트
				</a>
			</li-->
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">나의 커뮤니티</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/my_goods_inquiry.php" >
					내가 작성한 게시글
				</a>
			</li>
			<li>
				<a href="/mypage/mypage_bbs.php" >

					내가 작성한 후기

				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/profile.php">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/profile.php" class="on">
					회원정보수정
				</a>
			</li>
			<li>
				<a href="/mypage/addressbook.php" >
					배송지 관리
				</a>
			</li>
			<li>
				<a href="/mypage/secede.php"  >
					회원탈퇴
				</a>
			</li>
		</ul>
	</dd>
</dl>
</div>
<div class="mypage-contents">
<section class="wrap-shopping-info">
	<h2 class="hidden">회원 쇼핑정보</h2>

</section>
<%--여기서부터 시작 자리 --%>
<div class="secession-check-member">
			<table class="common-write">
			<caption>회원 정보 입력</caption>
			<colgroup>
				<col width='20%'>
				<col width='*'>
			</colgroup>
			<tbody>
				<tr>
					<th scope="col">
						아이디
					</th>
					<td>
						<input type="text" name="id" validation="true" value='thecho30' title="아이디" style="width:200px;" readonly>
					</td>
				</tr>
				<tr>
					<th scope="col">
						비밀번호
					</th>
					<td>
						<input type="password" name="pass" id="pass" style="width:200px;">
					</td>
				</tr>
			</table>
		</div>
		<div class='btn-area'>
			<input type="submit" value='탈퇴' onclick="check_pass()" alt="확인" title=확인 class='main_k_buttom buttom_m'>
			<a href="/mypage/" class='sub_k_buttom buttom_m'>취소</a>
		</div>


</div>

</div>

<script>
	function())

</script>







<%@include file="../common/footer.jsp"%>
</body>

</html>