<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>
div {/*
	border: 1px solid red;
	*/
}

.whole {
	width: 80%;
	height: 500px;
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
	border: 1px solid grey;
}

.mold {
	width: 20%;
	margin-left: 2%;
	display: inline-block;
}

.thumbnail {
	width: 100%;
	height: 200px;
}

.rName {
	margin: auto;
	font-size: 20px;
}

.name {
	width: 100%;
	height: 30%;
}

.writer {
	width: 100%;
	height: 70%;
}

.card-body {
	border-radius: 5px;
}

.yy {
	font-size: 5px;
	text-align: right;
}

.views {
	display: inline-block;
}

.name {
	height: 100%;
	width: 60%;
	display: inline-block;
	font-size: 25px;
	font-weight: bold;
	text-align: right;
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

.rWriter {
	color: grey;
	font-size: 10px;
}

.d-flex {
	font-size: 20px;
}
</style>
<body>

	<%@ include file="../common/menubar.jsp"%>
	<%@ include file="../common/bootstrap.jsp"%>
	<br>
	<br>
	<%@ include file="myPage.jsp"%>



	<div class="whole">
		<div class="tab1">내가 받은 댓글</div>
		<div class="tab2">내가 쓴 댓글</div>
		<div class="content">

			<br>
			<br>
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/스팸.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<a href="">맛있는 스팸전</a>


							<%--<div class="rName" id="rName"><a href="">맛있는 스팸전</a></div> --%>


							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>




						</div>
						<div class="rWriter">by 신사임당</div>
						<hr>


						<div class="main">
							<div class="name" id="name1">
								<a href="">갈비찜</a>
							</div>


							<div class="recipe writer" id="writer1">
								<a href="">홍길동</a>
							</div>
							<div class="recipe blank"></div>


						</div>

					</div>
				</div>
			</div>



		</div>
	</div>
	<br><br>
	
	<%@include file="../common/footer.jsp" %>
</body>
</html>