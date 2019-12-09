<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<style>

	div{
	/*border:1px solid red;*/
	}
	.wraps {
		background:rgb(212,106,106);
		width:80%;
		height:50px;
		border-radius:10px;
		margin:auto;
	
	}
	
	.navis {
		width:80%;
		margin:auto;
		border-radius:10px;

	
	}
	
	.menues {
		background:rgb(212,106,106);
		color:white;
		text-align:center;
		vertical-align:middle;
		width:700px;
		height:50px;
		display:table-cell;
		border-radius:10px;
		
		
	}
	
	.menues:hover {
		background:rgb(128, 21, 21);
		color:rgb(255, 235, 235);
		font-weight:bold;
		cursor:pointer;
		border-radius:10px;
	}
	
	.whole{
width:80%;
height:500px;
margin:auto;


}

.tab{
width:30%;
height:50px;
text-align:center;
border-radius:5px;
display:table-cell;
vertical-align:middle;
background-color:rgb(255, 235, 235);
color:rgb(85, 0, 0);

}

.tab:hover {
	background-color:rgb(212,106,106);
	cursor:pointer;
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
font-size:25px;
margin-bottom:10px;
}

.introduce{
text-align:center;
}
	
</style>
<body>

<%@ include file="../common/bootstrap.jsp" %>
<%@ include file="../common/menubar.jsp" %>

		<div class="wraps">
		<div class="navis">
			<div class="menues" onclick="">프로필</div>
			<div class="menues" onclick="">레시피</div>
			<div class="menues" onclick="">댓글</div>
			<div class="menues" onclick="">내가 작성한 게시글</div>
			<div class="menues" onclick="">주문조회</div>
			<div class="menues" onclick="">회원정보수정</div>
		</div>
	</div>
	<br>
	<div class="whole">
	<div class="tab">프로필</div>
	<div class="content">
	<div class="myprofile">
	<div class="p background"><img class="bg" src="../../resources/images/마카롱.jpg"></div>
	<div class="p pic"><a href=""><img class="pf" src="../../resources/images/강아지.jpg" ></a></div>

	<div class="p text">
		<div class="p nickname"><a href="">홍길동</a></div>
		<div class="p introduce">집밥이 짱~~</div>
	</div>
	
	</div>
	
	</div>
	</div>

<%@ include file="../common/footer.jsp" %>
</body>
</html>