
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    *{
        box-sizing: border-box;
    }

    .sale_list {
        width: 1050px;
        height: 400px;
        /* border: 1px solid purple; */
        margin: auto;
    }
    .sale_item {
        /* 상품하나 */
        float: left;
        /* border: 1px solid green; */
        width: 20%;
        height: 80%;
        margin: 20px;
    }

    .sale_thumb {
        /* 상품 하나 이미지 div */
        width: 100%;
        height: 70%;
        /* border: 1px solid tan; */
        position: relative;
    }
    .sale_rate{
        width: 40px;
        height: 40px;
        background: rgba(170, 57, 57, 0.85);
        position: absolute;
        left: 81%;
        text-decoration: none;
        color: white;
        text-align: center;
        line-height: 2.5;   
    }

    .thumb_img{
        width:100%;
        height: 100%;

    }
    .sale_info{
        /* border:1px solid red; */
        text-decoration: none;
        padding: 5px;
        height:30%;
        width: 100%;
        display:block;
    }
    .sale_info:hover{
    text-decoration:none !important;
    }

    .p_txt{        
        width: 100%;
        padding:2px;
        margin:0px !important;
    }
    .p_name{
        /* text-decoration: none; */
        font-weight: bold;
        color:black;
    }
    .p_price{
        font-weight: bold;
        color: rgb(170, 57, 57);
        font-size: 15px;
    }
    
    .p_price_origin{
        color:lightgray;
    }
    .main_type1 .list_goods .thumb_goods {
        width: 100%;
        height: 370px;
        background-repeat: no-repeat;
        background-position: 50% 50%;
        background-size: 100% auto;
        font-size: 0;
        line-height: 0; 
        text-indent: -9999px;
    }

    .list_goods .thumb_goods {
        display: block;
        overflow: hidden;
    }


    /* 텍스트박스 1 */
    .R_textbox1{
        width: 300px;
        height: 100px;
        background: rgba(0, 0, 0, 0.5);
        color: white;
        position: absolute;
        
        /* 텍스트박스 1 좌표 */
        top: 60%;
        left: 10%;
    }


/* 텍스트박스 2 */
.R_textbox2{
    background:red;
    width: 300px;
    height: 100px;
    margin:auto;
    /* position: absolute; */

    /* 텍스트박스 3 좌표 */
    /* top: 60%;
    left: 10%; */

}

/* 텍스트박스 3 */
.R_textbox3{
    background:green;
    width: 400px;
    height: 100px;
    margin:auto;
    /* position: absolute; */

    /* 텍스트박스 3 좌표 */
    /* top: 60%;
    left: 10%; */

}
.head_txt1, .head_txt2, .head_txt3{
    position:absolute;
    font-weight: 900;
    font-size: 20px;
    padding: 0;
    margin:0;
    
}
.head_small_txt1{
    font-size: 15px;
}





</style>
</head>
<body>
<%@ include file="views/common/bootstrap.jsp" %>
<%@ include file="views/common/menubar.jsp" %>

<div id="carouselExampleCaptions" class="carousel slide main_type1" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
          <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>
        </ol>
    
        <div class="carousel-inner list_goods">
          
          
            <div class="carousel-item active">
            <a href="#" class="d-block w-100 thumb_goods" style="background-image: url('<%=contextPath%>/resources/images/main/아침식사.PNG')">메인배너</a>    
            <div class="carousel-caption d-md-block R_textbox1">
              <p class="head_txt1">제이의 레시피 추천 하나,</p><br>
              <p class="head_small_txt1">1인 가구 자취생의 맛있는 된장찌개</p>
            </div>
          </div>
    
    
          <div class="carousel-item">
            <a href="#" class="d-block w-100 thumb_goods" style="background-image: url('<%=contextPath%>/resources/images/main/아침식사2.PNG')">메인배너</a>  
            <div class="carousel-caption d-none d-md-block R_textbox2">
              <p class="head_txt2">제이의 레시피 추천 둘,</p><br>
              <p class="head_small_txt2">아침 든든 계란볶음밥</p>
            </div>
          </div>
    
    
          <div class="carousel-item">
            <a href="#" class="d-block w-100 thumb_goods" style="background-image: url('<%=contextPath%>/resources/images/main/파스타_2160x2160.jpg')">메인배너</a>  
            <div class="carousel-caption d-none d-md-block R_textbox3">
              <p class="head_txt3">제이의 레시피 추천 셋,</p><br>
              <p class="head_small_txt3">엄마에게 해드리는 레시피, 당신과 함께 먹을 파스타</p>
            </div>
          </div>
        </div><!--carousel-inner-->
        
        
        <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
    
    
        <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
    </div><!-- carouselExampleCaptions -->

<br both="clear">

  
<br>
<hr>
<br>


<h2 align="center">이 상품 어때요?</h2>
<br>

<div class="sale_list">
    <div class="sale_item">

        <div class="sale_thumb">
            <a href="#">
                <img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            </a>
        </div>
        <a href="#" class="sale_info">
            <p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
            <p class="p_price p_txt">2,000원</p>
        </a>
    </div>

    <div class="sale_item">

        <div class="sale_thumb">
            <a href="#">
                <img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            </a>
        </div>
        <a href="#" class="sale_info">
            <p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
            <p class="p_price p_txt">2,000원</p>
        </a>
    </div>
     <div class="sale_item">

        <div class="sale_thumb">
            <a href="#">
                <img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            </a>
        </div>
        <a href="#" class="sale_info">
            <p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
            <p class="p_price p_txt">2,000원</p>
        </a>
    </div>
    <div class="sale_item">

        <div class="sale_thumb">
            <a href="#">
                <img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            </a>
        </div>
        <a href="#" class="sale_info">
            <p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
            <p class="p_price p_txt">2,000원</p>
        </a>
    </div>
</div>






<br>
<br>
<hr>
<br>
<br>
<h2 align="center">제이는 할인 중</h2>
<br>

<div class="sale_list">

	<div class="sale_item">
		<div class="sale_thumb">
			<a href="#">
				<div class="sale_rate">30%</div>
				<img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            </a>
       	</div>
        <a href="#" class="sale_info">
        	<p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
            <p class="p_price p_txt">2,000원</p>
            <p class="p_price_origin p_txt"><s>2,000원</s></p>
        </a>
    </div>
    
	<div class="sale_list">
	
		<div class="sale_item">
			<div class="sale_thumb">
				<a href="#">
					<div class="sale_rate">30%</div>
					<img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            	</a>
       		</div>
        	<a href="#" class="sale_info">
	        	<p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
	            <p class="p_price p_txt">2,000원</p>
	            <p class="p_price_origin p_txt"><s>2,000원</s></p>
        	</a>
    	</div>
    	
    		<div class="sale_item">
			<div class="sale_thumb">
				<a href="#">
					<div class="sale_rate">30%</div>
					<img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            	</a>
       		</div>
        	<a href="#" class="sale_info">
	        	<p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
	            <p class="p_price p_txt">2,000원</p>
	            <p class="p_price_origin p_txt"><s>2,000원</s></p>
        	</a>
    	</div>

		<div class="sale_item">
			<div class="sale_thumb">
				<a href="#">
					<div class="sale_rate">30%</div>
					<img src="<%=contextPath %>/resources/images/main/감귤.PNG" alt="세일상품1" class="thumb_img">
            	</a>
       		</div>
        	<a href="#" class="sale_info">
	        	<p class="p_name p_txt">제주에서 갓 따온 한라봉</p>
	            <p class="p_price p_txt">2,000원</p>
	            <p class="p_price_origin p_txt"><s>2,000원</s></p>
        	</a>
    	</div>
	</div>
</div>

    
<br>
<br>
<br>


<%@ include file="views/common/footer.jsp" %>
</body>

</html>