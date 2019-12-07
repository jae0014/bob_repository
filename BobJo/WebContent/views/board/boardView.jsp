<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "post.model.vo.Post"%>
<!DOCTYPE html>
<html>
<%
	
%>
	
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../common/bootstrap.jsp" %>
  <body>
       
        <div class = "board-post">  
            
            
        <div style="width: 100%;" class="margin-padding-zero">

                <div class="boardTItle text-left margin-padding-zero">
                  
                </div>
                <div class="boardTItle  text-left margin-padding-zero" style="width: 70%;">
                    자유 게시판
                </div>
        </div>

         <!-- 게시판 & 네비게이션 -->
        <div style="width: 100%; ">
        

            <!-- 네비게이션 -->
            <div class="board-postnav-side">
                <ul class="nav flex-column " id ="sidebar">
                    <li class="nav-item  border border-light">
                              <a class="nav-link active" href="#">자유 게시판</a>
                    </li>
                    <li class="nav-item border border-light">
                              <a class="nav-link" href="#">요리 게시판</a>
                    </li>         
                </ul>
            </div>


            <!-- 게시판 글 -->
            <div class=" board-post-list table-responsive" ">
                <table class="table table-sm" border="1" >
                    <caption>자유 게시판 </caption>
                        <thead>
                                <tr>
                                    <th scope="col" style="width: 7%;" >번호</th>
                                    <th  class = "mycolSize" scope="col" >제목</th>
                                    <th scope="col"  >작성자</th>   
                                    <th scope="col" >작성일</th>   
                                  </tr>
                        </thead>
                        <tbody>
                                <tr>
                                    <td style="width: 7%;">1</th>
                                    <td class = "mycolSize">Mark</td>
                                    <td class = "mycolSize2">Otto</td>
                                    <td class = "mycolSize2">@mdo</td>
                                </tr>



                              

                             

                        </tbody>
                        <tfoot>
                            <tr >
                                <td colspan="4">

                                    <nav aria-label="..." style="display: inline-block;">
                                       
                                        <ul class="pagination pagination-sm  justify-content-center"
                                            style="margin: 0;" >  
                                            <li class="page-item disabled">
                                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>

                                            <li class="page-item active">
                                                <a class="page-link" href="#" tabindex="-1">1</a>
                                            </li>

                                            <li class="page-item ">
                                                    <a class="page-link" href="#" >2</a>
                                            </li>

                                            <li class="page-item disabled">
                                                    <a class="page-link " href="#">Next</a>
                                            </li>
                                        </ul>
                                    </nav>
                                    <button  class="btn" type="button"  style="float: right; background-color: rgb(170,57,57); color:white">글쓰기</button>
                                </td>
                            
                            </tr>
                        </tfoot>
                </table>
            </div>
            
           
        </div>
    </div>
    </body>
</html>