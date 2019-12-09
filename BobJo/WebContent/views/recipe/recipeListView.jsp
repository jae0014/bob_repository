<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">



<title>Insert title here</title>
<style>


div{
border:1px solid red;
}
.row {
	width: 125%;
	margin: auto;
	text-align: center;
}

.container {
	margin-top: 4%;
	margin-bottom: 3%;
	margin-left: 10%;
	position: relative;
	height: 100%;
}

.mold {

	width: 20%;
	margin-left: 2%;
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
	width: 100%;
	height: 30%;
	box-sizing: border-box;
	display: inline-block;
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

.recipe {
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

.dropdown {
	float: left;
}

.btn {
	background-color: white;
	border: rgb(257, 157, 157) solid 1px;
	color: rgb(257, 157, 157);
}
}
</style>
</head>
<body>
	<%@ include file="../common/bootstrap.jsp" %>
	<%@ include file="../common/menubar.jsp"%>

	<main role="main">



	<div class="container">

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



		<div class="row">
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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

			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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

			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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
			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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

			<div class="mold">
				<div class="card mb-3 shadow-sm">
					<div class="thumbnail" id="thumbnail1">
						<a href=""><img width=100%, height=100%,
							src="../../resources/images/갈비찜.jpg"></a>
					</div>
					<div class="card-body">

						<div class="d-flex justify-content-between align-items-center">
							<div class="btn-group">

								<div class="like" id="like1">
									<img width=20px, height=20px,
										src="../../resources/images/like.png">
								</div>
								<div class="likenum" id="likenum1">&nbsp;521</div>
								<div class="qna" id="qna1">
									<img width=20px, height=20px,
										src="../../resources/images/speech-bubble.png">
								</div>
								<div class="qnanum" id="qnanum1">&nbsp;860</div>
							</div>
							<div class="yy">

								<div class="date" id="date1">2019-12-02</div>


								<div class="views views" id="views">조회수 :</div>
								<div class="views viewsnum" id="views1">8555</div>

							</div>



						</div>
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




	</main>

	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
		
		<%@include file="../common/footer.jsp" %>
</body>
</html>