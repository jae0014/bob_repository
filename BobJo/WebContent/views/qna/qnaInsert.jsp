<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.*,qna.model.vo.*"%>
<%
	//Member loginUser = (Member)session.getAttribute("loginUser");
	Qna qna = null;
	// String nPost = request.getParameter("pId");
	//int type = Integer.parseInt(request.getParameter("typeOfBoard"));
%>
<!DOCTYPE html>
<%@ include file="../common/quillAPI.jsp"%>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>


<style>
.board-post {
	width: 100%;
	padding: 0px;
	margin: 0px;
	height: 500px;
	text-align: center;
	padding-left: 25%;
	padding-right: 25%
}

.board-post-list {
	width: 100%;
	float: left;
	margin-top: 10px;
}

.board-postnav-side {
	width: 20%;
	height: 350px;
	float: left;
	margin: 10px;
	background-color: rgb(255, 243, 239);
	border: 1px solid black;
}

.board-postnav-side>ul>li>a {
	color: black;
}

.board-postnav-side>ul>li>a:hover {
	color: red;
}

.board-postnav-side>ul>li:hover {
	background-color: lightgrey;
}

.mycolSize {
	width: 70%;
}

.mycolSize2 {
	width: 10%;
}

.titles {
	width: 100px;
}

.boardTItle {
	display: inline-block;
	font-size: 1.5em;
}

.text-left {
	text-align: left;
	width: 20%;
}

.margin-padding-zero {
	margin: 0;
	padding: 0;
	padding-left: 10%;
	padding-right: 10%;
}

.commentBox {
	width: 100%;
	float: left;
}

.th {
	background-color: lightgrey;
}

.commentShow {
	display: none;
}

.submitBTN {
	float: right;
	background-color: lightgrey;
}

.updateBox {
	width: 80%;
	padding-left: 10%;
	padding-right: 10%;
	padding-top: 3%;
	margin: auto;
}




.qna_table{
width: 500px;

height: 700px;
}

.cols1{
width: 80px;

}
/* td :first-child{
width: 40px;
} */
</style>

<body>
	<%@ include file="../common/bootstrap.jsp"%>
	<%@ include file="../common/menubar.jsp"%>

	<form action="<%=request.getContextPath()%>/insert.qna" method="post"
		id="postInsert">
		<div class="updateBox">

			<table border="1" class="qna_table">
				<tr>
					<td rowspan="2" class="cols1">제목</td>
					<td>
						<div class="dropdown">
							<button class="btn btn-secondary dropdown-toggle" type="button" id="dropdownMenuButton" data-toggle="dropdown"
								aria-haspopup="true" aria-expanded="false">선택해주세요</button>
							<div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
								<a class="dropdown-item" href="#" valu e="1">배송</a> <a
									class="dropdown-item" href="#" value="2">교환</a>
							</div>
						</div>
					</td>
				</tr>
				<tr>
					<td><input class="form-control" name="display_title"
						type="text"></td>
				</tr>
				<tr>
				<td>
				주문번호
				</td>
				<td>
				<input type="text" class="oId" name="oId">
				<button type="button" class="order_select_btn btn-primary">주문조회</button>
				</td>
				</tr>
				<tr>
				<td>이메일</td>
				<td><input type="text" value="<%= loginUser.getEmail()%>" readonly>
					<input type="checkbox" name="chk_email_answer"><lable style="font-size:12px">답변수신을 문자메세지로 받겠습니다.</lable>
				</td>
				
				</tr>
				<tr>
				<td>내용</td>
				<td>
				<pre>
				<b>1:1 문의 작성 전 확인해주세요!</b>

반품 / 환불
- 제품 하자 혹은 이상으로 반품(환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.

주문취소
- 배송단계별로 주문취소 방법이 상이합니다.
[입금확인]단계 : [마이페이지 > 주문내역 상세페이지]에서 직접 취소 가능
[입금확인] 이후 단계 : 고객행복센터로 문의

- 생산이 시작된[상품 준비중]이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.
- 비회원은 모바일 App 또는 모바일 웹사이트에서 [마이페이지 > 비회원 주문 조회 페이지]에서 취소가 가능합니다.
- 일부 예약상품 배송 3~4일 전에만 취소 가능합니다.
- 주문상품의 부분취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요

배송
- 주문완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.
- 배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)
* 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.
				
				</pre>
				
				
				<!-- Include the Quill library -->
				<div id="editor-container" style="height: 500px;"></div>
				<div style="width: 100%;">
					<button class="btn submitBTN" onclick="getQuill()">작성하기</button>
				</div>


				<div id="testBox"></div>
				
				</td>
				</tr>
			</table>
			<div class="form-group">

				<input type="hidden" name="writer" value=""> <input
					type="hidden" name="quillData" value="11">

				<div class="col-xs-8">
					<div class="form-group">
						<label for="display_title">제목</label> <input class="form-control"
							name="display_title" type="text">
					</div>


					<div class="form-group">
						<label for="URL">주문내역</label> <input class="form-control"
							name="URL" type="text">
					</div>


				</div>
				<!-- Include the Quill library -->
				<div id="editor-container" style="height: 500px;"></div>
				<div style="width: 100%;">
					<button class="btn submitBTN" onclick="getQuill()">작성하기</button>
				</div>


				<div id="testBox"></div>



			</div>
	</form>





	<!-- Initialize Quill editor -->
	<script>
		var quill = new Quill('#editor-container', {
			modules : {
				imageResize : {
					displaySize : true
				},
				toolbar : [
						[ {
							header : [ 1, 2, false ]
						} ],
						[ 'bold', 'italic', 'underline' ],
						[
								{
									color : [ "#000000", "#e60000", "#ff9900",
											"#ffff00", "#008a00", "#0066cc",
											"#9933ff", "#ffffff", "#facccc",
											"#ffebcc", "#ffffcc", "#cce8cc",
											"#cce0f5", "#ebd6ff", "#bbbbbb",
											"#f06666", "#ffc266", "#ffff66",
											"#66b966", "#66a3e0", "#c285ff",
											"#888888", "#a10000", "#b26b00",
											"#b2b200", "#006100", "#0047b2",
											"#6b24b2", "#444444", "#5c0000",
											"#663d00", "#666600", "#003700",
											"#002966", "#3d1466",
											'custom-color' ]
								},
								{
									background : [ "#000000", "#e60000",
											"#ff9900", "#ffff00", "#008a00",
											"#0066cc", "#9933ff", "#ffffff",
											"#facccc", "#ffebcc", "#ffffcc",
											"#cce8cc", "#cce0f5", "#ebd6ff",
											"#bbbbbb", "#f06666", "#ffc266",
											"#ffff66", "#66b966", "#66a3e0",
											"#c285ff", "#888888", "#a10000",
											"#b26b00", "#b2b200", "#006100",
											"#0047b2", "#6b24b2", "#444444",
											"#5c0000", "#663d00", "#666600",
											"#003700", "#002966", "#3d1466",
											'custom-color' ]
								} ], [ 'image' ]

				]
			},

			theme : 'snow' // or 'bubble'
		});
		function getQuill() {
			var quill_object = quill.container.firstChild.innerHTML;
			$("input[name=quillData]").val(quill_object);

			$("#postInsert").submit();
		}
		function update() {
			var quill_object = quill.container.firstChild.innerHTML;
			$("input[name=quillData]").val(quill_object);

			$("#postInsert").submit();
		}
	</script>
</body>
</html>