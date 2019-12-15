<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<style>

	 #div1,#div2{
            width:300px;
            height: 300px;
            display:inline-block;
            border:1px solid lightgrey;
        }

        .file{
            width:100%;
            height: 100%;
            opacity:0;
        }
        
        #div1{
        background: url('<%= request.getContextPath() %>/resources/images/useruser.png') no-repeat;
        background-size:cover;
        }
        
        
         .insert{
            width:100%;
            height: 100%;
        }
        
        
  
       
</style>
<body>

	
	<form action="<%= request.getContextPath() %>/insert.pr" method="post">
	<br>
	<div class="contents" style="margin-left:15%">
	<div id="div1"><input type="file" id="file1" class="file" ></div>
	
	<div class="introduce">
	<br>
	<input type="text" placeholder="자기소개를 입력해주세요" style="width:300px">
	</div>
	</div>
	
	
	<br>
			<div align="center">
					<button id="submit" type="submit">등록하기</button>
					<button type="button" onclick="window.close()">취소하기</button>
				</div>
				
	</form>
	

	<script>

	$("#file1").change(function(){
	if(this.files && this.files[0]){
	 var reader = new FileReader();
	    reader.readAsDataURL(this.files[0]);
	
	    reader.onload = function(){
	    	     $("#div1").html("<img class='insert' src=" + reader.result + ">");
	    }
	
	}
	});
</script>


</body>	
</html>