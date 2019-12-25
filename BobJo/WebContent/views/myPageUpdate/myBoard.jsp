
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

</head>
<style>


.part1, .mypage-contents, .sub-container {
	diplay: inline-block;

	height: 100%;
}

.wholewhole {
	width: 85%;
	height: 1100px;
	margin: auto;

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
	
		<span class="font-en">MY PAGE</span>

</h1>

		<dl class="menu-sub-left">
							<!-- <dt>
								<a href="myProfile.jsp">프로필 관리</a>
							</dt> -->
							
								<dt>프로필 관리</dt>
							<dd>
								<ul>
									<li><a href="<%=request.getContextPath() %>/views/myPageUpdate/myProfile.jsp">프로필 보기/수정 </a></li>


								</ul>
							</dd>
							
							


							<dt>
								
								나의 쇼핑 내역
							</dt>
							<dd>
								<ul>
									<li><a href="<%=request.getContextPath() %>/views/myPageUpdate/myOrder.jsp" class=''> 주문/배송 현황 </a></li>
									</a></li>

								</ul>
							</dd>
							<dt>나의 레시피 관리</dt>
							<dd>
								<ul>
									<li><a href="<%=request.getContextPath() %>/recipelist.mp">
											나의 레시피 </a></li>


								</ul>
							</dd>
						<!-- 	<dt>댓글 관리</dt>
							<dd>
								<ul>
									<li><a href="myReply.jsp"> 나의 댓글 </a></li>
									<li><a href="getReply.jsp"> 내가 받은 댓글 </a></li>

								</ul>
							</dd> -->
							<dt>나의 커뮤니티</dt>
							<dd>
								<ul>
									<li><a href="<%=request.getContextPath() %>/views/myPageUpdate/myBoard.jsp"> 나의 게시글 </a></li>


								</ul>
							</dd>
							<dt>
								회원정보
							</dt>
							<dd>
								<ul>
									<li><a href="<%=request.getContextPath()%>/views/myPageUpdate/updateMember.jsp"> 회원정보수정 </a></li>

									<li><a href="<%=request.getContextPath() %>/views/myPageUpdate/deleteMember.jsp"> 회원탈퇴 </a></li>
								</ul>
							</dd>
						</dl>
</div>
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
			<%--여기서부터 시작 자리 --%>
			<div class="">
				<form name="list_frm">
					<table class="common-table2">
						<caption>공지사항</caption>
						<colgroup>
							<col width="73">
							<col width="110" />
							<col width="*">
							<col width="120">
							<col width="95">
						</colgroup>
						<thead>
							<tr>
								<br>
								<br>
								<th scope="col"><strong>번호</strong></th>
								<th scope="col"><strong>분류</strong></th>
								<th scope="col"><strong>제목</strong></th>
								<th scope="col"><strong>날짜</strong></th>
								<th scope="col"><strong>조회수</strong></th>
							</tr>
						</thead>
						<tbody>


							<tr>
								<td>67</td>
								<!-- <td><img src="/data/enterdev_data/templet/bienbien/images/common/bbs_notice.gif" alt="공지"></td> -->
								<td>[자유]</td>
								<td class="subject">
									<div class="nobr" style="margin-left: 10px;">
										<a href=>제목1</a>

									</div>
								</td>
								<td class="size_12">2019.10.30</td>
								<td class=" size_12">50</td>
							</tr>
							<tr>
								<td>66</td>
								<!-- <td><img src="/data/enterdev_data/templet/bienbien/images/common/bbs_notice.gif" alt="공지"></td> -->
								<td>[자유]</td>
								<td class="subject">
									<div class="nobr" style="margin-left: 10px;">
										<a href=''>제목2</a>

									</div>
								</td>
								<td class="size_12">2019.10.04</td>
								<td class=" size_12">66</td>
							</tr>
							<tr>
								<td>65</td>
								<td>[후기]</td>
								<td class="subject">
									<div class="nobr" style="margin-left: 10px;">
										<a href=''>제목3</a>

									</div>
								</td>
								<td class="size_12">2019.08.30</td>
								<td class=" size_12">248</td>
							</tr>




						</tbody>
					</table>
				</form>
			</div>
			<!--게시판 [E]-->



			<!--페이징 [S]-->
			<div class="paging">
				<div style='padding-bottom: 1px;'>
					<button class='first-button disabled'></button>
					<button class='prev-button disabled'></button>
					<em class="on">1</em><a href="javascript:void(0);"
						onclick="location.href='?nset=1&page=2&board=notice';">2</a><a
						href="javascript:void(0);"
						onclick="location.href='?nset=1&page=3&board=notice';">3</a><a
						href="javascript:void(0);"
						onclick="location.href='?nset=1&page=4&board=notice';">4</a><a
						href="javascript:void(0);"
						onclick="location.href='?nset=1&page=5&board=notice';">5</a>
					<button class='next-button disabled'></button>
					<button class='last-button'
						onclick='location.href=?board=notice&nset=0&page=5&board=notice'>
						<em class='hidden'></em>
					</button>
				</div>
			</div>
			<!--페이징 [E]-->
		</div>

	<form name="pass_frm" method='post'>
			<input type='hidden' name=bbs_ix value=''> 
			<input type='hidden' name=board value=''> 
			<input type='hidden' name=bbs_pass value=''>
			<input type='hidden' name=act value='pass_check_for_read'>
		</form>
		
		<!-- 메인 컨텐츠 [E] -->
	</div>
	</section>
	</article>
	<footer id="footer">
	


		</div>

		</div>




		<script src='/data/enterdev_data/templet/bienbien/js/join_input.js'></script>
		<script>



</script>


		<%@include file="../common/footer.jsp"%>
</body>

</html>