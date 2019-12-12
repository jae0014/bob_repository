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
		<a href="myPageMain.jsp">프로필 관리</a>
	</dt>
	
	
	<dt><br><br>
		<a href="/mypage/order_history.php">나의 쇼핑 내역</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="myPageOrder.jsp" class=''>
					주문/배송 현황
				</a>
			</li>
			<li>
				<a href="myPageDisorder.jsp" class=''>
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
		<a href="myPageRecipe.jsp">나의 레시피 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="" >
					내가 작성한 레시피
				</a>
			</li>

			<li>
				<a href="" >
					좋아요 한 레시피
				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="">댓글 관리</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href=""   >
					내가 작성한 댓글
				</a>
			</li>
			<li>
				<a href="" >
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
		<a href="">나의 커뮤니티</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="" >
					내가 작성한 게시글
				</a>
			</li>
			<li>
				<a href="" >

					내가 작성한 후기

				</a>
			</li>
			
		</ul>
	</dd>
	<dt>
		<a href="">회원정보</a>
	</dt>
	<dd>
		<ul>
			<li>
				<a href="UpdateMember.jsp" class="on">
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
<div class="contents">
	<br><br>
	<div class="cover"><h1 class="mo" style="color:white"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;나의 프로필</h3></div><br>
	<div class="myprofile">
	<div class="p background"><img class="bg" src="<%=request.getContextPath() %>/resources/images/마카롱.jpg"></div>
	<div class="p pic"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=400,width=400, status=yes,toolbar=no,menubar=no,location=no");return false'><img class="pf" src="<%=request.getContextPath() %>/resources/images/강아지.jpg" ></a></div>

	<div class="p text">
		<div class="p nickname"><a href="#" onclick='window.open("updateProfile.jsp","_blank","height=400,width=400, status=yes,toolbar=no,menubar=no,location=no");return false'>홍길동</a></div>
		<div class="p introduce">집밥이 짱~~</div>
		
		
		<br><br>
	</div>
	
	</div>
	
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