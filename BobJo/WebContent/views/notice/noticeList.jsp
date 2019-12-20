<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, notice.model.vo.Notice, common.vo.* ,java.text.SimpleDateFormat"%>


<%
	ArrayList<Notice> list = (ArrayList<Notice>) request.getAttribute("list");

	PageInfo pi = (PageInfo) request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();

	SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
	String newDateFormat = "";
%>
<!DOCTYPE html>
<html>


<style>
* {
	box-sizing:border-box;
}

.notice_link {
	background: #f9f9f9;
	color: rgb(170, 57, 57);
}

.outer_m {
	display: block;
	width: 1050px;
	height: 800px;
	border: 1px solid red;
	margin: auto;
	/* magin-left:300px; */
}

/*사이드메뉴 영역*/
.content1 {
	width: 25%;
	height: 100%;
	display: inline-block;
	float: left;
	border: 1px solid green;;
}

/*본문영역*/
.content2 {
	width: 75%;
	height: 100%;
	display: inline-block;
	float: left;
	border: 1px solid black;
}

.board-postnav-side {
	width: 90%;
	height: 350px;
	margin: auto;
	background-color: white;
	border: 1px solid lightgrey;
	font-size: 14px;
	
}
.board-postnav-side>ul li{
	height: 50px;
	border-bottom: 1px solid lightgrey !important;
	line-height: 2;
}
.board-postnav-side>ul>li>a {
	color: black;
}

.board-postnav-side>ul>li>a:hover {
	color: rgb(170, 57, 57);
}

.board-postnav-side>ul>li:hover {
	background-color: #f9f9f9 !important;
	color: rgb(170, 57, 57);
}

.board-post {
	width: 100%;
	padding: 0px;
	margin: 0px;
	height: 500px;
	text-align: center;
	padding-right: 5%;
	padding-left: 5%;
}

.board-post-list {
	float: left;
	margin-top: 10px;
}

.board-postnav-side>ul>li>a {
	color: black;
}

.board-postnav-side>ul>li>a:hover {
	color: red;
}

.board-postnav-side>ul>li:hover {
	background-color: lightgrey;
}

.mycolSize {
	width: 70%;
}

.mycolSize2 {
	width: 10%;
}

.titles {
	width: 100px;
}

.boardTItle {
	display: inline-block;
	font-size: 1.5em;
}

.text-left {
	text-align: left;
	width: 20%;
}

.margin-padding-zero {
	margin: 0;
	padding: 0;
}

.postRow:hover {
	background-color: rgb(255, 243, 239);
}

.qDateCols {
	widht: 120px !important;
}

.admin_side_div {
	border: 1px solid black;
}
.side_txt_div1{
padding: 15px 5px 5px 5px;
font-size: 20px;
font-weight: 700;
text-align:center;

}
.table-sm th{
	background: #f9f9f9;
	border-bottom: 1px solid rgb(170, 57, 57) !important;
border-left:none;
border-right:none;
}
.table-sm td{
border-left:none;
border-right:none;
font-size: 15px;
}
.table-sm{
border-top: 2px solid rgb(170, 57, 57);
border-bottom: 1px solid rgb(170, 57, 57);
border-left:none;
border-right:none;

}
.page-link{
color: rgb(170, 57, 57) !important;
}
.page-link:toggle{
background: rgb(170, 57, 57);
}
.page-item.active .page-link{
background: rgb(170, 57, 57) !important;
color:white !important;
border:1px solid rgb(170, 57, 57) !important;
}
.side_menu_div2{
border: 1px solid blue;
}
</style>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../common/bootstrap.jsp"%>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>


	<div class="outer_m"><!-- 전체영억 -->
		<!-- 사이드메뉴 영역-->
		<div class="content1">
		<% if(loginUser == null){ %>
			<div class="side_txt_div1">
				<p class="side_txt">고객센터</p>
			</div>
		<%} else{%>
			<% if(loginUser.getmId().equals("admin")){ %>
			<div class="side_txt_div1">
				<p class="side_txt">관리센터</p>
			</div>
			<%}else{ %>
			<div class="side_txt_div1">
				<p class="side_txt">고객센터</p>
			</div>
			<%} %>
		<%} %>		
		
			<div class="side_menu_div2">
			<div class="board-postnav-side">
				<ul class="nav flex-column " id="sidebar">
					<li class="nav-item  border border-light notice_link"
						onclick="goNoticeList()"><a class="nav-link active">공지사항</a>
					</li>

					<%
						if (loginUser != null && loginUser.getmId().equals("admin")) {
					%>

					<li class="nav-item border border-light"><a class="nav-link"
						href="#">회원관리</a></li>
					<li class="nav-item border border-light"><a class="nav-link"
						href="#">매출관리</a></li>
					<%
						}
					%>
					<li class="nav-item border border-light question_link"
						onclick="goQnaList()"><a class="nav-link question_a">1:1문의
							내역</a></li>
				</ul>
			</div>
			</div>
		</div>
		<!-- content2 -->

		<script>
	function goQnaList(){
		<%if(loginUser!= null){%>
			location.href="<%=request.getContextPath()%>/list.qna";
			
		<%}else{%>
			alert("로그인하셔야 본 서비스를 이용할 수 있습니다.");
			location.href="<%=request.getContextPath()%>/views/member/memberLoginForm.jsp";
		<%}%>
	};
	
	function goNoticeList(){
			location.href="<%=request.getContextPath()%>/list.no";
	};
</script>



		<!-- 게시판 영역 -->
		<div class="content2">

			<div class="board-post">




				<!-- 게시판 & 네비게이션 -->
				<div style="width: 100%;">

					<!-- 게시판이 있다면  -->
					<%
						if (list != null) {
					%>
					<!-- 네비게이션 -->



					<!-- 게시판 글 -->
					<div class=" board-post-list table-responsive">
						<p style="font-size:16px; font-weight: 900; text-align:left;">공지사항</p>
						<table class="table table-sm" border="1">
							<thead>
								<tr>
									<th scope="col" style="width: 7%;">번호</th>
									<th class="mycolSize" scope="col">제목</th>
									<th scope="col">작성자</th>
									<th scope="qDateCols">작성일</th>
								</tr>
							</thead>
							<tbody>
								<%
									for (int i = 0; i < list.size(); i++) {
											newDateFormat = simple.format(list.get(i).getnDate());
											int num = list.size() - i;
								%>
								<tr class="postRow">
									<td style="width: 7%;" id="<%=list.get(i).getnId()%>">공지</td>
									<td class="mycolSize"><%=list.get(i).getnTitle()%></td>
									<td class="mycolSize2"><%=list.get(i).getmNo()%></td>
									<td class="mycolSize3"><%=newDateFormat%></td>
								</tr>
								<%
									}
								%>
							</tbody>
							<tfoot>
								<tr>
									<td colspan="4">

										<nav aria-label="..." style="display: inline-block;">

											<ul class="pagination pagination-sm  justify-content-center"
												style="margin: 0;">



												<!-- 이전 페이지로 (<) -->
												<%
													if (currentPage == 1) {
												%>
												<li class="page-item disabled"><a class="page-link"
													href="#" tabindex="-1">Previous</a></li>
												<%
													} else {
												%>
												<li class="page-item"><a class="page-link"
													href='<%=request.getContextPath()%>/list.no?currentPage=<%=currentPage - 5%>'
													tabindex="-1">Previous</a></li>

												<%
													}
												%>
												<!-- 이전 페이지로  끝 -->




												<!--  페이지 목록 -->
												<%
													for (int p = startPage; p <= endPage; p++) {
												%>
												<%
													if (p == currentPage) {
												%>
												<li class="page-item active"><a
													class="page-link pageList"
													href='<%=request.getContextPath()%>/list.no?currentPage=<%=p%>'><%=p%></a>
												</li>
												<%
													} else {
												%>
												<li class="page-item "><a class="page-link pageList"
													href='<%=request.getContextPath()%>/list.no?currentPage=<%=p%>'><%=p%></a>
												</li>
												<%
													}
												%>
												<%
													}
												%>
												<!--  페이지 목록 끝 -->




												<!-- 다음 페이지로(>) -->
												<%
													if (endPage == maxPage) {
												%>
												<li class="page-item disabled"><a class="page-link "
													href="#" tabindex="-1">Next</a></li>
												<%
													} else {
												%>
												<li class="page-item"><a class="page-link "
													href='<%=request.getContextPath()%>/list.no?currentPage=<%=currentPage + 5%>'>Next</a>
												</li>

												<%
													}
												%>
												<!-- 다음페이지 끝 -->

											</ul>
										</nav> <!-- 로그인 했을때 글쓰기버튼 활성화 --> <%
 	if (loginUser != null) {
 %>
										<button class="btn" type="button"
											style="float: right; background-color: rgb(170, 57, 57); color: white"
											onclick="location.href = '<%=request.getContextPath()%>/views/notice/noticeInsert.jsp'">글쓰기</button>
										<%
											}
										%>
									</td>

								</tr>
							</tfoot>
						</table>
					</div>
					<!-- 게시판이 없다면  -->
					<%
						} else {
					%>
					<p>게시글 없음</p>
					<%
						}
					%>
				</div>

			</div>
		</div>
		<!-- content2 -->
	</div>
	<!-- outer -->
	<script>
     	
    	  $(function(){
    		$(".pageList").click(function(){
    			var page = $(this).text();
             
    		})	
    		
    		 $(".postRow").click(function(){
                   $(this).each(function() {
                         var index = $(this).children().first().attr('id'); 
                         console.log(index);
                        goPost(index)
                    });
    		})	
    		
    	})
    	function goPost(index){
			
  		  location.href="<%=request.getContextPath()%>/detail.no?nId="+index;
     } </script>
</body>
</html>