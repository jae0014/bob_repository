<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"  import = "post.model.vo.*"%>
    <%
    	Post p = (Post)request.getAttribute("postview");
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
    .submitBTN
    {
      float:right;
    }
    .updateBox
    {
      text-align:left;
      width:100%;
  	  padding-left:25%;
      padding-right:25%
     
    }
</style>
<body>
<%@ include file = "../common/menubar.jsp" %>

<div class="updateBox">

    <form>
        <div class="col-xs-8">
            <div class="form-group">
              <label for="display_name">제목</label>
              <input class="form-control" name="display_name" type="text" >
            </div>
            <div class="form-group">
              <label for="upload">첨부파일</label>
              <input class="form-control"  name="upload" type="file" >
            </div>
            <div class="form-group">
                <label for="URL">참고 레시피</label>
                <input class="form-control"  name="URL" type="text" >
              </div>
      <!-- Include the Quill library -->
      <div id="editor-container" style="height: 500px;">
    
      </div>
      <div style="width: 100%;">
        <button class = "submitBTN">작성하기</button>
      </div>
    </form>
    
</div>





  
  <!-- Initialize Quill editor -->
    <script>
    var quill = new Quill('#editor-container', {
  modules: {
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
  </script>
</body>
</html>