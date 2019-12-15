<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <!--차트링크-->
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<title>Insert title here</title>
 
  <style>
    *{
      box-sizing: border-box;
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

  .dashboard{
    border:1px solid red;
    height: 700px;
    width: 80%;
    margin: auto;
  }
    .chartDiv {
      width: 70%;
      height: 400px;
      float: left;
      border:1px solid red;
    }
    .myChart{
      height: 400px !important;
      width: 400px;
    }
    .revenueDiv {
      width: 30%;
      height: 400px;
      float: left;
      border:1px solid red;
    }
  .orderAdmin_txt{
    font-size:20px;
    font-weight: 900;
  }
  </style>
</head>
<body>
<%@ include file="../common/bootstrap.jsp" %>
<%@ include file="../common/menubar.jsp" %>


<!-- 사이드바 메뉴 링크걸기 -->


 <p class="orderAdmin_txt">주문관리</p>
  <div class="dashboard">
    <div class="chartDiv">
      <canvas id="myChart"></canvas>
    </div>

    <div class="revenueDiv">
      <table class="table revenueTable">
        <thead class="thead-light">
          <tr>
            <th scope="col">Month</th>
            <th scope="col">Revenue</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row mon">1</th>
            <td>Mark</td>

          </tr>
          <tr>
            <th scope="row mon">2</th>
            <td>Jacob</td>

          </tr>
          <tr>
            <th scope="row mon">3</th>
            <td>Larry</td>

          </tr>
          <tr>
            <th scope="row mon">4</th>
            <td>Larry</td>

          </tr>
          <tr>
            <th scope="row mon">5</th>
            <td>Larry</td>

          </tr>
          <tr>
            <th scope="row mon">6</th>
            <td>Larry</td>

          </tr>
        </tbody>
      </table>
    </div>
  </div>




  <div class="table_div">
    <table class="table">
      <thead class="thead-light">
        <tr>
          <th scope="col">주문번호</th>
          <th scope="col">아이디</th>
          <th scope="col">주문일</th>
          <th scope="col">등급</th>
          <th scope="col">주문액수</th>

        </tr>
      </thead>
      <tbody>
        <tr>
          <th scope="row oId">1</th>
          <td>Mark</td>
          <td>Otto</td>
          <td>@mdo</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row oId">2</th>
          <td>Jacob</td>
          <td>Thornton</td>
          <td>@fat</td>
          <td>@mdo</td>
        </tr>
        <tr>
          <th scope="row oId">3</th>
          <td>Larry</td>
          <td>the Bird</td>
          <td>@twitter</td>
          <td>@mdo</td>
        </tr>
      </tbody>
    </table>
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

  <script>
    var ctx = document.getElementById('myChart').getContext('2d');
    var chart = new Chart(ctx, {
      // The type of chart we want to create
      type: 'line',

      // The data for our dataset
      data: {
        labels: ['January', 'February', 'March', 'April', 'May', 'June', 'July'],
        datasets: [{
          label: '최근매출', fill: false,

          borderColor: 'rgb(255, 99, 132)',
          data: [0, 10, 5, 2, 20, 30, 45]
        }]
      },

      // Configuration options go here
      options: {}
    });
  </script>

<%@ include file="../common/footer.jsp" %>
</body>
</html>