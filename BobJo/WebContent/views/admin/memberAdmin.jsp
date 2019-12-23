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
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
   * {
	box-sizing: border-box;
}

/*/////////// 사이드메뉴 */
.notice_link {
	background: #f9f9f9;
	color: rgb(170, 57, 57);
}

.outer_m {
	display: block;
	width: 1050px;
	height: 800px;
	/* border: 1px solid red; */
	margin: auto;
}

/*사이드메뉴 영역*/
.content1 {
	width: 25%;
	height: 100%;
	display: inline-block;
	float: left;
	/* border: 1px solid green; */
}
   
    .memberAdmin_txt{
        font-size:20px;
        font-weight:700;
    }
    
.admin_side_div {
	border: 1px solid black;
}

.side_txt_div1 {
	padding: 15px 5px 5px 5px;
	font-size: 20px;
	font-weight: 700;
	text-align: center;
}


.board-postnav-side {
	width: 90%;
	height: 350px;
	margin: auto;
	background-color: white;
	border: 1px solid lightgrey;
	font-size: 14px;
}

.board-postnav-side>ul li {
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

.board-postnav-side>ul>li:hover {
	background-color: lightgrey;
}

    </style>
</head>
<body>
<%@ include file="../common/bootstrap.jsp" %>
<%@ include file="../common/menubar.jsp" %>

		<!-- 전체영억 -->
	<div class="outer_m">
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

						<%if (loginUser != null && loginUser.getmId().equals("admin")) {%>

						<li class="nav-item border border-light"><a class="nav-link"
							href="<%=request.getContextPath() %>/memeberList.admin">회원관리</a></li>
						<li class="nav-item border border-light"><a class="nav-link"
							href="#">매출관리</a></li>
						<%}%>
						<li class="nav-item border border-light question_link"
							onclick="goQnaList()"><a class="nav-link question_a">1:1문의
								내역</a></li>
					</ul>
				</div>
			</div>
		</div>

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


		<!-- content2 -->
<div class="content2">

<div class="board-post">
				<div class="sub_text_area" style="diplay:inline-block; width: 100%;/*  border:1px solid black; */">				
				<p style="font-size: 16px; font-weight: 900; text-align: left; line-height:'2';/*  border:1px solid black;  */margin-top:20px; margin-bottom:20px;">
				공지사항</p>
				</div>
				<!-- 게시판 헤더 -->
				<div class=" board-post-list table-responsive"  style="/* border: 1px solid purple;  */margin:0px;">
					
					<table class="table table-sm" border="1">
						<thead>
							<tr>
								<th class="thNum" scope="col">회원번호</th>
								<th class="thTitle" scope="col">아이디</th>
								<th class="thWriter" scope="col">회원등급</th>
								<th class="thDate" scope="nDateCols">마지막접속</th>
							</tr>
						</thead>
						<!-- 게시판이 있다면  -->
						<%if (list != null) {%>
						<tbody>
							<%for (int i = 0; i < list.size(); i++) {
								newDateFormat = simple.format(list.get(i).getnDate());
								int num = list.size() - i;
							%>
							<tr class="postRow">
								<td class="tdNum" id="<%=list.get(i).getnId()%>">공지</td>
								<td class="tdTitle"><%=list.get(i).getnTitle()%></td>
								<td class="tdmNo">ChefJ</td>
								<%-- <td class="tdmNo"><%=list.get(i).getmNo()%></td> --%>
								<td class="tdDate"><%=newDateFormat%></td>
								<td class="tdCount"><%=list.get(i).getnCount()%></td>
							</tr>
						</tbody>
						<%}
						}else {%>
						<!-- 게시판이 없다면 -->
						<tbody>
							<tr>
								<td colspan="5">
									<p>게시글 없음</p>
								</td>
							</tr>
						</tbody>
						<%}%>
						<tfoot>
							<tr>
								<td colspan="5">
									<!-- 로그인 했을때 글쓰기버튼 활성화 -->
									<%if (loginUser != null) { %>
									<button class="btn" type="button"
										style="float: right; background-color: rgb(170, 57, 57); color: white"
										onclick="location.href = '<%=request.getContextPath()%>/views/notice/noticeInsert.jsp'">글쓰기</button>
									<%}%>
								</td>
							</tr>
						</tfoot>
					</table>
					
				</div>
				<div class="pagingDiv">
					<!-- 페이징구역 -->
					<nav aria-label="..." style="display: inline-block; margin-top:10px; margin-bottom:10px;" class="paging_nav">
						<ul class="pagination pagination-sm  justify-content-center" style="margin: 0;">

							<!-- 이전 페이지로 (<) -->
							<%if (currentPage == 1) {%>
							<li class="page-item disabled"><a class="page-link"
								href="#" tabindex="-1">Previous</a></li>
							<%} else {%>
							<li class="page-item"><a class="page-link"
								href='<%=request.getContextPath()%>/list.no?currentPage=<%=currentPage - 5%>'
								tabindex="-1">Previous</a></li>
							<%}%>
							<!-- 이전 페이지로  끝 -->
	
							<!--  페이지 목록 -->
							<%for (int p = startPage; p <= endPage; p++) {%>
								<%if (p == currentPage) {%>
								<li class="page-item active">
									<a class="page-link pageList"
									href='<%=request.getContextPath()%>/list.no?currentPage=<%=p%>'><%=p%></a>
								</li>
								<%} else {%>
								<li class="page-item ">
									<a class="page-link pageList"
									href='<%=request.getContextPath()%>/list.no?currentPage=<%=p%>'><%=p%></a>
								</li>
								<%}
							}%>
							<!--  페이지 목록 끝 -->
	
							<!-- 다음 페이지로(>) -->
							<%if (endPage == maxPage) {%>
								<li class="page-item disabled">
									<a class="page-link" href="#" tabindex="-1">Next</a>
								</li>
							<%} else {%>
								<li class="page-item">
									<a class="page-link" href='<%=request.getContextPath()%>/list.no?currentPage=<%=currentPage + 5%>'>Next</a>
								</li>
							<%}%>
							<!-- 다음페이지 끝 -->
						</ul>
					</nav>
					</div><!-- 페이징구역 끝-->
			</div>











<p class="memberAdmin_txt">회원관리</p>
    <div class="outer">
        <div class="sorting">
            <!-- 정렬 기준 추가-->
            <div class="dropdown sort-by">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    정렬 기준
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button">회원번호 순</button>
                    <button class="dropdown-item" type="button">마지막접속일 순</button>
                    <button class="dropdown-item" type="button">회원등급 순</button>
                </div>
            </div>
        </div>
        <br>
        <div class="table_div">
                <table class="table">
                        <thead class="thead-light">
                          <tr>
                            <th scope="col">회원번호</th>
                            <th scope="col">아이디</th>
                            <th scope="col">가입일</th>
                            <th scope="col">회원등급</th>
                            <th scope="col">마지막 접속일</th>
                          </tr>
                        </thead>
                      </table>
        </div>
    </div>
<!-- paging -->
<div class="paging">
        <nav aria-label="Page navigation example" class="page-nav">
            <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                        <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="#">1</a></li>
                <li class="page-item"><a class="page-link" href="#">2</a></li>
                <li class="page-item"><a class="page-link" href="#">3</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                        <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
            </ul>
        </nav>
    </div>
    </div><!-- content2 -->
    
    </div><!-- outer_m -->
<%@ include file="../common/footer.jsp" %>
</body>
</html>