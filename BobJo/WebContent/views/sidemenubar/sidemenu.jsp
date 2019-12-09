<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

  <style>
        .board-post
        {
            width: 100%;
            padding:0px;
            margin:0px;
            height:500px;
            text-align: center;
           
        }
        .board-post-list
        {
            height:600px;
            width:60%;
            float: left;
            margin-top: 10px;
        }



        .board-postnav-side
        {   
            width:10%;
            height: 350px;
            float: left;
            margin: 10px;
            background-color: rgb(255, 243, 239);
            border: 1px solid black;
             
            
        }
    
        
        
        .board-postnav-side > ul>li>a
        {
            color:black;
            
        }
        .board-postnav-side > ul>li>a:hover
        {
            color:red;
        }
        .board-postnav-side > ul> li:hover
        {
            background-color: lightgrey;
         
        }

    </style>

<body>
 <div class="board-postnav-side">
      <ul class="nav flex-column " id ="sidebar">
           <li class="nav-item  border border-light">
                <a class="nav-link active" href="#">공지사항</a>
           </li>
           <li class="nav-item border border-light">
              <a class="nav-link" href="#">회원관리</a>
           </li>
           <li class="nav-item border border-light">
              <a class="nav-link" href="#">매출관리</a>
           </li>
           <li class="nav-item border border-light">
              <a class="nav-link" href="#">1:1문의 내역</a>
           </li>         
      </ul>
</div>
</body>
</html>