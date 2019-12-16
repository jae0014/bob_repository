<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/operate.css">
</head>
<style>
tr, td{
/* border:1px solid red; */
}

td{
width:100px !important;
}

/* table{
border:1px solid lightgrey;

} */


</style>
<body>

	
	<p style="font-size:20px; font-weight:bold">비밀번호 변경</p>
	<br>
	
	<p>비밀번호를 입력해 주세요.</p>
	<div class="tb" style="width:400px;">
	<table class="common-write">
	<colgroup>
				<col width="30%">
				<col width="*">
			</colgroup>
			<tbody>
			
	<tr>
		<td>현재 비밀번호</td>
		<td><input type="password"></td>
	</tr>
	<tr>
		<td>변경할 비밀번호</td>
		<td><input type="password"></td>
	</tr>
	<tr>
		<td>새로운 비밀번호 재입력</td>
		<td><input type="password"></td>
	</tr>
	</tbody>
	</table>
	<div class="btn-area">
			<input type="submit" value="수정하기" alt="수정하기" class="buttom_m main_k_buttom">
			<button class="buttom_m sub_k_buttom" onclick="window.close();">취소</a>
		</div>
</div>

</body>
</html>