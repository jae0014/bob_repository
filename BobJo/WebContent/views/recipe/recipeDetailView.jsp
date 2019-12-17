<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="recipe.model.vo.*" import="attachment.model.vo.*, recipe.model.vo.*, java.util.ArrayList"%>
<%
	ArrayList<Recipe> rlist = (ArrayList<Recipe>)request.getAttribute("rlist");

	Attachment thumbnail = (Attachment)request.getAttribute("thumbnail");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
div{
/* 	border: 1px solid red; */
}



/* .rImage {
	margin-left: 30%;
	width: 500px;
	height: 300px;
} */

.userImage {
	border-radius: 50px;
	width: 100px;
	height: 100px;
	margin-left: 46%;
	margin-top: -5%;
}

.hole {
	float: left;
	margin-left: 34%;
}

.11 {
	float: left;
}



.test3 {
	text-align: right;
}

.introduce {
	width: 100%;
	height: 20%;
	vertical-align:middle;
	text-align:center;
	font-size:20px;
}

.ex {
	display: inline-block;
}

.ex1 {
	margin-left: 34%;
}

.ex2 {
	margin-left: 10%;
}

.ex3 {
	margin-left: 10%;
}

.img {
	width: 70px;
	height: 50px;
}

.exe {
	width: 70px;
	height: 50px;
	text-align: center;
}

.div3 {
	width: 100%;
	height: 40%;
	margin: auto;
}

.second {
	width: 80%;
	margin: auto;
}

.third {
	display: inline-block;
	width: 200px;
	height: 40px;
}

.ep {
	color: grey;
}
/* 
.recipe {
	width: 50%;
	height: 200px;
	display: inline-block;
	float: left;
} */

/* .step {
	display: inline-block;
	width: 80%;
} */

.recipe {
	display: inline-block;
	width: 350px;
	height: 200px;
}

.num {
	width: 50px;
	height: 50px;
	font-size: 30px;
	color: green;
}

.pic {
	width: 100px;
	height: 100px;
	border-radius: 50px;
}

.dddd {
	display: inline-block;
	width: 200px;
	height: 200px;
}

.aaaa {
	dislay: inline-block;
	width: 100%;
	height: 50%;
}

.dog {
	width: 150px;
	height: 150px;
	border-radius: 100px;
}

.ssss {
	display: inline-block;
	width: 200px;
	height: 100px;
}

.pp {
	font-weight: bold;
}

.card {
	display: inline-block;
}

.card-img {
	width: 100%;
	height: 100%;
}

.reply {
	display: inline-block;
}

.rep {
	font-size: 20px;
	font-weight: bold;
}

.picture {
	display: inline-block;
}

.plus {
	width: 100px;
	height: 120px;
	float: left;
}

#pluspic {
	width: 100%;
	height: 100%;
	float: left;
}


.card {
display:inline-block;
float:left;
}


.rPic{
width:100%;
height:100%;
}


.stepImg{
width:100%;
height:100%;
}


.rStep{
height:300px;
display:inline-block;



}


.stepNo{
font-size:2em;
color:red;
vertical-align:top;
text-align:right;
}


.stepSeq{
vertical-align:top;
}

td,tr,th{
/* border:1px solid red; */
}
</style>

<script>
	$("#imgfile").change(function() {
		if (this.files && this.files[0]) {
			var reader = new FileReader();
			reader.readAsDataURL(this.files[0]);

			reader.onload = function() {
				console.log(reader.result);
				$("#imgArea").html("<img src=" + reader.result + ">");
			}

		}
	});
</script>

</head>
<body>

	<%@include file="../common/menubar.jsp" %>
	<%@include file="../common/bootstrap.jsp" %>
	<br>
	
	<div class="wholewhole" style="width:80%; margin:auto;">
	<div class="wraps" style="width:100%; height: 300px">
		<div class="thumbnail" style="width:40%; height:100%; margin:auto; border: 1px solid black;" >
			
				<img class="rPic" src="<%=request.getContextPath() %>/resources/images/강아지.jpg">
                </div>
		</div>
		<div class="user">
			<img class="userImage"src="<%=request.getContextPath() %>/resources/images/강아지.jpg">
		</div>
		<div class="rWriter" ><h3 align="center"><%=loginUser.getmName() %></h3></div>
		<div class="rName" ><h1 align="center"><%= rlist.get(0).getrName()%></h1></div>

		<hr>

		<div class="introduce" >
		
					<br><br>
				
					맛있는 갈비찜 같이 만들어 먹어요
				
					<br><br><br><hr>

			
		</div>

		<br>
		<div class="div2">

			<div class="complex">
				<div class="ex ex1">
					<img class="img img1" src="<%= request.getContextPath() %>/resources/images/인분.PNG">
					<div class="exe exe1">sss</div>
				</div>
				<div class="ex ex2">
					<img class="img img2" src="<%= request.getContextPath() %>/resources/images/소요시간.PNG">
					<div class="exe exe2">60분이내</div>
				</div>
				<div class="ex ex3">
					<img class="img img3" src="<%= request.getContextPath() %>/resources/images/난이도.PNG">
					<div class="exe exe3">누구나</div>
				</div>
			</div>

		</div>

		<hr>

		<div class="div3">
			<div class="first">
				<img src="<%= request.getContextPath() %>/resources/images/재료.PNG">
			</div>
			<br>
			<!-- <div class="second">
				<h6>[재료]</h6>
				<div class="third ing1">갈비</div>
				<div class="third ep ep1">500g</div>
				<div class="third ing2">양조간장</div>
				<div class="third ep ep2">1큰술</div>
				<div class="third ing3">다진마늘</div>
				<div class="third ep ep3">1큰술</div>
				<div class="third ing4">멸치액젓</div>
				<div class="third ep ep4">2큰술</div>
			</div>
 -->
 
 				<table style="margin: 30px">
 				<tr>
 					<th width="200">재료명</th>
 					<th width="200">수량/중량</th>
 				</tr>
 				<tr>
 					<td width="200">갈비</td>
 					<td>500g</td>
 				</tr>
 			
 				</table>
			<hr>
			<br>

		</div>
		<div class="div4">
			<div class="product">
				<h5 class="pp">연관상품</h5>
			</div>
			<div class="boots" style= "display:inline-block; box-sizing:border-box;">
				<div class="card" style="width: 18rem;">
					<img class="card-img" src="<%= request.getContextPath() %>/resources/images/갈빗살.jpg"
						alt="...">
					<div class="card-body">
						<h5 class="card-title">갈빗살</h5>
						<p class="card-text">1kg</p>
						<p class="card-price">60,000원</p>
						<a href="#" class="btn btn-primary">상세보기</a>
					</div>
				</div>
				


			</div>




		</div>

		<br>
		<hr>
		<br>
	<%-- 	<div class="div5" style="border:10px solid black;" >
			<div class="steps">
				<img src="<%= request.getContextPath() %>/resources/images/조리순서.PNG">
			</div>
			<br>
			<div class="stepstep" style="width:50%; border: 10px solid blue;">
				<!-- <div class="wrapwrap" style="border:10px solid purple;"> -->
				<div class="col-6 rstep"  style="height:250px; display:inline-block; float:left;">
					<div class="num">1</div>
					갈빗살을 반나절 이상 물에 담가 핏물을 제거해 줍니다.
				</div>
				<div class="col-6 rpic" style="height:250px; display:inline-block; float:left; border:10px solid blue;">
					<img class="stepImg"src="<%= request.getContextPath() %>/resources/images/step1.PNG">
				</div>
				<!-- </div> -->wrapwrap 한 줄 끝
				

			</div>

		</div> --%>
		
		<div class="div5" >
		<div class="steps">
		<img src="<%= request.getContextPath() %>/resources/images/조리순서.PNG">
		</div>
		<div class="mainStep" >
			<div class="wrapwrap" style="width:60%;">
				<%-- <div class="rStep col-2">1</div>
				<div class="rStep col-5">gdgdgadag</div>
				<div class="rStep col-5"><img class="rPic" src="<%= request.getContextPath() %>/resources/images/갈비찜.jpg"></div> --%>
				
				
				<table class="stepstep" style="margin-left:100px;">
				<tr>
					<td class="stepNo" width="100">1</td>
					<td class="stepSeq" width="300">요리순서1</td>
					<td width="300" height="200" ><img class="rPic" src="<%= request.getContextPath() %>/resources/images/갈비찜.jpg"></td>
					
				</tr>
				
				</table>
			</div>
		</div>
		</div>
	
		<hr>

		<div class="div6">
			<div class="wwww">
				<img src="<%= request.getContextPath() %>/resources/images/레시피작성자.PNG">
			</div>
			<br>
			<div class="writer" >
				<div class="dddd">
					<img class="dog" src="../../resources/images/강아지.jpg">
				</div>
				<div class="ssss">
					<div class="aaaa">
						<h2>홍길동</h2>
					</div>
					<div class="aaaa">
						<h5>집밥 짱~~</h5>
					</div>
				</div>

			</div>


		</div>
		<hr>
		<div class="div7">
			<div class="reply rep">댓글</div>
			<div class="reply add">0</div>
			<div class="text">
				<div class="picture plus">
					<input type="file" id="imgfile">
				</div>
				<div class="picture area">
					<textarea cols="120" rows="5" style="resize: none"></textarea>
				</div>
				<div class="picture button">
					<button id="picture btn">등록하기</button>
				</div>
			</div>


		</div>

		<hr>

	</div>



	<%@include file="../common/footer.jsp" %>
</body>
</html>