<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

.whole{
width:80%;
height:50%;
margin:auto;


}

	
	.tab1{
	width:50%;
	height:50px;
	text-align:center;
	border-radius:5px;
	display:table-cell;
	vertical-align:middle;
	background-color:rgb(255, 235, 235);
	color:rgb(85, 0, 0);

	}
	
	
	
	
	.tab1:hover{
	background-color:rgb(212,106,106);
	cursor:pointer;
	}



.content{
border-radius:5px;
width:100%;
height:90%;
border:1px solid grey;
}

.info{
border-radius:10px;
background-color:rgb(212,106,106);
color:white;
}

.userName, .userLevel{
color:rgb(128, 21, 21);
}

.info,.userName,.userLevel{
display:inline-block;
}

div{
border:1px solid red;
}






</style>
<body>
	<%@include file = "../common/menubar.jsp" %>
	<%@include file= "../common/bootstrap.jsp" %>
	
	<br><br>
	<%@include file="myPage.jsp" %>
	
	<div class="whole">
	<div class="tab1">회원정보수정</div>
	<div class="content">
	<br>&nbsp;&nbsp;
	<div class="info">
	<div class="userName">홍길동</div>님은
	<div class="userLevel">silver</div>레벨입니다.
	</div>
	<!-- <table>
	<tr>
		<th>아이디</th>
		<td><input type="text"></td>
	</tr>
	<tr>
		<th>비밀번호</th>
		<th><input type="password"></th>
	</tr>
	<tr>
		<th>비밀번호확인</th>
		<td><input type="password"></td>
	</tr>
	<tr>
		<th>이름</th>
		<td><input type="text"></td>
	</tr>
	<tr>
		<th>주소</th>
		<td><input typ="text"></td>
	</tr>
	<tr>
		<th>번호</th>
		<td><input type="tel"></td>
	</tr>
	<tr>
		<th>이메일</th>
		<td><input type="email"></td>
	</tr>
	

	
	</table> -->
	
	
	<table class="table">

<tr>

	<td align="center" valign="middle">

		<form name="regForm" method="post" action="modify_member_action.jsp">
		
		<br><br>

			<table >

				
				<tr>

					<td width="16%">아이디</td>

					<td width="57%">

						<input type="text" name="id" size="15" style="background-color: lightgray" readonly="readonly" value = ""> 

					</td>

				</tr>

				<tr>

					<td>패스워드</td>

					<td><input type="password" name="pass" size="15" value=""></td>

				</tr>

				<tr>

					<td>패스워드 확인</td>

					<td><input type="password" name="repass" size="15"></td>

				</tr>

				<tr>

					<td>이름</td>

					<td><input type="text" name="name" size="15" value=""></td>

				</tr>

				<tr>

					<td>이메일</td>

					<td><input type="text" name="mail" size="27" value=""></td>

				</tr>

				<tr>

					<td>전화번호</td>

					<td><input type="text" name="phone" size="20" value=""></td>

				</tr>

				<tr>

					<td>우편번호</td>

					<td>

						<input type="text" name="zipcode" size="7" value=""> 

						<input type="button" value="우편번호찾기" id="btnZip" >

					</td>

				</tr>

				<tr>

					<td>주소</td>

					<td><input type="text" name="address" size="60" value=""></td>

				</tr>

				<tr>

					<td>직업</td>

					<td>

						<select name="job" onselect="기타" onshow="기타" >

							<option value="0">선택

							<option value="회사원">회사원

							<option value="학생">학생

							<option value="자영업">자영업

							<option value="주부">주부

							<option value="기타">기타

						</select>

					</td>

				</tr>

				<tr>

					<td colspan="2" align="center">

						<input class="btn" type="button" value="수정완료" id="btnModify" style="background-color:rgb(212,106,106); color:white"/>

						&nbsp;&nbsp;

						<input class="btn" type="button" value="수정취소" id="btnModifyCancel" style="background-color:rgb(212,106,106); color:white"/>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input class="btn" type="button" value="회원탈되" id="btnDelete" style="background-color:rgb(212,212,212)" />

					</td>

				</tr>

			</table>

		</form>

	</td>

</tr>

</table>




	
	
	</div>
	</div>
	
	<br><br>
	
	<%@include file="../common/footer.jsp" %>


</body>
</html>