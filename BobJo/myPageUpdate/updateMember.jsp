
</html><%@ page language="java" contentType="text/html; charset=UTF-8"
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
<!-- <script src="library.js"></script>
<script src="ui.js"></script>
<script src="basic_head.js"></script>


<script src="mypage.js"></script>
 -->
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
<%--여기서부터 시작 자리 --%>
<div class="wrap-profile">
		<h2>회원정보 수정</h2>
		<p class="desc">고객님들의 회원정보 수정을 처리해드립니다.</p>
		<!--Histori Belanja 영역 [E]-->
		<table class="common-write">
			<caption>회원정보 입력</caption>
			<colgroup>
				<col width="15%">
				<col width="*">
			</colgroup>
			<tbody>
			<tr>
				<th scope="col">아이디<span class='main-color'>*</span></th>
				<td><input type="text" ></td>
			</tr>
		
					<tr>
						<th scope="col">패스워드<span class='main-color'>*</span></th>
						<td><a href="./password.php" rel="facebox" class='main_ks_buttom buttom_ss' style='width:183px;'>비밀번호 변경</a></td>
					</tr>
		
			<tr>
				<th scope="col">이름<span class='main-color'>*</span></th>
				<td>
					<input type='text' name='mem_name' id='mem_name' value='' style='width:183px;' readonly>
				
				</td>
			</tr>
		
			<tr>
				<th scope="col">생년월일<span class='main-color'>*</span></th>
				<td>
					<ul class='box_wrap'>
						<div class="select-class" style="width:72px;">
							<select name='birthday1' style="width:72px;" title='생년월일(년)' validation="true">
								<option value="">년도</option>
								<option value="2019" >2019</option>
								<option value="2018" >2018</option>
								<option value="2017" >2017</option>
								<option value="2016" >2016</option>
								<option value="2015" >2015</option>
								<option value="2014" >2014</option>
								<option value="2013" >2013</option>
								<option value="2012" >2012</option>
								<option value="2011" >2011</option>
								<option value="2010" >2010</option>
								<option value="2009" >2009</option>
								<option value="2008" >2008</option>
								<option value="2007" >2007</option>
								<option value="2006" >2006</option>
								<option value="2005" >2005</option>
								<option value="2004" >2004</option>
								<option value="2003" >2003</option>
								<option value="2002" >2002</option>
								<option value="2001" >2001</option>
								<option value="2000" >2000</option>
								<option value="1999" >1999</option>
								<option value="1998" >1998</option>
								<option value="1997" >1997</option>
								<option value="1996" >1996</option>
								<option value="1995" >1995</option>
								<option value="1994" >1994</option>
								<option value="1993" >1993</option>
								<option value="1992" >1992</option>
								<option value="1991" >1991</option>
								<option value="1990" >1990</option>
								<option value="1989" >1989</option>
								<option value="1988" >1988</option>
								<option value="1987" >1987</option>
								<option value="1986" >1986</option>
								<option value="1985" >1985</option>
								<option value="1984" >1984</option>
								<option value="1983" >1983</option>
								<option value="1982" >1982</option>
								<option value="1981" >1981</option>
								<option value="1980" >1980</option>
					
							</select>
						</div>
						년
						<div class="select-class" style="width:72px;">
							<select name='birthday2' style="width:72px;" title='생년월일(월)' validation="false">
								<option value="">월</option>
								<option value="01" >01</option>
								<option value="02" >02</option>
								<option value="03" >03</option>
								<option value="04" >04</option>
								<option value="05" >05</option>
								<option value="06" >06</option>
								<option value="07" >07</option>
								<option value="08" >08</option>
								<option value="09" >09</option>
								<option value="10" >10</option>
								<option value="11" >11</option>
								<option value="12" >12</option>
							</select>
						</div>
						월
						<div class='select-class' style="width:72px;">
							<select name='birthday3' style="width:72px;" title='생년월일(일)' validation="false">
								<option value="">일</option>
								<option value="01" >01</option>
								<option value="02" >02</option>
								<option value="03" >03</option>
								<option value="04" >04</option>
								<option value="05" >05</option>
								<option value="06" >06</option>
								<option value="07" >07</option>
								<option value="08" >08</option>
								<option value="09" >09</option>
								<option value="10" >10</option>
								<option value="11" >11</option>
								<option value="12" >12</option>
								<option value="13" >13</option>
								<option value="14" >14</option>
								<option value="15" >15</option>
								<option value="16" >16</option>
								<option value="17" >17</option>
								<option value="18" >18</option>
								<option value="19" >19</option>
								<option value="20" >20</option>
								<option value="21" >21</option>
								<option value="22" >22</option>
								<option value="23" >23</option>
								<option value="24" >24</option>
								<option value="25" >25</option>
								<option value="26" >26</option>
								<option value="27" >27</option>
								<option value="28" >28</option>
								<option value="29" >29</option>
								<option value="30" >30</option>
								<option value="31" >31</option>
							</select>
						</div>
						일
					</ul>
				</td>
			</tr>
			
			<tr>
				<th>
					성별
				</th>
				<td>
					<input type="radio" name="gender" value="1" id="gender_man"   validation="true" title='성별' disabled> <label for="gender_man">남성</label>
					<input type="radio" name="gender" value="0" id="gender_woman" checked validation="true" title='성별' disabled> <label for="gender_woman">여성</label>
				</td>
			</tr>
			<tr>
				<th scope="col">이메일<span class='main-color'>*</span></th>
				<td>
					<input type="text" id="" name="mail" value="" readonly style="width:183px;">
					<!-- 이메일 변경 불가 -->
					<p class="desc">
						정확한 E-mail 정보를 입력하지 않으시면, 주문, 결제, 이벤트, 아이디찾기, 비밀번호 찾기 등에 대한 정확한 정보를 받지 못하실 수 있습니다.
					</p>
					<ul class="sect-area">
						<li>*쇼핑몰에서 제공되는 다양한 이벤트 할인 정보와 공지사항 등을 받아 보실 수 있습니다.</li>
						<li>*주문결제, 교환/환불 등의 주문거래와 관련 이메일은 수신동의 여부와 관계 없이 발송됩니다.</li>
					</ul>
					
					
					<input type="radio" value="1" name="info" id="info_1" validation="false" title="SMS 정보수신" checked>
					<label for="info_1" class='color_63 font_bold'>&nbsp;수신을 동의 합니다.</label>
					<input type="radio" value="0" name="info" id="info_0" validation="false" class="space"  title="SMS 정보수신">
					<label for="info_0"class='color_63 font_bold'>&nbsp;수신을 동의 하지 않습니다.</label>
				</td>
			</tr>
			<tr>
				<th scope="col">휴대전화</th>
				<td>
					<input type="tel" value="">
					<ul class="sect-area">
						<li>*쇼핑몰에서 제공되는 다양한 이벤트 할인 정보와 공지사항 등을 받아 보실 수 있습니다.</li>
						<li>*주문결제, 교환/환불 등의 주문거래와 관련 문자(SMS)는 수신동의 여부와 관계 없이 발송됩니다.</li>
					</ul>
					
					<input type="radio" value="1" name="sms" id="sms_1" validation="false" title="SMS 정보수신" checked>
					<label for="sms_1" class='color_63 font_bold'>수신을 동의 합니다.</label>
					<input type="radio" value="0" name="sms" id="sms_0" validation="false" class="space" title="SMS 정보수신">
					<label for="sms_0"class='color_63 font_bold'>수신을 동의 하지 않습니다.</label>
				</td>
			</tr>
			<tr>
				<th scope="col">유선전화</th>
				<td>
					<div class="select-class" style="width:72px;">
						<select style="width:72px;" name='tel1' numeric="true" title='유선전화' >
							<option value="02" selected>02</option>
							<option value="031" >031</option>
							<option value="032" >032</option>
							<option value="033" >033</option>
							<option value="041" >041</option>
							<option value="042" >042</option>
							<option value="043" >043</option>
							<option value="051" >051</option>
							<option value="052" >052</option>
							<option value="053" >053</option>
							<option value="054" >054</option>
							<option value="055" >055</option>
							<option value="061" >061</option>
							<option value="062" >062</option>
							<option value="063" >063</option>
							<option value="064" >064</option>
						</select>
					</div>
					-
					<input type="text" id="tel2" name="tel2" value="" style="width:72px;" maxlength='4'  numeric="true"  title="전화번호">
					-
					<input type="text" id="tel3" name="tel3" value="" style="width:72px;" maxlength='4'  numeric="true"  title="전화번호">
				</td>
			</tr>
		
			<tr>
				<th scope="col">주소<span class='main-color'>*</span></th>
				<td>
					<input type="text" id="zipcode1" name="zipcode1" value="" title="우편번호"  style="width:72px;text-align:center;" class="inputbox_05">
                    <!--
					-
					<input type="text" id="zipcode2" name="zipcode2" value="" title="우편번호" validation="true" style="width:72px;text-align:center;" class="inputbox_05" readonly>
                    -->
					<a href="javascript:void(0);" onclick='zipcode(1)' class="zipcode main_ks_buttom buttom_ss">주소찾기</a>
					<span class="sect">
						<input type="text" id="addr1" name="addr1"  value="" validation="true" title="주소" class="inputbox_05" style="width:391px;">
					</span>
					<span class="sect">
						<input type="text" id="addr2" name="addr2"  value="" validation="true" title="주소" class="inputbox_05" style="width:391px;">
					</span>
					<input type='hidden' name='doro_addr1' id='doro_addr1' value="" >
					<input type='hidden' name='doro_addr2' id='doro_addr2' value="" >
				</td>
			</tr>
		
			</tbody>
		</table>
		<div class="btn-area">
			<input type="submit" value="수정하기" alt="수정하기" class="buttom_m main_k_buttom">
			<a href="/mypage/profile.php" class="buttom_m sub_k_buttom">취소</a>
		</div>
	</div>
</div>
</form>


</div>

</div>




<!-- <script src='/data/enterdev_data/templet/bienbien/js/join_input.js'></script>
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
}); -->



</script>


<%@include file="../common/footer.jsp"%>
</body>

</html>