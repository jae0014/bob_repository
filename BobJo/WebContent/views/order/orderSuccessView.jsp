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

        .container-fluid {
            position: relative;
            padding:5rem;
        }

        .order-success {
            text-align: center;
            background-color: rgb(207, 207, 207);
            width:70%;
            margin:10rem;
            padding:3rem;
        }

        .order-success p:first-child {
            font-weight: bold;
            font-size: 2rem;
        }

        .order-success button {
            border: none;
            width: 10rem;
            height: 3rem;
            border-radius: 0.5rem;
            background-color: rgb(170, 57, 57);
            color: white;
            font-size: 1.2rem;
        }

        .order-success .button-div {
            width:90%;
            margin: 1rem;
        }
        .button-div button {
            margin:1rem;
        }

    </style>

</head>
<body>

	<header></header>

    <section class="content">
        <div class="container-fluid">
            <div class="order-success">
                <p>주문 완료</p>
                <p>주문이 완료되었습니다. 마이페이지에서 주문을 확인하세요.</p>
                <div class="button-div">
                    <button>주문 조회</button>
                    <button>홈으로</button>
                </div>
            </div>

        </div>
    </section>
    <footer></footer>

</body>
</html>