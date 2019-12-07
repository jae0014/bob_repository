<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import = "java.util.ArrayList,post.model.vo.Post, common.vo.*"%>


<%
	ArrayList<Post> list = (ArrayList<Post>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");

	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="../common/bootstrap.jsp" %>
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
        .mycolSize
        {
            width: 70%;
        }
        .mycolSize2
        {
            width: 10%;
        }
        .titles{
            width: 100px;

        }

        .boardTItle
        {
            display: inline-block;
            font-size: 1.5em;
        }
       .text-left
       {
        text-align: left;
        width: 20%;
       }
       .margin-padding-zero
       {
           margin: 0;
           padding: 0;
       }
    </style>
  <body>
       
     <div class = "board-post">  
            
            
        

         <!-- 게시판 & 네비게이션 -->
        <div style="width: 100%; ">
        
        	<!-- 게시판이 있다면  -->
			<%  if(list != null){ %>
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
                    <caption id = "boardTypeTitle">자유 게시판 </caption>
                        <thead>
                        		<tr>
                                    <th colspan="4" id = "boardTypeTitle">자유 게시판</th>
                                </tr>
                                <tr>
                                    <th scope="col" style="width: 7%;" >번호</th>
                                    <th  class = "mycolSize" scope="col" >제목</th>
                                    <th scope="col"  >작성자</th>   
                                    <th scope="col" >작성일</th>   
                                  </tr>
                        </thead>
                        <tbody>
                        		<% for(int i = 0; i <list.size();i++){
                        			int num = i +1;%>
                                <tr>
                                    <td style="width: 7%;"><%=num %></td>
                                    <td class = "mycolSize"><%=list.get(i).getpTitle()%></td>
                                    <td class = "mycolSize2"><%=list.get(i).getpWriter()%></td>
                                    <td class = "mycolSize2">@<%=list.get(i).getpDateWritten()%></td>
                                </tr>
								<%}%>
                        </tbody>
                        <tfoot>
                            <tr >
                                <td colspan="4">

                                    <nav aria-label="..." style="display: inline-block;">
                                       
                                        <ul class="pagination pagination-sm  justify-content-center"
                                            style="margin: 0;" >  
                                            
                                            
											
											<!-- 이전 페이지로 (<) -->
											<% if(currentPage == 1){ %>
											<li class="page-item disabled">
                                                     <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>
											<% } else { %>
											<li class="page-item">
                                                        <a class="page-link" href="#" tabindex="-1">Previous</a>
                                            </li>
											
											<% } %>
											<!-- 이전 페이지로  끝 -->
											
											
											
											
											<!--  페이지 목록 -->
										<% for(int p = startPage; p <= endPage; p++){ %>
											<% if(p == currentPage){ %>
													<li class="page-item active">
                                                <a class="page-link" href="#" tabindex="-1"><%= p%></a>
                                            </li>
											<% } else
											{ %>
												<li class="page-item ">
                                                <a class="page-link" href="#" ><%= p%></a>
                                            </li>											
                                            <% } %>
											<% } %>
											<!--  페이지 목록 끝 -->
      			
      			
      			
      			
											<!-- 다음 페이지로(>) -->
											<% if(currentPage == maxPage) { %>
                                            <li class="page-item disabled">
                                                    <a class="page-link " href="#">Next</a>
                                            </li>
                                            <% } else { %>
                                             <li class="page-item">
                                                    <a class="page-link " href="#">Next</a>
                                            </li>
                                       
                                            <% } %>
                                            <!-- 다음페이지 끝 -->
                                            
                                        </ul>
                                    </nav>
                                    
                                    <button  class="btn" type="button"  style="float: right; background-color: rgb(170,57,57); color:white">글쓰기</button>
                                </td>
                            
                            </tr>
                        </tfoot>
                </table>
            </div>
                	<!-- 게시판이 없다면  -->
            <%} else { %>
            	<p>없음 </p>
           <% }%>
        </div>
        
    </div>
    
    
    </body>
</html>