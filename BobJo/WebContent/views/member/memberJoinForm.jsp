<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<!-- 회원가입 창 -->
<meta charset="UTF-8">
<title>Insert title here</title>


<style>
body {
	background: #f9f9f9 !important;
}
.outer_top {
	width: 640px;
	height: 25px;
	/* border:1px solid black; */
	margin: auto;
	font-size: 12px;
}
.outer {
	width: 680px;
	height: auto;
	background: white;
	margin: auto;
	padding: 10px;
	/* border:1px solid black; */
}
.s_btn {
	width: 150px;
	height: 40px;
	color: white;
	background: rgb(170, 57, 57);
	border-style: none;
	border-radius: 3px;
	font-size: 12px;
}
.guide_txt {
	display: block;
	margin: 5px;
}
.txt {
	font-size: 12px;
	display: block;
}
.userId, input[type="email"], input[type="password"], .userName, .phone,
	.address, .email_num_input {
	width: 288px;
	height: 40px;
	border-radius: 3px;
	border: 1px solid lightgrey;
	padding: 0 0 0 10px;
	font-size: 12px;
}
.cols1 {
	font-weight: 700;
	font-size: 14px;
	padding: 0 0 0 30px;
	width: 140px;
}
.join_table {
	margin-top: 10px;
	border: 1px solid white;
}
td {
	border: 1px solid white;
}
.birth .birth_day {
	overflow: hidden;
	width: 300px;
	padding-left: 8px;
	border: 1px solid #ccc;
	border-radius: 3px
}
.birth .birth_day.on {
	border: 1px solid #333
}
.birth .birth_day input[type="text"] {
	float: left;
	width: 80px;
	height: 37px;
	border: 0 none;
	text-align: center
}
.birth .birth_day .bar {
	width: 20px;
	height: 38px;
	padding-top: 10px;
	text-align: center
}
.birth .birth_day .bar span {
	position: static;
	width: auto;
	height: auto;
	background-color: #fff;
	font-size: 14px;
	color: #949296;
	line-height: 20px
}
/* .birth .txt_guide{display:block;height:26px} */
.subtitle {
	font-size: 20px;
	font-weight: 700;
}
.join_btn {
	background: rgb(170, 57, 57) !important;
	border: 1px solid rgb(170, 57, 57) !important;
	right: 50% !important;
	font-size: 15px !important;
}
.submit_td {
	text-align: right;
}
.guide_txt {
	display: none;
}
.chk_email_num_btn {
	border: 1px solid rgb(170, 57, 57);
	background: white;
	color: rgb(170, 57, 57);
}
.guide_email {
	display: none;
}
</style>

</head>
<body>
	<%@ include file="../common/bootstrap.jsp"%>
	<%@ include file="../common/menubar.jsp"%>
	<br>
	<p align="center" class="subtitle">회원가입</p>
	<br>

	<div class="outer_top">
		<p align="right">*필수입력사항</p>
	</div>
	<div class="outer">

		<form action="<%=request.getContextPath()%>/insert.me" method="post"
			onsubmit="return validate();">

			<!-- ///////////////////////////////////////////////////////////////table -->
			<table align="center" class="join_table">
				<tr>
					<td class="cols1">*아이디</td>
					<td><input type="text" placeholder="아이디를 입력해주세요"
						class="userId" name="userId" maxlength="12" required>
						<button type="button" class="id_chk_btn s_btn">중복확인</button>

						<p class="guide_txt guide_txt1">
							<span class="txt id_reg_txt">영문과 숫자를 조합한 6자 이상</span> <span
								class="txt id_reg_txt1"></span> <span class="txt id_chk_txt">아이디
								중복확인</span>
						</p></td>
				</tr>
				<tr>
					<td class="cols1">*비밀번호</td>
					<td><input type="password" placeholder="비밀번호를 입력해주세요"
						maxlength="15" class="userPwd" name="userPwd" required>
						<p class="guide_txt guide_txt2">
							<span class="txt pw_reg_txt">6자 이상 입력</span> <span
								class="txt pw_reg_txt2">영문 소문자, 숫자 반드시 포함</span>
						</p></td>
				</tr>
				<tr>
					<td class="cols1">*비밀번호확인</td>
					<td><input type="password" placeholder="비밀번호를 한번 더 입력해주세요"
						class="userPwd2" required>
						<p class="guide_txt guide_txt3">
							<span class="txt pw_chk_txt">동일한 비밀번호를 입력해주세요</span>
						</p></td>
				</tr>
				<tr>
					<td class="cols1">*이름</td>
					<td><input type="text" placeholder="고객님의 이름을 입력해주세요"
						class="userName" name="userName" required>
						<p class="guide_txt guide_txt4">
							<span class="txt nm_chk_txt">2자 이상의 한글이름을 입력해주세요</span>
						</p></td>
				</tr>
				<tr>
					<td class="cols1">*이메일</td>
					<td><input type="email" placeholder="예: memberchefj@chefj.com"
						class="email" name="email" required>
						<button type="button" class="chk_email_btn s_btn">인증번호받기</button>
					</td>


				</tr>
				<tr>
					<td class="cols1"></td>
					<td class="guide_email"><input type="text"
						placeholder="인증번호 입력" class="email_num_input">
						<button type="button" class="s_btn chk_email_num_btn">인증확인</button>
						<p class="guide_txt guide_txt5">
							<span class="txt email_chk_txt">이메일인증번호가 전송되었습니다. 메일함을
								확인해주세요.</span>
						</p></td>


				</tr>
				<script>
            </script>


				<tr>
					<td class="cols1">*휴대폰</td>
					<td><input type="text" placeholder="숫자만 입력해주세요" class="phone"
						name="phone" required>
						<button type="button" onclick="chk_phone();"
							class="chk_phone_btn s_btn">휴대폰 중복확인</button> <!-- 사용가능하면 alert로 사용가능합니다 -->

					</td>

				</tr>

				<tr>
					<td class="cols1" rowspan="2">배송 주소</td>
					<!-- <td>
                    <input type="text" class="address" name="address" disabled>
                </td> -->

				</tr>
				<tr>
					<td><input type="button" value="주소검색" class="juso_btn s_btn">
					</td>
				</tr>
				<tr>
					<td class="cols1">성별</td>
					<td><input type="radio" value="M" name="gender"><label
						for="man" style="font-size: 14px"> 남자</label>&nbsp; <input
						type="radio" value="F" name="gender"><label for="women"
						style="font-size: 14px"> 여자</label>&nbsp; <input type="radio"
						value="N" name="gender" checked><label for="noAnswer"
						style="font-size: 14px"> 선택안함</label></td>
				</tr>
				<tr class="birth">
					<td class="cols1">생년월일</td>
					<td class="memberCols2">

						<div class="birth_day">
							<input type="text" name="birth_year" id="birth_year"
								pattern="[0-9]*" value="" label="생년월일" size="4" maxlength="4"
								placeholder="YYYY">&nbsp; <input type="text"
								name="birth[]" id="birth_month" pattern="[0-9]*" value=""
								label="생년월일" size="2" maxlength="2" placeholder="MM"> <input
								type="text" name="birth[]" id="birth_day" pattern="[0-9]*"
								value="" label="생년월일" size="2" maxlength="2" placeholder="DD">
						</div>
						<p class="guide_txt">
							<span style="display: none;" class="txt">태어난 월을 정확하게
								입력해주세요</span>
							<!-- <span style="display: none;" class="txt">태어난 일을 정확하게 입력해주세요</span> -->
							<!-- <span style="display: none;" class="txt">태어난 년도를 정확하게 입력해주세요</span> -->
						</p>
					</td>
				</tr>
				<tr>
					<td colspan="3" height="10px;"></td>
				</tr>

				<tr>
					<td colspan="3" class="submit_td">
						<button type="submit" class="join_btn btn btn-primary">가입하기</button>
					</td>
				</tr>


			</table>

		</form>
	</div>

	<br>
	<br>
	<script>
    	// 회원가입폼 유효성검사
    	// ID: 6~12자 사이의 영문+숫자조합
    	var regexp_id=/^[a-z][a-z\d]{5,11}$/;
        // PW: 영문 소문자, 숫자 포함 6자 이상
        var regexp_pw=/(?=.*[a-z])(?=.*[0-9]).{6,}/;
        
        // var regexp_pw=/(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])(?=.*[^a-zA-Z0-9가-힣]).{6,}/;
        var regexp_nm=/^[가-힣]{2,}$/;
        id_flag = true;
        pw_ch_flag = true;
        pw_re_flag = true;
        nm_flag = true;
        
        
    $(function(){
    	
    	$(".juso_btn").click(function(){
    		var pop = window.open("<%=request.getContextPath()%>/views/member/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    		
    	});
        // 해당 input keyup때마다 색변경
        // ID 유효성
        $(".userId").keyup(function(){
            userId = $.trim($(".userId").val());
           if(!regexp_id.test(userId)){
                $(".guide_txt1").css({"display":"block"});
                $(".id_reg_txt").css({"color":"red"});
                id_flag = false;
            }else{
                $(".guide_txt1").css({"display":"block"});
                $(".id_reg_txt").css({"color":"green"});
                id_flag = true;
            }
        });
        //PW 유효성
        $(".userPwd").keyup(function(){
            //정규식 유효성검사
            if(!regexp_pw.test($(".userPwd").val())){
                $(".guide_txt2").css({"display":"block"});
                $(".pw_reg_txt2").css({"color":"red"});
                pw_re_flag = false;
            }else{
                $(".guide_txt2").css({"display":"block"});
                $(".pw_reg_txt2").css({"color":"green"});
                pw_re_flag = true;
            }
            //비밀번호 6자이상 판별
            var pwlength = $(".userPwd").val();
            if(pwlength.length < 6){
                $(".guide_txt2").css({"display":"block"});
                $(".pw_reg_txt").css({"color":"red"});
                pw_re_flag = false;
            }else{
                $(".guide_txt2").css({"display":"block"});
                $(".pw_reg_txt").css({"color":"green"});
                pw_re_flag = true;
            }
        });
        
        //PW 확인
        $(".userPwd2").keyup(function(){
            if($(".userPwd").val() != $(".userPwd2").val()){
                $(".guide_txt3").css({"display":"block"});
                $(".pw_chk_txt").css({"color":"red"});
                pw_ch_flag = false;
            }else{
                $(".guide_txt3").css({"display":"block"});
                $(".pw_chk_txt").css({"color":"green"});
                pw_ch_flag = true;
            }
        });
        //NAME
        $(".userName").keyup(function(){
            var userName = $.trim($(".userName").val());
            if(!regexp_nm.test(userName)){
                $(".guide_txt4").css({"display":"block"});
                $(".nm_chk_txt").css({"color":"red"});
                nm_flag = false;
            }else{
                $(".guide_txt4").css({"display":"block"});
                $(".nm_chk_txt").css({"color":"green"});
                nm_flag = true;
            }
        });
        
        
    	
    });
        
        // id 중복확인용 값
        var id_Usable = false;
        
        // 아이디 중복확인
        $(".id_chk_btn").click(function(){
        	var userId = $(".userId").val();
        	
        	if(!userId || userId.length < 5){
        		
        		alert("아이디는 최소 6자리 이상이어야 합니다.");
        		userId.focus();
        		
        	}else{
        		
        		$.ajax({
        			url: "<%=request.getContextPath() %>/Check.me",
        			type : "post",
        			data : {userId:userId},
					success : function(data){
						
						if(data == "fail"){
							alert('사용할 수 없는 아이디입니다.');
							$(".id_chk_txt").css("color","red");
							userId.focus();
						}else{
							// -> 사용 가능하다는 flag 값
							
							id_Usable = true;
							$(".id_chk_txt").css("color","green");
						}
					
						if(id_Usable){
							// 아이디 중복 체크 후 사용 가능한 아이디이며 사용하기로 한 경우
							
							
							
						} 
					},
					error : function(){
						console.log('서버 통신 안됨');
					}
        			
        		});
        	}
        	
        });
        
        
        ////////////이메일 인증
        var AuthenticationKey ="";
        //이메일인증버튼
        $(".chk_email_btn").click(function(){
        	
        	$(".guide_email").css("display","block");
        	
        	var email = $(".email").val();
        	
        	if(!email.includes('@') || !email.includes('.')){
        		
        		alert("이메일 형식에 맞게 입력해주세요");
        		email.focus();
        		
        	}else{
        		
        		$.ajax({
        			url: "<%=request.getContextPath() %>/email.me",
        			type : "post",
        			data : {email:email},
					success : function(data){
						
						if(data == "fail"){
							alert('이미 있는 이메일주소입니다.');
							
							//$(".id_chk_txt").css("color","red");
							email.focus();
						}else{
							// -> 사용 가능하다는 flag 값
							//email_Usable = true;
							//$(".id_chk_txt").css("color","green");
							//세션에있는 인증키 없애기(정리하고 새로받는개념)
							<%-- <% session.removeAttribute("AuthenticationKey"); %> --%>
							<%
								String AuthenticationKey = (String)session.getAttribute("AuthenticationKey");
							%>
							 AuthenticationKey = "<%= AuthenticationKey %>";
							
						}
					},
					error : function(){
						console.log('서버 통신 안됨');
					}
        			
        		});
        	}
            
            	
           
        });
        
        
           
            //Phone
            //$(".userPhone")
            var ch_key_input = $.trim($(".email_num_input").val());
            var email_Usable2 = true;
            $(".chk_email_num_btn").click(function(){
            		console.log(AuthenticationKey);
            	if(AuthenticationKey != ch_key_input){
            		alert("인증번호가 맞지 않습니다.");
            	}else{
            		alert("인증번호 확인");
            		email_Usable2=true;
            	}
            });
        
        
        
        // 폼 제출할때 발생하는 함수
        function validate(){
            console.log(id_flag);
            console.log(pw_ch_flag);
            console.log(pw_re_flag);
            console.log(nm_flag);
                if(id_flag == false || pw_re_flag == false || pw_ch_flag == false || nm_flag == false
                		|| id_Usable == false ||email_Usable2 == false){
                   return false;
                }
            };
    </script>

	<%@ include file="../common/footer.jsp"%>
</body>
</html>