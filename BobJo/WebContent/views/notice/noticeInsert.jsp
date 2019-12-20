<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="member.model.vo.*, java.util.ArrayList, order.model.vo.Order"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
<%-- <%@ include file="../common/quillAPI.jsp"%> --%>
    <!-- Main Quill library -->
    <link href="resources/API/quill/quill.snow.css" rel="stylesheet">
    <script src="resources/API/quill/quill.min.js"></script>
    <script src="resources/API/quill/quill.js"></script>
    <script src ="resources/API/quill/image-resize.min.js"></script>
<title>Insert title here</title>


<style>
*{
	border-sizing:box-sizing;
}
.question_link{
	background: #f9f9f9;
}
.outer_m{
	display: block;
	width: 1050px;
	height: 800px;
	border:1px solid red;
	margin:auto;
	/* magin-left:300px; */
}

/*사이드메뉴 영역*/
.content1{
	width: 25%;
	height: 100%;
	display: inline-block;
	float:left;
	border:1px solid green;;
}
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
	float: left;
	margin-top: 10px;
}

.board-postnav-side {
	width: 200px;
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

.commentShow {
	display: none;
}

.submitBTN {
	float: right;
}

.updateBox {
	width: 80%;
	padding-left: 10%;
	padding-right: 10%;
	padding-top: 3%;
	margin: auto;
}




.qna_table{
width: 1050px;

height: 700px;
}

.sub_cols{
width: 80px !important;
text-align: center;
background: #f9f9f9;
}
/* td :first-child{
width: 40px;
} */

.warning_txt{
font-size:12px;
padding: 3px;
}


.modal_select_btn, .submitBTN, .order_select_btn{
width: 80px !important;
height: 30px !important;
	background: rgb(170, 57, 57) !important;
	border: none !important;
	border-radius: 3px;
	font-size: 12px !important;
	color:white !important;
}

.orderList_div{
	width: 450px;
	border: 1px solid red;
	margin: auto;
	
}
.orderList_table th{
	background: #f9f9f9;
	font-size: 15px;
}
.orderList_table{
	width: 100%;
	text-align: center;
	
}
.orderCols{
width: 20%;

}
.oDateCols{
width: 30%;
}
.priceCols{
width: 40%;
}

.chCols{
width: 10%;
}

td{
padding: 3px;
}

.qTitle{
width: 100%;
font-size: 14px;
}

.custom-select{
width: 100px !important;
border: 1px solid rgb(170, 57, 57) !important;
font-size: 14px !important;
margin-bottom:3px !important;
}

</style>
</head>
<body>
	<%@ include file="../common/menubar.jsp"%>
	<%@ include file="../common/bootstrap.jsp"%>

	<form action="<%=request.getContextPath()%>/insert.qna" method="post"
		id="postInsert">
		<div class="updateBox">
		<%-- <input type="hidden" name="mId" value="<%=loginUser.getmId() %>"> --%>
		<input type="hidden" name="quillData" value="11">
			<table border="1" class="qna_table">
				<tr>
					<th class="sub_cols">제목</th>
					<td>							
						<!-- 제목 쓰는 칸 -->
						<input class="qTitle" type="text" name="qTitle">
					</td>
				</tr>				
				<tr>
					<td colspan="2">
				
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

				<input type="hidden" name="writer" value="">
				<input type="hidden" name="quillData" value="11">

			</div>
			</div>
	</form>


<!-- Modal -->
<div class="modal fade ttt" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalCenterTitle">내 주문번호 조회하기</h5>
        <button type="button" class="close modal_close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>


    </div>
  </div>
</div>


<script>
/* <!-- Initialize Quill editor --> */
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
								color : [ "#000000", "#e60000",
										"#ff9900", "#ffff00",
										"#008a00", "#0066cc",
										"#9933ff", "#ffffff",
										"#facccc", "#ffebcc",
										"#ffffcc", "#cce8cc",
										"#cce0f5", "#ebd6ff",
										"#bbbbbb", "#f06666",
										"#ffc266", "#ffff66",
										"#66b966", "#66a3e0",
										"#c285ff", "#888888",
										"#a10000", "#b26b00",
										"#b2b200", "#006100",
										"#0047b2", "#6b24b2",
										"#444444", "#5c0000",
										"#663d00", "#666600",
										"#003700", "#002966",
										"#3d1466", 'custom-color' ]
							},
							{
								background : [ "#000000", "#e60000",
										"#ff9900", "#ffff00",
										"#008a00", "#0066cc",
										"#9933ff", "#ffffff",
										"#facccc", "#ffebcc",
										"#ffffcc", "#cce8cc",
										"#cce0f5", "#ebd6ff",
										"#bbbbbb", "#f06666",
										"#ffc266", "#ffff66",
										"#66b966", "#66a3e0",
										"#c285ff", "#888888",
										"#a10000", "#b26b00",
										"#b2b200", "#006100",
										"#0047b2", "#6b24b2",
										"#444444", "#5c0000",
										"#663d00", "#666600",
										"#003700", "#002966",
										"#3d1466", 'custom-color' ]
							} ], [ 'image' ]

			]
		},

		theme : 'snow' // or 'bubble'
	});
	function getQuill() {
		var quill_object = quill.container.firstChild.innerHTML;
		$("input[name=quillData]").val(quill_object);
		//insert 폼 제출
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