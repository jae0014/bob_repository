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
height:600px;
margin:auto;


}

.mold{
width:20%;
margin-left:2%;
display:inline-block;

}

.thumbnail{
	width:100%;
	height:200px;
	}
	

	
	.likenum, .qnanum{
	width:50px;
	height:30px;
	
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
	font-size:5px;
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
	
	
	
		
	.tab1, .tab2{
	width:30%;
	height:50px;
	text-align:center;
	border-radius:5px;
	display:table-cell;
	vertical-align:middle;
	background-color:rgb(255, 235, 235);
	color:rgb(85, 0, 0);

	}
	
	
	
	
	.tab1:hover, .tab2:hover{
	background-color:rgb(212,106,106);
	cursor:pointer;
	}
	

	




</style>
<body>

	<%@include file="../common/menubar.jsp" %>
	<%@include file="../common/bootstrap.jsp" %>
	<br><br>
	<%@ include file="myPage.jsp" %>
	
	<div class="whole">
	<div class="tab1">마이 레시피</div>
	<div class="tab2">♥ 레시피</div>
	<div class="content">
		<br><br><br>
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
             
             
             	<div class="recipe writer" id="writer1"><a href="">홍길동</a></div>
             	<div class="recipe blank"></div>
              	
              	
            </div>
         		
            </div>
          </div>
        </div>
        
        <br><br><br>
        <nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
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
</nav>
        
	</div>
	      
	
	
	
	
	</div>
	
	
	
<br><br>
	
	<%@include file = "../common/footer.jsp" %>
	

</body>
</html>