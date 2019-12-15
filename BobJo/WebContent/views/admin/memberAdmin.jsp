<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
   <style>
    .memberAdmin_txt{
        font-size:20px;
        font-weight:700;
    }
    
    .sorting{
       text-align: right;
    }
    .memberAdmin_table{
        width: 600px;
        text-align: center;

    }
    td:hover tr{
        background: #f9f9f9;
    }
    .table_head{
        background: lightgrey;
        font-weight: 900;
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
<%@ include file="../common/bootstrap.jsp" %>
<%@ include file="../common/menubar.jsp" %>

<!-- 사이드바 메뉴 링크걸기 -->
<p class="memberAdmin_txt">회원관리</p>
    <div class="outer">
        <div class="sorting">
            <!-- 정렬 기준 추가-->
            <div class="dropdown sort-by">
                <button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
                    aria-haspopup="true" aria-expanded="false">
                    정렬 기준
                </button>
                <div class="dropdown-menu" aria-labelledby="dropdownMenu2">
                    <button class="dropdown-item" type="button">회원번호 순</button>
                    <button class="dropdown-item" type="button">마지막접속일 순</button>
                    <button class="dropdown-item" type="button">회원등급 순</button>
                </div>
            </div>
        </div>
        <br>
        <div class="table_div">
                <table class="table">
                        <thead class="thead-light">
                          <tr>
                            <th scope="col">회원번호</th>
                            <th scope="col">아이디</th>
                            <th scope="col">가입일</th>
                            <th scope="col">회원등급</th>
                            <th scope="col">마지막 접속일</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <th scope="row">1</th>
                            <td>Mark</td>
                            <td>Otto</td>
                            <td>@mdo</td>
                            <td>@mdo</td>
                          </tr>
                          <tr>
                            <th scope="row">2</th>
                            <td>Jacob</td>
                            <td>Thornton</td>
                            <td>@fat</td>
                            <td>@mdo</td>
                          </tr>
                          <tr>
                            <th scope="row">3</th>
                            <td>Larry</td>
                            <td>the Bird</td>
                            <td>@twitter</td>
                            <td>@mdo</td>
                          </tr>
                        </tbody>
                      </table>
        </div>
    </div>
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
<%@ include file="../common/footer.jsp" %>
</body>
</html>