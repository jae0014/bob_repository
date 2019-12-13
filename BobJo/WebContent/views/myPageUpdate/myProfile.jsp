<%@ page language="java" contentType="text/html; charset=UTF-8"
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


.part1,.mypage-contents,.sub-container{
diplay:inline-block;
height:100%;
}

.wholewhole{
width:85%;
height:1100px;
margin:auto;

}

.part1{
width:20%;
height:100%;
float:left;



}

.mypage-contents{
width:50%;
float:left;


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
font-size:40px;
margin-bottom:10px;

}

.introduce{
text-align:center;
font-size:20px;

}

.myprofile{

width:80%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
margin:auto;

}


.cover{
margin-left:10%;
background-color:grey;
border-radius:5px;
width:45%;


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
	<a href="/mypage/">
		<span class="font-en">MY PAGE</span>
	</a>
</h1>

	<dl class="menu-sub-left">
	<dt>
		<a href="myProfile.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		나의 쇼핑 내역
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myOrder.jsp" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="myPageDisorder.jsp" class=''>
					취소/반품/교환 현황
				</a>
			</li>
		
		</ul>
	</dd>
	<dt>
		나의 레시피 관리
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myRecipe.jsp" >
					나의 레시피
				</a>
			</li>

			<li>
				<a href="likeRecipe.jsp" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		댓글 관리
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myReply.jsp"   >
					나의 댓글
				</a>
			</li>
			<li>
				<a href="getReply.jsp" >
					내가 받은 댓글
				</a>
			</li>
	
		</ul>
	</dd>
	<dt>
		나의 커뮤니티
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myBoard.jsp" >
					나의 게시글
				</a>
			</li>
			
			
		</ul>
	</dd>
	<dt>
		<a href="">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="updateMember.jsp" class="on">
					회원정보수정
				</a>
			</li>

			<li>
				<a href="deleteMember.jsp"  >
					회원탈퇴
				</a>
			</li>
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
<%--프로필 자리 --%>
<div class="contents">
	<br><br>
	<div class="wrap-profile">
		<h2>나의 프로필</h2>
		<p class="desc">사진과 닉네임,인사말을 수정할 수 있습니다.</p>



	<div class="shadow-sm p-3 mb-5 bg-white rounded">
	<div class="p background"><img class="bg" src="<%=request.getContextPath() %>/resources/images/마카롱.jpg"></div>
	<div class="p pic"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=350,width=300, status=yes,toolbar=no,menubar=no,location=no");return false'><img class="pf" src="<%=request.getContextPath() %>/resources/images/강아지.jpg" ></a></div>

	<div class="p text">
		<div class="p nickname"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=330,width=300, status=yes,toolbar=no,menubar=no,location=no");return false'>홍길동</a></div>
		<div class="p introduce">집밥이 짱~~</div>
		
		
		<br><br>
	</div>
	
	</div>
	</div>
	</div>


</div>

</div>



</div>

</div>




</script>


<%@include file="../common/footer.jsp"%>
</body>

</html>