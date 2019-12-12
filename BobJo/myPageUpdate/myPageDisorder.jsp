<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/master.css">
<link rel="stylesheet" href="css/operate.css">
<link href="https://fonts.googleapis.com/css?family=Gothic+A1&display=swap" rel="stylesheet">


<script>
var templet_src='/data/enterdev_data/templet/bienbien';
var front_language='korean';
</script>
<script src="library.js"></script>
<script src="ui.js"></script>
<script src="basic_head.js"></script>


<script src="mypage.js"></script>

</head>
<style>

div{
/* border:1px solid red; */
}
.part1,.mypage-contents,.sub-container{
diplay:inline-block;
/* border:1px solid red; */
height:100%;
}

.wholewhole{
width:85%;
height:1100px;
margin:auto;
/* border:1px solid blue; */

}

.part1{
width:20%;
height:100%;
float:left;



}

.mypage-contents{
width:50%;
float:left;


}




.content{
border-radius:5px;
width:100%;
height:90%;
border:1px solid grey;
}

.myprofile{

width:25%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
}

.background,.text{
height:50%;
}


.pic{
width:30%;
height:30%;
border-radius:50%;
margin-top:-12%;
margin-left:33%;
positon:relative;
z-index: 2;
}

.text{
margin-top:-12%;
}

.pf{
width:100%;
height:100%;
border-radius:50%;
position:relative; 
z-index:1;

}

.bg{
width:100%;
height:100%;
opacity:0.5;
z-index: -1;
}

.nickname{
margin-top:13%;
height:20%;
text-align:center;
font-size:40px;
margin-bottom:10px;

}

.introduce{
text-align:center;
font-size:20px;

}

.myprofile{

width:80%;
height:70%;
margin:3% 5% 3% 3%;
border-radius:5px;
border:1px solid grey;
margin:auto;

}


.cover{
margin-left:10%;
background-color:grey;
border-radius:5px;
width:45%;


}








</style>
<body>
<%@include file ="../common/menubar.jsp" %>
<%@include file="../common/bootstrap.jsp" %>

<br><br>
<div class="wholewhole">
<div class="part1">
<article id="container" class='sub-container'>
		<div class='site-sub-top'>
			<!-- 추가 컨텐츠 [S] -->
			
			<!-- 추가 컨텐츠 [E] -->
		</div>
		<section class='site-sub-layout'>
			<nav class="lnb-area">
			<h1 class="subtit-heading">
	<a href="/mypage/">
		<span class="font-en">MY PAGE</span>
	</a>
</h1>

	<dl class="menu-sub-left">
	<dt>
		<a href="/mypage/profile.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		<a href="/mypage/order_history.php">나의 쇼핑 내역</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/order_history.php" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="/mypage/return_history.php" class=''>
					취소/반품/교환 현황
				</a>
			</li>
			<!--<li>
				<a href="/mypage/add_pay_history.php" class='' >
					추가결제 내역
				</a>
			</li>-->
		
		</ul>
	</dd>
	<dt>
		<a href="/mypage/coupon.php">나의 레시피 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/mileage.php" >
					내가 작성한 레시피
				</a>
			</li>

			<li>
				<a href="/mypage/coupon.php" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">댓글 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/recent_view.php"   >
					내가 작성한 댓글
				</a>
			</li>
			<li>
				<a href="/mypage/wishlist.php" >
					내가 받은 댓글
				</a>
			</li>
			
			<!--li>
				<a href="/mypage/event_favorite.php" >
					찜한 기획전/참여 이벤트
				</a>
			</li-->
		</ul>
	</dd>
	<dt>
		<a href="/mypage/wishlist.php">나의 커뮤니티</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/my_goods_inquiry.php" >
					내가 작성한 게시글
				</a>
			</li>
			<li>
				<a href="/mypage/mypage_bbs.php" >

					내가 작성한 후기

				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="/mypage/profile.php">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="/mypage/profile.php" class="on">
					회원정보수정
				</a>
			</li>
			<li>
				<a href="/mypage/addressbook.php" >
					배송지 관리
				</a>
			</li>
			<li>
				<a href="/mypage/secede.php"  >
					회원탈퇴
				</a>
			</li>
		</ul>
	</dd>
</dl>
</div>
<div class="mypage-contents">
<section class="wrap-shopping-info">
	<h2 class="hidden">회원 쇼핑정보</h2>
	<div class="shopping-info">
		<div class="area info01">
			<p>
				안녕하세요. 홍길동님<br>
				chef J를 이용해주셔서 감사합니다.
			</p>
		</div>
		<!-- <div class="area info02">
			<strong class="def">
				보유 적립금<br>
				<span class='bl-color'>2,000</span>원
			</strong>
		</div>
		<div class="area info03">
			<strong class="def">
				보유 쿠폰<br>
				<span class='bl-color'>0</span>장
			</strong>
		</div> -->
		
		
	</div>
</section>
<%--프로필 자리 --%>
<div class="wrap-recently-order">
		<h2>취소/교환/반품 검색</h2>
		<form name="searchform2">
			<table class="order-search">
				<caption>취소/교환/반품 검색</caption>
				<colgroup>
					<col width="15%">
					<col width="*">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">기간별</th>
						<td class="order-day">
							
		<span>
			<span>
				<input type='text' id='sDate' name='sDate' value='2019-12-12' style='width:65px;' class='date-pick inputbox_05 font-en' />
			</span>
			<span>
				<input type='text' id='eDate' name='eDate' value='2019-12-12' style='width:65px;' class='date-pick inputbox_05 font-en' />
			</span>
		</span>

				<div class='calrenda_btns'>
					<a href="javascript:sDate('2019-12-12','2019-12-12',1);" onFocus='this.blur();'class='btn_date today'>오늘</a>
					<a href="javascript:sDate('2019-12-05','2019-12-12',1);" onFocus='this.blur();'class='btn_date'>1주일</a>
					<a href="javascript:sDate('2019-11-13','2019-12-12', 1);" onFocus='this.blur();'class='btn_date'>1개월</a>
					<a href="javascript:sDate('2019-06-13','2019-12-12',1);" onFocus='this.blur();'class='btn_date'>6개월</a>
					<a href="javascript:sDate('2018-12-13','2019-12-12',1);" onFocus='this.blur();' class='btn_date'>1년</a>
				</div>

		<script type='text/javascript'>
		<!--
		function sDate(FromDate,ToDate,dType) {
			var frm = document.search_frm;
			$('#sDate').val(FromDate);
			$('#eDate').val(ToDate);
		}

		$(document).ready(function (){
			$('#sDate').datepicker({
				//changeMonth: true,
				//changeYear: true,
				monthNames: ['년 1월','년 2월','년 3월','년 4월','년 5월','년 6월','년 7월','년 8월','년 9월','년 10월','년 11월','년 12월'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				showMonthAfterYear:true,
				dateFormat: 'yy-mm-dd',
				buttonImageOnly: true,
				buttonText: '달력',
				//prevText: '先月',
				//nextText: '来月',
				//currentText: '今日',
				//monthNames: ['年 1月','年 2月','年 3月','年 4月','年 5月','年 6月','年 7月','年 8月','年 9月','年 10月','年 11月','年 12月'],
				//monthNamesShort: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
				//dayNames: ['日','月','火','水','木','金','土'],
				//dayNamesShort: ['日','月','火','水','木','金','土'],
				//dayNamesMin: ['日','月','火','水','木','金','土'],
				//weekHeader: 'Wk',
				//dateFormat: 'yy-mm-dd',
				//firstDay: 0,
				//isRTL: false,
				//showMonthAfterYear: true,
				//yearSuffix: '',

				onSelect: function(dateText, inst){
					if($('#eDate').val() != '' && $('#eDate').val() <= dateText){
						$('#eDate').val(dateText);
					}else{
						$('#eDate').datepicker('setDate','+0d');
					}
				}
			});

			$('#eDate').datepicker({
				//changeMonth: true,
				//changeYear: true,
				monthNames: ['년 1월','년 2월','년 3월','년 4월','년 5월','년 6월','년 7월','년 8월','년 9월','년 10월','년 11월','년 12월'],
				dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
				showMonthAfterYear:true,
				dateFormat: 'yy-mm-dd',
				buttonImageOnly: true,
				buttonText: '달력',
//				prevText: '先月',
//				nextText: '来月',
//				currentText: '今日',
//				monthNames: ['年 1月','年 2月','年 3月','年 4月','年 5月','年 6月','年 7月','年 8月','年 9月','年 10月','年 11月','年 12月'],
//				monthNamesShort: ['1月','2月','3月','4月','5月','6月','7月','8月','9月','10月','11月','12月'],
//				dayNames: ['日','月','火','水','木','金','土'],
//				dayNamesShort: ['日','月','火','水','木','金','土'],
//				dayNamesMin: ['日','月','火','水','木','金','土'],
//				weekHeader: 'Wk',
//				dateFormat: 'yy-mm-dd',
//				firstDay: 0,
//				isRTL: false,
//				showMonthAfterYear: true,
//				yearSuffix: '',

			});
		});
		//-->
		</script>
	
						</td>
					</tr>
					<tr>
						<th scope="row">주문상태</th>
						<td>
							<input type="checkbox" id="order_status_CA" name="order_status[]" value="CA" > <label for="order_status_CA">취소</label>
							<input type="checkbox" id="order_status_EA" name="order_status[]" value="EA" > <label for="order_status_EA">교환</label>
							<input type="checkbox" id="order_status_RA" name="order_status[]" value="RA" > <label for="order_status_RA">반품</label>
						</td>
					</tr>
					<tr>
						<th scope="row"><label for="od_search_text">상품명</label></th>
						<td>
							<input type="text" id="od_search_text" name="od_search_text" value="" style='width:343px;' title="">
						</td>
					</tr>
				</tbody>
			</table>
			<div class="mypage-sub-btn">
				<input type="submit" value="선택조건검색" title="선택조건검색" alt="선택조건검색" class='main_k_buttom buttom_m'>
				<a href="javascript:void(0);" id="check_all" class='sub_k_buttom buttom_m'>선택 해제하기</a>
			</div>
		</form>
	</div>
	<div class="wrap-recently-order">
		<h2>취소/교환/반품 리스트</h2>
		<table class="common-table2">
			<caption>취소/교환/반품 리스트</caption>
			<colgroup>
				<col width="14%">
				<col width="*">
				<col width="15%">
				<col width="13%">
				<col width="13%">
				<col width="12%">
			</colgroup>
			<thead>
				<tr>
					<th scope="col">주문일/주문번호</th>
					<th scope="col">상품명/옵션</th>
					<th scope="col">결제금액/수량</th>
					<th scope="col">배송비</th>
					<th scope="col">주문상태</th>
					<th scope="col">기타</th>
				</tr>
			</thead>
			<tbody>
					<tr>
						<td colspan="6" class="no-content">
							정보가 존재하지 않습니다..
						</td >
					</tr>
			</tbody>
		</table>
	</div>
	<div class="paging">
		
	</div>


</div>

</div>




<script src='/data/enterdev_data/templet/bienbien/js/join_input.js'></script>
<script>
function mailText(frm){
	if(frm.value == "etc"){
		document.getElementById('emailtext').style.display = 'inline';
	}else{
		document.getElementById('emailtext').style.display = 'none';
	}
}
function view_write(obj) {
	//alert(obj.checked);
	var join_frm=document.join_frm;
	if(join_frm.mail_view.checked) {
		document.getElementById("mail_02").style.display = "none";
		document.getElementById("mail_03").style.display = "";
		join_frm.mail_02.selectedIndex = 0;
		join_frm.mail_02.disabled = true;
		join_frm.mail_03.disabled = false;
		join_frm.mail_02.setAttribute("validation","false");//kbk
		join_frm.mail_03.setAttribute("validation","true");//kbk
	} else {
		document.getElementById("mail_02").style.display = "";
		document.getElementById("mail_03").style.display = "none";
		join_frm.mail_03.value = "";
		join_frm.mail_02.disabled = false;
		join_frm.mail_03.disabled = true;
		join_frm.mail_02.setAttribute("validation","true");//kbk
		join_frm.mail_03.setAttribute("validation","false");//kbk
	}
}
$(function() {
	var join_frm=document.join_frm;
	$('#id_check').click(function(){
		var PT_idtype =/^[a-zA-Z]{1}[a-zA-Z0-9_]+$/;
		//var PT_idtype =/^[a-z0-9_-]{4,12}$/;
		if(join_frm.id.value != ""){
			if(!PT_idtype.test(join_frm.id.value)){
				alert('아이디는 6~12자리의 영문, 숫자와 특수기호(_)만 사용하실 수 있습니다');
				// 아이디는 6~12자리의 영문, 숫자와 특수기호(_)만 사용하실 수 있습니다
				join_frm.id.focus();
				return false;
			}
			$.ajax({
				url: 'join_input.act.php',
				type: 'get',
				dataType: "html",
				data: ({act: "idcheck",
						id: $('#user_id').val()
				}),
				success: function(result){
				//alert(result);
					//alert(join_frm.id.value);
					if(result == "Y"){
						alert("사용가능한 아이디 입니다.");
						$('#id_flag').val('Y');
						$('#id_check_value').val(join_frm.id.value);//kbk
						$('#user_id').attr("dup_check","true");//kbk
					}else if(result == "X"){
						alert("가입불가 ID입니다. 다른 ID로 입력해주시기 바랍니다");
						//가입불가 ID입니다. 다른 ID로 입력해주시기 바랍니다
						$('#id_flag').val("");
						$('#id_check_value').val("");//kbk
						$('#user_id').attr("dup_check","false");//kbk
						return false;
					}else if(result=="N"){
						alert("사용할수 없는 아이디 입니다.");
						$('#id_flag').val("");
						$('#id_check_value').val("");//kbk
						$('#user_id').attr("dup_check","false");//kbk
						return false;
					} else {
						//alert(result);
						return false;
					}
				}

			});
		} else {
			join_frm.id.focus();
			alert("아이디가 비어있습니다.");
			return false;
		}
	});
});

function join_confirm(obj){
	check = CheckFormValue(obj);
	if(check) {
		/*
		if(obj.ipin_success.value=="Y" || obj.niceid_success.value=="Y"){
			obj.submit();
		} else {
			alert("본인 인증(안심 또는 아이핀)을 진행해 주세요.");
			return false;
		}
		*/
		if(obj.niceid_success.value=="Y") {
			obj.submit();
		} else {
			//alert("본인 휴대폰인증을 진행해 주세요.");
			//return false;
		}
		con = confirm('회원정보를 수정하시겠습니까?');
		if(con) {
			return true;
		} else {
			return false;
		}
	} else {
		return false;
	}
}
function member_file_download(ftype) {
	window.frames["act"].location.href="/mypage/member_download.php?ftype="+ftype;
	//location.href="/mypage/member_download.php?ftype="+ftype;
}
function check_pass(){
	$.ajax({
		url: 'profile.act.php',
		type: 'get',
		dataType: "html",
		data: ({act: "passcheck",
				mode : 'profile_check',
				pass: $('#pass').val()
		}),
		success: function(result){
			if(result == "Y"){
				$('#pass_check').val('1');

				$('#check_pass_form').css('display','none');
				$('#member_edit_form').css('display','');
			} else {
				alert("비밀번호가 불일치 합니다.");
				$('#pass_check').val('');
				$('#check_pass_form').css('display','');
				$('#member_edit_form').css('display','none');
				return false;
			}
		}

	});
}

function pass_view(){
    var pass_check = $('#pass_check').val();
    if(pass_check == '1') {
        $('#check_pass_form').css('display','none');
        $('#member_edit_form').css('display','');
    } else {
        $('#check_pass_form').css('display','');
        $('#member_edit_form').css('display','none');
    }
}

$(document).ready(function (){
	pass_view();
});



</script>


<%@include file="../common/footer.jsp"%>
</body>

</html>