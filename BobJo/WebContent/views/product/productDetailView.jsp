<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
        crossorigin="anonymous">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
<title>J market</title>
	<style>
        body {
            margin: auto;
            position: relative;
        }

        header {
            height: 150px;
            background-color: lightpink;
        }

        footer {
            height: 100px;
            background-color: lightblue;
        }

        .content{
            width:90%;
            /* position: absolute; 
            left: 50%; 
            transform: translateX(-50%); */
            margin-left:auto; margin-right:auto;
        }

        .product-detail-top {
            padding : 1rem;
            overflow:auto;
            border:1px solid red;
        }

        .product-detail-bottom {
            height: 2000px;
            background-color: wheat;

        }

        .product-detail-bottom div {
            padding: 10px;
            border: 1px solid black;
        }

        .goods {
            display: inline-table;
            margin: 20px 10px 20px 10px;
        }

        .thumb {
            /* width:25%; 
            height:auto;*/
            background-color: aquamarine;
            float: left;
            overflow: hidden;
        }

        .thumb img {
            width:100%;
            height:auto;
        }

        .putCart {
            margin-left: 5%;
            /* width:60%; */
        }

        .goods_name {
            font-weight: bold;
            font-size: 2em;
            margin-bottom: 0.2%;
        }

        .goods_short_desc {
            color:gray;
        }
        .goods_price{
            font-weight: bold;
            font-size: 1.5em;
            color:rgb(170,57,57);
        }

        .goods_total_price {
            font-weight: bold;
            font-size: 1.7em;
            color:rgb(170,57,57);
            text-align: right;
        }

        .li_table {
            border: 1px solid red;
            margin-bottom: 10px;
            position:relative;
            overflow:auto;
        }

        .li_table ul {
            list-style: none;
            clear: left;
            margin: 0;
            padding: 0;
        }

        .li_table ul li {
            float: left;
            margin: 0;
            padding: 2px;
            line-height: 4rem;
            border-top:1px solid gray;
        }

        .li_table ul li:first-child {
            color: gray;
            width: 30%;
        }

        .li_table ul li:last-child {
            width: 60%;
        }

        .last_ul li{
            border-bottom: 1px solid gray;
        }

        #put_cart {
            margin: 5px;
            width:200px;
            height: 40px;
            background-color: rgb(255,170,170);
            color:white;
            border-style: none;
            border-radius: 10px;
            float:right;
        }
    </style>
</head>
<body>


	<section class="content">
        <div class="container-fluid">
            <div class="product-detail-top row">
                <!-- 썸네일, 상품명, 설명, 가격, 수량선택, 장바구니 버튼-->
                <div class="goods thumb col-4">
                    <img src="<%= request.getContextPath() %>/resources/sampleImg/당근.png" alt="상품이미지">
                </div>
                <div class="goods putCart col-7">
                    <p class="goods_name">상품명</p>
                    <p class="goods_short_desc">상품에 대한 짧은 설명</p>
                    <p class="goods_price">5,000 원</p>
                    <div class="li_table">
                        <ul>
                            <li>판매단위</li>
                            <li>1팩</li>
                        </ul>
                        <ul>
                            <li>중량/용량</li>
                            <li>400g</li>
                        </ul>
                        <ul class="last_ul">
                            <li>구매수량</li>
                            <li>임시 위치</li>
                        </ul>
                    </div>
                    <br>
                    <p class="goods_total_price">총 상품 금액 : <span>000000</span> 원</p>
                    <button type="button" id="put_cart">장바구니 담기</button>
                </div>
            </div>
            <div class="product-detail-bottom">
                <!-- 상품설명, 상품정보, 후기 탭
                Scrollspy 이용해보기-->
                <nav id="goods-menu1" class="navbar navbar-light bg-light">
                    <!-- <a class="navbar-brand" href="#">Navbar</a> -->
                    <ul class="nav nav-pills">
                        <li class="nav-item selected-item">
                            <a class="nav-link" href="#goods-menu1">상품 설명</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#goods-menu2">상품 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">고객 후기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">상품 문의</a>
                        </li>
                    </ul>
                </nav>


                <div class="product-desc">
                    <p>
                        되려니와, 얼마나 바로 뜨고, 피다. 이상 앞이 몸이 청춘 있다. 그들은 주며, 불러 아름답고 피가 천하를 무한한 사막이다. 용기가 구하기 희망의 풀밭에 같은 광야에서
                        사막이다. 두손을 오아이스도 그들은 반짝이는 대고, 풀이 그들은 부패뿐이다. 긴지라 것은 무엇을 끓는 피가 것이다. 꾸며 곳이 우리는 충분히 이성은 찾아다녀도, 위하여,
                        피어나기 인간의 이것이다. 충분히 못하다 그들은 것이다. 풍부하게 수 만천하의 칼이다. 소금이라 아름답고 설산에서 실현에 천지는 별과 듣기만 그들은 피다.

                        피고 생의 그와 것이다.보라, 부패뿐이다. 열락의 옷을 청춘에서만 영락과 것은 그들의 만천하의 사랑의 때문이다. 천자만홍이 이상 피에 두손을 불어 곳이 되는 칼이다.
                        현저하게 바이며, 우는 천자만홍이 많이 부패를 피에 가지에 위하여서, 봄바람이다. 거친 동력은 내는 귀는 주는 곳으로 것이 무엇을 이성은 것이다. 살았으며, 동력은 놀이
                        안고, 아름다우냐? 우리는 커다란 대고, 곳이 쓸쓸하랴? 인생을 피에 같은 피고 같지 반짝이는 때문이다. 커다란 설산에서 평화스러운 있는가? 내려온 사랑의 새가 사막이다.

                        천지는 무엇을 용기가 생생하며, 위하여서. 얼마나 불어 새 하였으며, 위하여, 온갖 것이다. 뛰노는 사랑의 구하기 장식하는 용감하고 길지 트고, 칼이다. 끝까지 봄바람을
                        위하여, 뛰노는 가치를 열락의 그들은 거선의 것이다. 이상이 눈에 내는 그들은 찾아 있을 우리 무한한 말이다. 청춘을 인생의 예가 소담스러운 길을 이상의 인간의 위하여서.
                        가지에 보내는 따뜻한 설레는 위하여 같이, 유소년에게서 하는 창공에 것이다. 있는 살 풀이 희망의 운다. 수 사랑의 청춘은 불어 얼마나 충분히 보배를 듣기만 황금시대다.
                    </p>
                </div>

                <nav id="goods-menu2" class="navbar navbar-light bg-light">
                    <!-- <a class="navbar-brand" href="#">Navbar</a> -->
                    <ul class="nav nav-pills">
                        <li class="nav-item selected-item">
                            <a class="nav-link" href="#goods-menu1">상품 설명</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#goods-menu2">상품 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">고객 후기</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">상품 문의</a>
                        </li>
                    </ul>
                </nav>

                <div class="product-info">
                    <p>
                        황금시대의 어디 그러므로 것이다. 그러므로 같이 이것을 이상의 피가 심장은 것이다. 온갖 않는 구하지 그들을 위하여서. 그들은 꽃 따뜻한 작고 칼이다. 온갖 황금시대를
                        그들의 새가 주는 주며, 것이다. 예수는 이것이야말로 우리는 그러므로 사랑의 별과 인간의 공자는 위하여서. 생의 피부가 사라지지 인생을 안고, 이상의 반짝이는 불어
                        봄바람이다. 가진 가지에 두손을 새가 거선의 이것이다. 그들은 구하지 갑 것이다.보라, 긴지라 희망의 교향악이다. 그들의 구하기 피가 이것이야말로 커다란 교향악이다.

                        풍부하게 위하여서, 끓는 눈이 어디 쓸쓸하랴? 뼈 많이 바이며, 그들의 끓는다. 뜨고, 가치를 할지니, 행복스럽고 있는 사라지지 아니다. 새가 얼마나 아름답고 얼마나
                        청춘에서만 바로 이상은 긴지라 피에 피다. 만물은 행복스럽고 없으면, 우리는 긴지라 피다. 눈이 맺어, 그러므로 할지니, 듣기만 새가 바로 모래뿐일 철환하였는가? 천지는
                        소금이라 보배를 얼마나 영원히 그들은 우리의 위하여서 뼈 교향악이다. 청춘이 인생에 같이, 그것을 끓는다. 원대하고, 같이 어디 간에 쓸쓸하랴?

                        싶이 하는 없으면 얼음에 실현에 설산에서 같이, 가지에 그리하였는가? 발휘하기 사람은 산야에 이상의 얼마나 끓는 사막이다. 이상은 몸이 무엇을 싹이 오아이스도 것이다.
                        미인을 크고 얼마나 청춘의 수 듣는다. 무엇을 소리다.이것은 기쁘며, 같은 것이 것은 끓는다. 이상이 눈에 뼈 같으며, 같지 천자만홍이 이상의 그들은 주며, 것이다.
                        그들의 그러므로 무엇을 사라지지 같지 대고, 철환하였는가? 새 못하다 이상은 가치를 꽃 눈에 때문이다. 피어나기 있을 곳이 피고 미묘한 운다. 그들은 그들에게 곳이 무엇을
                        같이, 보는 가슴이 아니더면, 스며들어 봄바람이다. 피가 자신과 인생의 청춘이 것이다.
                    </p>
                </div>


            </div>

        </div><!-- container 끝-->

    </section>
	

</body>
</html>