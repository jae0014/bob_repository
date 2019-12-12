<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, common.vo.*, product.model.vo.*, file.model.vo.*"%>
<%
	ArrayList<Product> pList = (ArrayList<Product>)request.getAttribute("pList");
	String cate = request.getAttribute("cate").toString();
	String cateStr = request.getAttribute("cateStr").toString();
	ArrayList<File> fList = (ArrayList<File>)request.getAttribute("fList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      
<title>J market</title>
	<style>
        body {
            margin: auto;
            position: relative;
        }

        .content{
            width:85%;
            /* position: absolute; 
            left: 50%; 
            transform: translateX(-50%); */
            margin-left:auto; margin-right:auto;
        }

		.list-row {
			margin-bottom : 1.5rem;
		}
		
        .card-title {
            font-weight: bold;
        }
        
        /*
        a:link : 클릭하지 않은 링크
		a:visited : 한번 클릭했던 혹은 다녀갔던 링크
		a:hover : 링크를 클릭하려고 마우스를 가져갔을 때
        */
        .card-title a:link, .card-title a:visited { color: black; text-decoration: none;}
        .card-title a:hover {color:rgb(212,106,106); text-decoration: underline;}

        .card-img {
        	width:100%;
        	height:100%;
        }
        
        .card-img-top {
        	width:100%;
        	height:100%;
        }

        .cart {
            background-color: rgb(257, 157, 157);
            border-radius:0.5rem;
            padding:1rem;
        }
        
        .cartDiv{
        	padding:0;
        }

        .card-text {
            color: gray;
            font-size: 0.8rem;
            margin-bottom: 10px;
        }

        .product_price {
            color:rgb(170,57,57);
            font-weight: bold;
            font-size:1.2rem;
            margin: auto;
        }

        .card-body {
            padding: 1rem;
            text-align:left;
        }

        .sorting {
            padding: 0.5rem 0 0.5rem 0.5rem;
            height: 3.5rem;
            margin:0.5rem;
            /* 정렬 드롭메뉴가 float를 사용했기 때문에 그 영역만큼 크기를 잡는다 */
        }

        .sort-by {
            float: right;
        }

        .cate {
            float: left;
            width: 10rem;
            height: 2rem;
            text-align: center;
            background-color: rgb(257, 157, 157);
            border-radius:0.8rem;
            color: white;
            margin-top:0.5rem;

        }

        #dropdownMenuButton {
            background-color: white;
            border: rgb(257, 157, 157) solid 1px;
            color: rgb(257, 157, 157);
        }

        .paging {
            height: 100%;
            text-align: center;
            padding: 10px;
        }

        .paging:before {
            content: "";
            display: inline-block;
            width: 1px;
            height: 100%;
            margin-right: 0;
            vertical-align: middle;
        }

        .page-nav {
            display: inline-block;
            vertical-align: middle;
        }
    </style>

</head>
<body>
	
	<%@ include file="../common/menubar.jsp" %>
	<%@ include file="../common/bootstrap.jsp" %>
	
	<section class="content">
        <div class="container-fluid">
            <div class="cate">
            	<p><%= cateStr %></p>
            </div>
            <div class="sorting">
                <!-- 정렬 기준 추가-->
                <div class="dropdown sort-by">
                    <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        	정렬 기준
                    </button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                        <button class="dropdown-item" type="button">신상품순</button>
                        <button class="dropdown-item" type="button">인기 상품순</button>
                        <button class="dropdown-item" type="button">가격 낮은 순</button>
                        <button class="dropdown-item" type="button">가격 높은 순</button>
                    </div>
                </div>
            </div>
            
           	<!-- 카트 아이콘 클릭시 장바구니 작은 창 뜨는거 modal 이용(알아봐야할 듯)-->
            <div class="product-wrap">
            <% for(int i = 0; i < pList.size(); i++) { %>
                <% if(i%4==0) {%>
                	<div class="row list-row">
                <%} %>
                	<div class="col-sm-3 gg">
                    <div class="card">
                    	<div class="card-img">
                    		<a href="<%= request.getContextPath() %>/views/product/productDetailView.jsp">
                    			<% for(File f : fList){ %>
                    				<% if(pList.get(i).getpId().equals(f.getBprcId())){ %>
                    					<img src="<%= request.getContextPath() %>/resources/sampleImg/당근.png" class="card-img-top" alt="...">
                    				<% } %>
                    			<% } %>
                    			<%-- <img src="<%= request.getContextPath() %>/resources/product/<%= fList.get(i).getfPath() %>" class="card-img-top" alt="..."> --%>
                    		</a>
                    	</div>
                        <div class="card-body">
                        	<div class="row">
                        		<div class="col-8"><h5 class="card-title"><%= pList.get(i).getpName() %></h5></div>
                        		<div class="col-4 cartDiv"><a href="#" class="btn btn-outline-danger">cart</a></div>
                        	</div>
                        	<div class="row">
                        		<p class="product_price col"><%= pList.get(i).getpPrice() %> 원</p>
                        	</div>
                        	<div class="row">
                        		<p class="card-text col"><%= pList.get(i).getpShortDesc() %></p>
                        	</div>
                        </div>
                    </div>
                </div>
                
                <% if(i%4==3) {%>
                	</div>
                <%} %>
            <%} %>
            
            </div>
			
			
        </div><!-- container 끝-->

        <!-- paging -->
		<div class="paging">
            <nav aria-label="Page navigation example" class="page-nav">
                <ul class="pagination">
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Previous">
                            <span aria-hidden="true">&laquo;</span>
                        </a>
                    </li>
                    <li class="page-item"><a class="page-link" href="#">1</a></li>
                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                    <li class="page-item">
                        <a class="page-link" href="#" aria-label="Next">
                            <span aria-hidden="true">&raquo;</span>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>

    </section>
    
    <script>
    	$(function(){
    		console.log(list);
    	});
    </script>
	
	<%@ include file="../common/footer.jsp" %>
	
</body>
</html>