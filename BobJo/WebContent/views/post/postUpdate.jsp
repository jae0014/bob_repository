<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "post.model.vo.*"%>
    <%
    	//Post p = (Post)request.getAttribute("postview");
    	//String edit = (String)request.getAttribute("edit");
    %>
<!DOCTYPE html>
<%@ include file = "../common/quillAPI.jsp" %>
<%@ include file = "../common/bootstrap.jsp" %>
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
             padding-left:25%;
             padding-right:25%
           
           
        }
        .board-post-list
        {
            
            width:100%;
            float: left;
            margin-top: 10px;
        }



        .board-postnav-side
        {   
            width:20%;
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
            font-size: 1.5em	;
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
           padding-left: 10%;
           padding-right: 10%;
       }
       .commentBox{
           width:100%;
         
           float:left;
       }
        .th
      {
      	  
      	  background-color: lightgrey;
      }
      .commentShow
      {
      	 display: none;
      }
    
    .submitBTN
    {
      float:right;
      background-color:lightgrey;
    }
    .updateBox
    {
      width:80%;
      padding-left: 10%;
      padding-right: 10%;
      padding-top : 3%;
      margin:auto;
    }
</style>

<body>
<%@ include file = "../common/menubar.jsp" %>

    <div class="updateBox">
    
     
            <div class="col-xs-8">
                <div class="form-group">
                  <label for="display_name">제목</label>
                  <input class="form-control" name="display_name" type="text" >
                </div>
           		
           		
                <div class="form-group">
                    <label for="URL">참고 레시피</label>
                    <input class="form-control"  name="URL" type="text" >
                  </div>
                  <div class="form-group">
                  	<label for="display_name">작성자:</label>
                  	
                  </div>
          <!-- Include the Quill library -->
          <div id="editor-container" style="height: 500px;">
        
          </div>
          <div style="width: 100%;">
          
            <button class = "btn submitBTN" onclick= "getQuill()">작성하기</button>
        	
            <!-- 
            <button class = "btn submitBTN" onclick= "update()">수정하기</button>
             -->
          </div>
          

          <div id = "testBox">
            
          </div>
        

          
    </div>
    
    
    
    
    
      
      <!-- Initialize Quill editor -->
        <script>
        var quill = new Quill('#editor-container', {
      modules: {imageResize: {
          displaySize: true
        },
        toolbar: [
          [{ header: [1, 2, false] }],
          ['bold', 'italic', 'underline'],
          [{color: ["#000000", "#e60000", "#ff9900", "#ffff00", "#008a00", "#0066cc", "#9933ff", "#ffffff", "#facccc", "#ffebcc", "#ffffcc", "#cce8cc", "#cce0f5", "#ebd6ff", "#bbbbbb", "#f06666", "#ffc266", "#ffff66", "#66b966", "#66a3e0", "#c285ff", "#888888", "#a10000", "#b26b00", "#b2b200", "#006100", "#0047b2", "#6b24b2", "#444444", "#5c0000", "#663d00", "#666600", "#003700", "#002966", "#3d1466", 'custom-color']}
          ,{ background: ["#000000", "#e60000", "#ff9900", "#ffff00", "#008a00", "#0066cc", "#9933ff", "#ffffff", "#facccc", "#ffebcc", "#ffffcc", "#cce8cc", "#cce0f5", "#ebd6ff", "#bbbbbb", "#f06666", "#ffc266", "#ffff66", "#66b966", "#66a3e0", "#c285ff", "#888888", "#a10000", "#b26b00", "#b2b200", "#006100", "#0047b2", "#6b24b2", "#444444", "#5c0000", "#663d00", "#666600", "#003700", "#002966", "#3d1466", 'custom-color'] }],
          ['image']
          
        ]
      }, 
      
      theme: 'snow'  // or 'bubble'
    });
    function getQuill()
    {  
      var quill_object =   quill.container.firstChild.innerHTML;
      var textarea = document.createElement('textarea');
      textarea.name = 'quillData';
      textarea.id = 'quillData';
      var newTxt = document.getElementById('quillData');
      newTxt.value = quill_object;
      console.log(textarea);
     //location.href =  "<%=request.getContextPath()%>/post.insert";

    }
    function update()
    {
        var quill_object =   quill.container.firstChild.innerHTML;
        
    }


      </script>
    </body>
</html>