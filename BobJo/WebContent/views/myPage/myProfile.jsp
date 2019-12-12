<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>
</head>
<style>


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

.myprofile{

width:25%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
}

.contents{
border:1px solid grey;

}


	
</style>
<body>

<%@ include file="../common/bootstrap.jsp" %>
<%@ include file="../common/menubar.jsp" %>
<br><br>
<%@ include file="myPage.jsp" %>
	<div class="whole">
	<div class="tab">프로필</div>
	<div class="contents">
	<div class="myprofile">
	<div class="p background"></div>
	<div class="p pic"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=400,width=400, status=yes,toolbar=no,menubar=no,location=no");return false'><img class="pf" src="<%=request.getContextPath() %>/resources/images/강아지.jpg" ></a></div>

	<div class="p text">
		<div class="p nickname"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=400,width=400, status=yes,toolbar=no,menubar=no,location=no");return false'>홍길동</a></div>
		<div class="p introduce">집밥이 짱~~</div>
		
		
		<br><br>
	</div>
	
	</div>
	
	</div>
	</div>
	
	

	
	<br><br>

<%@ include file="../common/footer.jsp" %>
</body>
</html>