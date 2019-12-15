<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/operate.css">
</head>
<style>
div {
	/* border:1px solid red; */
	
}

.part1, .mypage-contents, .sub-container {
	diplay: inline-block;
	/* border:1px solid red; */
	height: 100%;
}

.wholewhole {
	width: 85%;
	height: 1100px;
	margin: auto;
	/* border:1px solid blue; */
}

.part1 {
	width: 20%;
	height: 100%;
	float: left;
}

.mypage-contents {
	width: 50%;
	float: left;
}
</style>
<body>
	<%@include file="../common/menubar.jsp"%>
	<%@include file="../common/bootstrap.jsp"%>

	<br>
	<br>
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
							<a href="/mypage/"> <span class="font-en">MY PAGE</span>
							</a>
						</h1>

						<dl class="menu-sub-left">
							<dt>
								<a href="myProfile.jsp">프로필 관리</a>
							</dt>


							<dt>
								<br> <br> 나의 쇼핑 내역
							</dt>
							<dd>
								<ul>
									<li><a href="myOrder.jsp" class=''> 주문/배송 현황 </a></li>
									<li><a href="myPageDisorder.jsp" class=''> 취소/반품/교환 현황
									</a></li>

								</ul>
							</dd>
							<dt>나의 레시피 관리</dt>
							<dd>
								<ul>
									<li><a href="myRecipe.jsp"> 나의 레시피 </a></li>

									<li><a href="likeRecipe.jsp"> 좋아요 한 레시피 </a></li>

								</ul>
							</dd>
							<dt>댓글 관리</dt>
							<dd>
								<ul>
									<li><a href="myReply.jsp"> 나의 댓글 </a></li>
									<li><a href="getReply.jsp"> 내가 받은 댓글 </a></li>

								</ul>
							</dd>
							<dt>나의 커뮤니티</dt>
							<dd>
								<ul>
									<li><a href="myBoard.jsp"> 나의 게시글 </a></li>


								</ul>
							</dd>
							<dt>
								<a href="">회원정보</a>
							</dt>
							<dd>
								<ul>
									<li><a href="updateMember.jsp" class="on"> 회원정보수정 </a></li>

									<li><a href="deleteMember.jsp"> 회원탈퇴 </a></li>
								</ul>
							</dd>
						</dl>
						</nav>
						
		</section>
		</article>
		</div>
		
		<div class="mypage-contents">
			<section class="wrap-shopping-info">
				<h2 class="hidden">회원 쇼핑정보</h2>
				<div class="shopping-info">
					<div class="area info01" style="width: 100%;">
						<p style="font-size: 20px">
							정말로 탈퇴하시겠습니까?<br>
						<p style="color: rgb(170, 57, 57); font-size: 25px">회원탈퇴전 다음
							사항을 꼭 숙지하시기 바랍니다.</p>
						<br>

						<ul>
							<li>진행중인 구매내역이 있을 경우 회원 탈퇴가 불가능하며, 거래 완료 후 탈퇴 하실 수 있습니다.</li>
							<li>회원탈퇴시 적립된 적립금은 모두 즉시 소멸되며 재가입시에도 재적립 되지 않습니다.</li>
						</ul>
						
					</div>



				</div>
			</section>

			<%--여기서부터 시작 자리 --%>
			<br>
			<div class="secession-check-member">
				<table class="common-write">
					<caption>회원 정보 입력</caption>
					<colgroup>
						<col width='20%'>
						<col width='*'>
					</colgroup>
					<tbody>
						<tr>
							<th scope="col">아이디</th>
							<td><input type="text" name="id" validation="true" value=''
								title="아이디" style="width: 200px;" readonly></td>
						</tr>
						<tr>
							<th scope="col">비밀번호</th>
							<td><input type="password" name="pass" id="pass"
								style="width: 200px;"></td>
						</tr>
				</table>
			</div>
			<div class='btn-area'>
				<input type="submit" value='탈퇴' onclick="check_pass()" alt="확인"
					title=확인 class='main_k_buttom buttom_m'> <a
					href="myProfile.jsp" class='sub_k_buttom buttom_m'>취소</a>
			</div>
		</div>
	</div>

	<%@include file="../common/footer.jsp"%>
</body>

</html>