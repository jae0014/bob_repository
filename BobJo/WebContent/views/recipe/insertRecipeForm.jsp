<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!--부트스트랩-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
	integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
	integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
	crossorigin="anonymous"></script>


<title>Insert title here</title>

</head>
<style>



	table {
	margin:auto;
	 border-spacing: 30px;
  border-collapse: separate;
  font-size:17px;
	}

	div , table{

	}
	
	.ing {
	width:20px;
	display:inline-block;
	}
	
	.ingr{
	width:100px;
	}
	
	.step{
	display:inline-block;
	}
	
	.btn{
	width:20px;
	height:20px;
	}

	 #div1,#div2{
            width:300px;
            height: 200px;
            display:inline-block;
            border:1px solid lightgrey;
        }

        .file{
            width:100%;
            height: 100%;
            opacity:0;
        }

        img{
            width:100%;
            height: 100%;
        }
        
        
        td{
       font-weight:bold;
      /* border:1px solid red;*/
        }
        
        .plus{
        width:30px;
        height:30px;
        margin-left:-16px;
        margin-top:-25px;
        }
        
        select > option{
        height:50px;
        }
        
        .exex, .div {
        display:inline-block;
        float:left;
        }
        
        img{
        width:100%;
        height:100%;
        }
   
        
      
        
</style>


<body>
	<%@include file= "../common/menubar.jsp" %>
	
	<br><br>
	
	
	<table>
		<tr>
			<td width="200">레시피 제목</td>
			<td><input type="text" maxlengh="30" placeholder="예) 소고기 미역국 끓이기"  style="width:600px; height:50px"></td>
			
		</tr>
		<tr>
			<td>요리 소개</td>
			<td><textarea cols="30" style="width:600px; height:200px" placeholder="간단한 요리 설명을 적어주세요."></textarea>
		</tr>
	<tr>
			<td>카테고리</td>
			<td><select>
				<option selected="selected" disabled">종류별</option>
				<option>한식</option>
				<option>중식</option>
				<option>양식</option>
				<option>일식</option>
				<opiton>기타</opiton>
			</select>
			<select>
				<option selected="selected" disabled>방법별</option>
				<option>볶음</option>
				<option>끓이기</option>
				<option>부침</option>
				<option>조림</option>
				<opiton>무침</opiton>
				<option>비빔</option>
				<option>찜</option>
				<option>절임</option>
				<option>튀김</option>
				<opiton>삶기</opiton>
				<option>굽기</option>
				<option>데치기</option>
				<option>회</option>
				<opiton>삶기</opiton>
				
				
			</select>
			<select>
				<option selected="selected" disabled>재료별</option>
				<opiton>정육</opiton>
				<option>수산,해산,건어물</option>
				<option>면,양념,오일</option>
				<option>계랸,유제품</option>
				<option>견과,쌀</option> 
				<option>채소</option>
				<option>과일</option>
				<option>기타</option>
				
			
			</select>
			<tr>
			
			<td>요리정보</td>
			<td><select>
				<option selected="selected" disabled>시간</option>
				<option>10분 이내</option>
				<option>30분 이내</option>
				<option>60분 이내</option>
				<option>60분 이상</option>
			</select>
			<select>
				<option selected="selected" disabled>난이도</option>
				<option>쉬움</option>
				<option>중간</option>
				<option>어려움</option>
			
				
			</select>
			</td>
			</tr>
			
			<tr>
			<td>재료</td>
			<td>
			<div class="whole">
			<div class="ing btn"><img class="plus" src="../../resources/images/plus.png"></div>&nbsp;<input class="ingr" type="text" placeholder="예)돼지고기" style="width:200px">&nbsp;<input class="ingr" type="text"  placeholder="예300g" style="width:200px"></td>
			</div>
			</tr>
			<tr>
			<td>요리순서</td>
			<td>
			<div class="step">
			<div class="step btn"><img class="plus"  src="../../resources/images/plus.png"></div>
			<h3 style="color:green">Step 1</h3>&nbsp;
			<div class="exex"><textarea cols="30" style="width:400px; height:200px" placeholder="예) 소고기는 기름기를 떼어내고 적당한 크기로 잘라주세요"></textarea>
			</div>
			<div class="div" id="div2" style="width:300px; height:200px;"><input type="file" id="file2" class="file"></div>
			</div>
			</td>
			</tr>
			<tr>
			<td>요리완성사진</td>
			<td>
			<div class="finish">
			<div class="finish btn"><img class="plus" src="../../resources/images/plus.png"></div>
			<div id="div1"><input type="file" id="file1" class="file" ></div>
			</div>
			</td>
			</tr>
		
	
	</table>
	
	
	 <input type="submit" value="등록하기">
	 <input type="reset" value="취소하기">

        
	<script>
	$("#file1").change(function(){
    if(this.files && this.files[0]){
     var reader = new FileReader();
        reader.readAsDataURL(this.files[0]);

        reader.onload = function(){
        	     $("#div1").html("<img src=" + reader.result + ">");
        }

    }
});
	
	
	
	$("#file2").change(function(){
	    if(this.files && this.files[0]){
	     var reader = new FileReader();
	        reader.readAsDataURL(this.files[0]);

	        reader.onload = function(){
	        	     $("#div2").html("<img src=" + reader.result + ">");
	        }

	    }
	});

	
</script>

<br><br>
<%@include file= "../common/footer.jsp" %>
</body>
</html>