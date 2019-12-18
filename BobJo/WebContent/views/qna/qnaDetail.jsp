<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.ArrayList, qna.model.vo.Qna, reply.model.vo.*, java.text.SimpleDateFormat"%>
<%
  Qna q = (Qna)request.getAttribute("qna");
  ArrayList<String>  alist= q.getaContent();
  ArrayList<String>	dlist=  q.getaDate();
  int aIndex = alist.size(); 
  
  Member userID = (Member)session.getAttribute("loginUser");

  //문의 날짜
  SimpleDateFormat simple = new SimpleDateFormat("yyyy-MM-dd");
  String newDateFormat = simple.format(q.getqDate());
  String writer= "Na";
  String id = "noIDNA";
  if(userID != null){
   writer = q.getmId();// 이거는 qna에 저장된 아이디
   id = userID.getmId(); //이거는 지금 로그인세션 아이디
  } 
  	
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
.board-post {
	width: 100%;
	padding: 0px;
	margin: 0px;
	height: 500px;
	text-align: center;
	padding-left: 25%;
	padding-right: 25%
}

.board-post-list {
	width: 100%;
	float: left;
	margin-top: 10px;
}

.board-postnav-side {
	width: 20%;
	height: 350px;
	float: left;
	margin: 10px;
	background-color: rgb(255, 243, 239);
	border: 1px solid black;
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
	padding-left: 10%;
	padding-right: 10%;
}

.commentBox {
	width: 100%;
	float: left;
}

.th {
	background-color: lightblue;
}

tbody>tr:nth-child(2) {
	box-shadow: 0 0 0 1px lightgrey;
	border-radius: 3px;
}

tfoot>tr {
	box-shadow: 0 0 0 1px lightgrey;
	border-radius: 3px;
}

.commentShow {
	display: none !important;
}

.profilePic {
	width: 150px;
	height: 150px;
}
</style>
<body>
	<%@ include file="../../views/common/bootstrap.jsp"%>
	<%@ include file="../common/menubar.jsp"%>
	<div class="board-post">
<%@ include file="../sidemenubar/sidemenu.jsp"%>


		<!-- 게시판 & 네비게이션 -->
		<div style="width: 100%;">



			<!-- 게시판 글 -->
			<div class=" board-post-list" style="height: 350px;">
				<table class="table table-sm">

					<tbody border=1>
						<tr>
							<th colspan="4" class="th">내용</th>
						</tr>
						<tr>
							<td colspan="4" style="height: 500px;"><%= q.getqContent()%>
							</td>
						</tr>
					</tbody>

					<!-- 댓글 -->
					<tfoot>
						<tr>
							<td style="text-align: none !important"><img
								class="profilePic"
								src="<%= request.getContextPath()%>/resources/icon/baseline_account_box_black_48dp.png"
								alt="..."></td>
						</tr>
						<tr>
							<td colspan="4">
								<button class="btn" type="button"
									style="float: right; background-color: rgb(170, 57, 57); color: white"
									id="ListMenu">목록으로</button>
									<%// 사용자가 로그인시
									if (userID != null){ %>
										<button class="btn" type="button" style="float: right; background-color: rgb(170, 57, 57); color: white"
									id="CreateNew">글쓰기</button>
									<%}%>
									<% 
                                    // 로그인유저 == 글작성자일 때 
                                    if(writer.equals(id)){
                                    %>
									<button class="btn" type="button" style="float: right; background-color: rgb(170, 57, 57); color: white"
									id="EditList">수정하기</button> <%}%>
							</td>
						</tr>
						<tr>
							<td colspan="4">
								<div class="commentBox">
									<ul class="list-unstyled">

										<%
                                    if(alist !=null){
                                    for (int i = 0; i < aIndex; i++) {
                                    	
                                    	%>
										<%if(i <5){ %>
										<li class="media">
											<%} else{%>
										
										<li class="media commentShow">
											<%}%> <img class="mr-3" src="" alt="no image">

											<div class="media-header">
												<h5 class="mt-0 mb-1"><%=q.getmId()%></h5>
												<%=dlist.get(i)%>
											</div>

											<div class="media-body">

												<%=alist.get(i)%>
											</div>
										</li>

										<% } %>
										<button class="btn" type="button"
											style="background-color: rgb(170, 57, 57); color: white"
											id="moreID">더보기</button>
										<% }else {%>

										<%}%>

									</ul>
								</div>
							</td>

						</tr>
					</tfoot>
				</table>



			</div>


		</div>
	</div>




	<script>
  		
  		$(function(){	
  		// 더보기 jquery
  			$("#moreID").click(function(){
  				
  				if($(".commentShow").length == 0)
  					{	
  						$("#moreID").remove();
  					}
  				for( i = 0; i < 5;i++){
  					
  					
  					$(".commentShow").first().removeClass("commentShow");	
  					if($(".commentShow").length == 0)
  					{	
  						$("#moreID").remove();
  						break;
  					}
  				}
  			})	
  			
  			$("#EditList").click(function(){
  				location.href = "<%=request.getContextPath()%>/updateForm.qna?qId="+<%=q.getqId()%>;
  			})
  			$("#ListMenu").click(function(){
  				location.href = "<%=request.getContextPath()%>/";
  			})
  			$("#CreateNew").click(function(){
  				location.href = "<%=request.getContextPath()%>/";
  			})
  		})
  		
  	</script>


</body>
</html>