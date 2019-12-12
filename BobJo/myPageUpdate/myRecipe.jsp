
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
<link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">


<script>
var templet_src='/data/enterdev_data/templet/bienbien';
var front_language='korean';
</script>
<script src="library.js"></script>
<script src="ui.js"></script>
<script src="basic_head.js"></script>


<script src="mypage.js"></script>

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
		
	.content{
	width:100%;
	height:30%;
	box-sizing:border-box;
	display:inline-block;
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
	
	.content{
	border-radius:5px;
	width:100%;
	height:90%;
	border:1px solid grey;
	}
	
	
	a{
	text-decoration:none; color:gray;
	}

	/* div{
	border:1px solid red;
	}
 */





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
		<a href="/mypage/profile.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		<a href="/mypage/order_history.php">나의 쇼핑 내역</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/order_history.php" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="/mypage/return_history.php" class=''>
					취소/반품/교환 현황
				</a>
			</li>
			<!--<li>
				<a href="/mypage/add_pay_history.php" class='' >
					추가결제 내역
				</a>
			</li>-->
			<li>
				<a href="/mypage/receipt.php" class=''>
					증빙문서관리
				</a>
			</li>
		</ul>
	</dd>
	<dt>
		<a href="/mypage/coupon.php">나의 레시피 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/mileage.php" >
					내가 작성한 레시피
				</a>
			</li>

			<li>
				<a href="/mypage/coupon.php" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">댓글 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/recent_view.php"   >
					내가 작성한 댓글
				</a>
			</li>
			<li>
				<a href="/mypage/wishlist.php" >
					내가 받은 댓글
				</a>
			</li>
			
			<!--li>
				<a href="/mypage/event_favorite.php" >
					찜한 기획전/참여 이벤트
				</a>
			</li-->
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">나의 커뮤니티</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/my_goods_inquiry.php" >
					내가 작성한 게시글
				</a>
			</li>
			<li>
				<a href="/mypage/mypage_bbs.php" >

					내가 작성한 후기

				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/profile.php">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/profile.php" class="on">
					회원정보수정
				</a>
			</li>
			<li>
				<a href="/mypage/addressbook.php" >
					배송지 관리
				</a>
			</li>
			<li>
				<a href="/mypage/secede.php"  >
					회원탈퇴
				</a>
			</li>
		</ul>
	</dd>
</dl>
</div>
<div class="mypage-contents"  >
<section class="wrap-shopping-info" >
	
	<div class="shopping-info" style="width:36%;">
		<div class="area info01"  >
			<p>
				안녕하세요. 홍길동님<br>
				chef J를 이용해주셔서 감사합니다.
			</p>
		</div>
		<!-- <div class="area info02">
			<strong class="def">
				보유 적립금<br>
				<span class='bl-color'>2,000</span>원
			</strong>
		</div>
		<div class="area info03">
			<strong class="def">
				보유 쿠폰<br>
				<span class='bl-color'>0</span>장
			</strong>
		</div> -->
		
		
	</div>
</section>
<%--여기서부터 시작 자리 --%>
<div class="wrap-profile">
<h2>나의 레시피 보기</h2>
<p class="desc">내가 작성한 레시피를 볼 수 있습니다.</p>
</div>


<div class="shadow p-3 mb-5 bg-white rounded" style="width:95%; height:75%;"><br>
<div class="wrap-order-overview">
		
	</div>
 <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="" >갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="">갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="">갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="">갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="">갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="" >홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        <div class="mold">
          <div class="card mb-3 shadow-sm">
           	<div class="thumbnail" id="thumbnail1"><a href=""><img width=100%, height=100%, src="../../resources/images/갈비찜.jpg"></a></div>
            <div class="card-body" >
   
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                
                  <div class="like" id="like1"><img width =20px, height =20px, src="../../resources/images/like.png"></div>
                  <div class="likenum" id="likenum1">&nbsp;521</div>
                  <div class="qna" id="qna1"><img width=20px, height = 20px, src = "../../resources/images/speech-bubble.png"></div>
                  <div class="qnanum" id="qnanum1" >&nbsp;860</div>
                </div>
                <div class="yy" >
              
                <div class="date" id="date1" >2019-12-02</div>
          
          	
                <div class="views views" id="views">조회수 : </div>
                <div class="views viewsnum" id="views1" >8555</div>
                
                </div>
            
              
                
              </div><hr>
              
         		
				<div class="main">
              	<div class="name" id="name1"><a href="">갈비찜</a></div>
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
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