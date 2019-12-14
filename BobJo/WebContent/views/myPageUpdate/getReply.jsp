
</body>
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
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

div{
/* border:1px solid red; */
}
.part1,.mypage-contents,.sub-container{
diplay:inline-block;
/* border:1px solid red; */
height:100%;
}

.wholewhole{
width:85%;
height:1100px;
margin:auto;
/* border:1px solid blue; */

}

.part1{
width:20%;
height:100%;
float:left;



}

.mypage-contents{
width:80%;
float:left;


}



.whole{
width:80%;
height:600px;
margin:auto;


}

.mold{
width:27%;
margin-left:5%;
margin-top:2%;
display:inline-block;

}

.thumbnail{
	width:100%;
	height:200px;
	}
	

	
	.likenum, .qnanum{
	width:50px;
	height:30px;
	font-size:15px;
	
		}
		

	
	.name{
		width:100%;
		height:30%;
	}
	
	.writer{
	width:100%;
	height:70%;

	}
	
	.card-body{
	border-radius:5px;
	}
	
	.yy{
	font-size:10px;
	text-align:right;
	}
	
	.views{
	display:inline-block;
	}
	
	
	.name{
		height:100%;
		width:60%;
		display:inline-block;
		font-size:25px;
		font-weight:bold;
		text-align:right;
	}
	
	
	.recipe{
		box-sizing:border-box;
		height:100%;
		width:20%;
		display:inline-block;
		float:right;
		font-size:10px;
		margin-top:20px;
	
		
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
<%--여기서부터 시작 자리 --%>
<div class="wrap-profile">
<h2>내가 받은 댓글 보기</h2>
<p class="desc">나의 게시글에 달린 댓글을 볼 수 있습니다.</p>
</div>


<div class="shadow p-3 mb-5 bg-white rounded" style="width:95%; height:75%;"><br>

 <div class="mold">
          <div class="card mb-3 shadow-sm" >
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="<%=request.getContextPath() %>/resources/images/마카롱.jpg"></a></div>
            <div class="card-body" >
   
             
         		
				<div class="main">
              	<div class="name" id="name1"><a href="" >마카롱</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">신사임당</a></div>
             	<div class="recipe blank"></div>
             	<div class="card shadow-s"></div>
              	
              	
            </div>
            
				<div class="main">
              	<div class="nick" style="font-size:12px; color:lightgrey" >홍길동</div>
             
             
             	<div class="rep" style="font-size:15px; color:lightblue">개맛있어요~~~</div>
             	<div class="date">2019-12-13</div>
             
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm" >
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="<%=request.getContextPath() %>/resources/images/마카롱.jpg"></a></div>
            <div class="card-body" >
   
             
         		
				<div class="main">
              	<div class="name" id="name1"><a href="" >마카롱</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">신사임당</a></div>
             	<div class="recipe blank"></div>
             	<div class="card shadow-s"></div>
              	
              	
            </div>
            
				<div class="main">
              	<div class="nick" style="font-size:12px; color:lightgrey" >홍길동</div>
             
             
             	<div class="rep" style="font-size:15px; color:lightblue">개맛있어요~~~</div>
             	<div class="date">2019-12-13</div>
             
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
         <div class="mold">
          <div class="card mb-3 shadow-sm" >
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="<%=request.getContextPath() %>/resources/images/마카롱.jpg"></a></div>
            <div class="card-body" >
   
             
         		
				<div class="main">
              	<div class="name" id="name1"><a href="" >마카롱</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">신사임당</a></div>
             	<div class="recipe blank"></div>
             	<div class="card shadow-s"></div>
              	
              	
            </div>
            
				<div class="main">
              	<div class="nick" style="font-size:12px; color:lightgrey" >홍길동</div>
             
             
             	<div class="rep" style="font-size:15px; color:lightblue">개맛있어요~~~</div>
             	<div class="date">2019-12-13</div>
             
              	
              	
            </div>
         		
            </div>
          </div>
        </div>

      
       
        
        <br><br>
        
     
          <navig aria-label="Page navigation example" >
  <ul class="pagination justify-content-center" >
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1" aria-disabled="true">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</navig>

</div>
</div>

</div>






</script>


<%@include file="../common/footer.jsp"%>
</body>

</html>