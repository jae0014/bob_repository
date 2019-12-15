<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" 
	import="java.util.ArrayList,attachment.model.vo.*, recipe.model.vo.*"%>
	
<% 
	ArrayList<Attachment> fList = (ArrayList<Attachment>) request.getAttribute("fList"); 
	ArrayList<Recipe> rList = (ArrayList<Recipe>) request.getAttribute("rList");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Insert title here</title>
<style>


div {
	/* border: 1px solid red; */
}

.recipeWrap {
	width: 100%;
	/* margin: auto; */
	text-align: center;
	display: inline-block;
}

.contentsMain {
	margin-top: 4%;
	margin-bottom: 3%;
	margin-left: 10%;
	/* position: relative; */
	margin: auto;
	width: 90%;
/* 	border: 1px solid green; */
	box-sizing: border-box;
}

.mold {
	/* width: 20%; */
	/* 	margin-left: 2%; */
	/* margin: 35px */;
	display:inline-block;
	float:left;
	
}

.thumbnail {
	width: 100%;
	height: 200px;
}

.likenum, .qnanum {
	width: 50px;
	height: 30px;
}

.content {
	
}

.name {
	width: 100%;
	height: 30%;
}

.rWriter {
	width: 100%;
	height: 70%;
}

.card-body {
	border-radius: 5px;
}

.yy {
	font-size: 15px;
	text-align: right;
	
}

.views {
	display: inline-block;
}

.recipe {
	display: inline-block;
}

.rName {
	height: 100%;
	width: 100%;
	display: inline-block;
	font-size: 25px;
	font-weight: bold;
	text-align: center;
}

.recipe {
	box-sizing: border-box;
	height: 100%;
	width: 20%;
	display: inline-block;
	float: right;
	font-size: 10px;
	margin-top: 20px;
}

.dropdown {
	float: left;
}

.btn {
	background-color: white;
	border: rgb(257, 157, 157) solid 1px;
	color: rgb(257, 157, 157);
}

.rowrow {
	width: 100%;
	box-sizing: border-box;
	margin-bottom: 1.5rem;
}


.rName a:link, .rName a:visited, .rWirter a:link, .rWriter a:visited {
	color: black;
	text-decoration: none;
}

.rName a:hover, .rWirter a:hover{
	color: rgb(212, 106, 106);
	text-decoration: underline;
}

.at{
width:100%;
height:100%;
}

 #dropdownMenuButton {
	background-color: white;
	border: rgb(257, 157, 157) solid 1px;
	color: rgb(257, 157, 157);
} 

.dropdown{
float:right;
}


.like #heart:hover{
cursor:pointer;
}
}
</style>
</head>
<body>
	<%@ include file="../common/bootstrap.jsp"%>
	<%@ include file="../common/menubar.jsp"%>

	<main role="main"> <br>
	<br>
	<div class="contentsMain">

		<div class="dropdown">
			<button class="btn btn-secondary dropdown-toggle" type="button"
				id="dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false">정렬 기준</button>
			<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="#">최신순</a> <a class="dropdown-item"
					href="#">좋아요순</a> <a class="dropdown-item" href="#">댓글순</a>
			</div>
		</div>
		<br> <br> <br>
 


		

		
		<div class="recipeWrap" >
		<!-- 리스트 전체 테두리 -->
			<% for(int i = 0; i<rList.size(); i++) { %>
					<% if(i%4 == 0) {%>
						<div class="row"> <!-- 한 행(레시피 4개씩 들어갈 예정) -->
					<% } %>
					
				<div class="mold col-3" > <!-- 레시피 하나 -->
					
					<div class="card mb-3 shadow-sm">
					
						<div class="thumbnail" style="height:250px">
							
							<% for(Attachment at : fList){ %>
								<% if(rList.get(i).getrId().equals(at.getBprcId())) {%>
									<a href="<%=request.getContextPath()%>/detail.re?rId=<%=rList.get(i).getrId()%>"><img src= "<%=contextPath%>/resources/recipe/<%=at.getfName() %>" style="width:100%; height:100%"></a>
								<% } %>
							<%} %><!-- at for문 끝 -->
						</div>
						<div class="card-body">

							<div class="d-flex justify-content-between align-items-center" >

								<div class="btn-group">
								

									<div class="like" id="like">
										<img id="heart" onclick="change()" width=20px, height=20px,
											src="<%=request.getContextPath()%>/resources/images/like.png">
											<%-- <input type="hidden" name="rLike<%=i%>" value="<%=rList.get(i).getrId()%>"> --%>
									</div>
									<div class="likenum" id="likenum1"><%=rList.get(i).getrLike() %></div>
									<div class="qna" id="qna1">
										<%-- <img width=20px, height=20px,
											src="<%=request.getContextPath()%>/resources/images/speech-bubble.png"> --%>
									</div>
									<div class="qnanum" id="qnanum1"></div>
								</div>
								<div class="yy">

									<div class="date" id="date1"><%= rList.get(i).getrDate() %></div>


									<div class="views" id="views">조회수 :</div>
									<div class="views viewsnum" id="views1"><%=rList.get(i).getrCount() %></div>

								</div>

							</div>
							<hr>
							
						<div class="main">
							<div class="rName">
								<a href=""><%=rList.get(i).getrName() %></a>
							</div>


							<div class="rWriter" >
								<a href=""><%=rList.get(i).getmNo() %></a>
							</div>
						

						</div> 
						
						</div><%-- card-body 끝 --%>

					</div>
				</div> <%--mold 끝 --%>
			
			
				<%if(i%4 == 3) { %>
					</div>
				<% } %>
			<% } %> <!-- 레시피 불러오는 for문 끝 -->

		</div>
		
		<script>
		
	<%-- 	function change(){
			var hh = document.getElementById("heart");
			
			hh.src="<%=request.getContextPath()%>/resources/images/fulllike.png"
		} --%>
		
		
		state = 0;
		function change(){
		
			
			
			if(state==0){
				state = 1;
				document.getElementById("heart").src="<%=request.getContextPath()%>/resources/images/fulllike.png"
				console.log(state);
			}
			else {
				state = 0;
				document.getElementById("heart").src="<%=request.getContextPath()%>/resources/images/like.png"
			}
		}
		 
		
		</script>




		<%-- 페이징 --%>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item disabled"><a class="page-link" href="#"
					tabindex="-1" aria-disabled="true">Previous</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#">4</a></li>
				<li class="page-item"><a class="page-link" href="#">5</a></li>
				<li class="page-item"><a class="page-link" href="#">Next</a></li>
			</ul>
		</nav>

	</div>

	</main>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>

	<%@include file="../common/footer.jsp"%>
</body>
</html>