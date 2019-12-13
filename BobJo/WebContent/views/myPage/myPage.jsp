<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
</head>
<style>


.wraps {
	background: rgb(212, 106, 106);
	width: 80%;
	height: 50px;
	border-radius: 10px;
	margin: auto;
}

.navis {
	width: 80%;
	margin: auto;
	border-radius: 10px;
}

.menues {
	background: rgb(212, 106, 106);
	color: white;
	text-align: center;
	vertical-align: middle;
	width: 700px;
	height: 50px;
	display: table-cell;
	border-radius: 10px;
}

.menues:hover {
	background: rgb(128, 21, 21);
	color: rgb(255, 235, 235);
	font-weight: bold;
	cursor: pointer;
	border-radius: 10px;
}


</style>
<body>

	<div class="wraps">
		<div class="navis">
			<div class="menues" onclick="">프로필</div>
			<div class="menues" onclick="">레시피</div>
			<div class="menues" onclick="">댓글</div>
			<div class="menues" onclick="">내가 작성한 게시글</div>
			<div class="menues" onclick="">주문조회</div>
			<div class="menues" onclick="">회원정보수정</div>
		</div>
	</div>
	<br>
	<br>

</body>
</html>