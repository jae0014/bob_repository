
<!DOCTYPE html>
<!--[if (IE 6)|(IE 7)|(IE 8)|(IE 9)]>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="old_ie">
<![endif]-->
<![if !IE]>
<html lang="ko" xmlns="http://www.w3.org/1999/xhtml" class="">
<![endif]>
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=Edge" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Expires" content="-1" />
<meta property="fb:pages" content="1567451316868458" />
<meta name="description" content="국내 No.1 요리앱, 10만개 이상의 레시피, 편리한 검색, 맛보장 레시피, TV쿡방 레시피, 온라인 최저가 쇼핑, 요리 공모전">
<meta name="keywords" content="">
<meta name="google-site-verification" content="3eLg1zfxeZ_oO6oOOsvIxbtcW-FtDsViPVm7-CYOl8w" />
<title>만개의 레시피</title>
<meta property="kakao:title" content="만개의 레시피" />
<meta property="kakao:description" content="" />
<script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
})(window,document,'script','dataLayer','GTM-PDPW2LX');</script>   
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/bootstrap_20190926.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font.css" />
<link rel="stylesheet" type="text/css" href="/static/css/font-awesome.min.css" />
<link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/ez_recipe_20190926.css" />
<link href="/favicon.ico" rel="shortcut icon" type="image/x-icon" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon.png" rel="apple-touch-icon" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-76x76.png" rel="apple-touch-icon" sizes="76x76" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-120x120.png" rel="apple-touch-icon" sizes="120x120" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-152x152.png" rel="apple-touch-icon" sizes="152x152" />
<link href="http://recipe1.ezmember.co.kr/img/icons/apple-touch-icon-180x180.png" rel="apple-touch-icon" sizes="180x180" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-hires.png" rel="icon" sizes="192x192" />
<link href="http://recipe1.ezmember.co.kr/img/icons/icon-normal.png" rel="icon" sizes="128x128" />
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/jquery-1.11.2.min.js" charset="utf-8"></script>
<script type="text/javascript" src="//static.criteo.net/js/ld/publishertag.js"></script>
<script type="text/javascript">
// Common Javascript
var _WWW_URL_ = 'http://www.10000recipe.com';
var _IMG_URL_ = 'http://recipe1.ezmember.co.kr';
var _FILE_URL_ = 'http://recipe1.ezmember.co.kr/cache';
var _CURRENT_PAGE_ = 'http://www.10000recipe.com/profile/recipe.html?uid=mamon08';
var _USER_ID_ = 'sopuer';
</script>
</head>
<body>

	<%@include file="../common/menubar.jsp" %>
	<%@include file="../common/bootstrap.jsp" %>


<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/jquery-ui-1.11.4.js" charset="utf-8"></script><link rel="stylesheet" type="text/css" href="http://recipe1.ezmember.co.kr/static/css/jquery-ui-1.11.4_201507011.css" /><script>
$(document).ready(function() {
    doRTKeyword();

    $("#srhRecipeText").keypress(function(event) {
        if (event.which == 13) {
            event.preventDefault();
            $("#frmTopRecipeSearch").submit();
        }
    }).autocomplete({
        delay: 200,
        source: "/recipe/ajax.html?q_mode=autoComplete",
        focus: function(event, ui) {
            return false;
        },
        select: function(event, ui) {
            this.value = ui.item.label;
            return false;
        }
    }).focus();

});



var curRtword = 2;
function doRTKeyword()
{
    var backRtword = (curRtword == 1) ? 2 : 1;
    $("#RtwordDiv_"+curRtword).hide();
    $("#RtwordDiv_"+backRtword).show();
    curRtword = backRtword;
}
</script>

                 

<script>

<br>
var fromOther = 'n';
$(document).ready(function() {
    $(".ellipsis_title").ellipsis({row: 1});
    $(".ellipsis_title2").ellipsis({row: 2});

    $(window).scroll(function() {
        if ($(window).scrollTop() > $(window).height()*1.5) {
            $("#btnGogoTop").slideDown(300);
        } else {
            $("#btnGogoTop").slideUp(300);
        }
    });
    $('[data-toggle="tooltip"]').tooltip();
});

$(function() {
    $('#memLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        $(".document_common_layer:not('.mem_layer')").hide();
        if ($('.mem_layer').is(':visible')) {
            $('.mem_layer').hide();
        } else {
            $('.mem_layer').show();
        }
    });

    $('#btnTopWrite').click(function (e) {
        // Used to stop the event bubbling..
        $(".document_common_layer:not('.write_layer')").hide();
        e.stopPropagation();
        if ($('html').is('.old_ie')) {
            //$('#divBrowserGuideModal').modal({backdrop:'static'});
            $('#divBrowserGuideModal').modal('show');
        } else {
            if ($('.write_layer').is(':visible')) {
                $('.write_layer').hide();
            } else {
                $('.write_layer').show();
            }
        }
    });
    $(document).click(function () {
        $('.document_common_layer').hide();
    });

    $("#btnBlogContentsList").click(function() {
        $("#btnBlogContentsList").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogContentsList").width()+'px"></span>');
        el = $(this);
        var params = 'q_mode=get_blog_contents_list&q_portal='+$("[name=q_portal]:checked").val()+'&q_blogid='+$("#q_blogid").val();
        $.get("/common/ajx_common.html?"+params, function(html) {
            $("#btnBlogContentsList").html('조회');
            $("#divBlogContentsList").html(html);
        });
    });
    $('#divModalBlogForm').on('show.bs.modal',function() {
        $.ajax({
            type: "POST",
            url: "/common/ajx_common.html",
            data: "q_mode=get_blog_info",
            dataType: "json",
            success: function(json) {
                if (json['portal']) {
                    $("[id^=q_portal_]").filter('[value='+json['portal']+']').trigger('click');
                }
                if (json['blog_id']) {
                    $("#q_blogid").val(json['blog_id']);
                    $("#q_blog_select_type_id").trigger('click');
                }
            },
            error: function () {

            }
        });
    });
});
var _blogIsSubmit = false;
function doChangePortal(portal) {
    var header = '';
    var tail = '';
    if (portal == 'Naver') {
        header = 'http://blog.naver.com/';
        tail = '';
    } else if (portal == 'Daum') {
        header = 'http://blog.daum.net/';
        tail = '';
    } else if (portal == 'Tistory') {
        header = 'http://';
        tail = '.tistory.com';
    }
    $("#txtBlogHeader").text(header);
    $("#txtBlogTail").text(tail);
}

function doBlogSelect() {
     var select_type = $(':radio[name="q_blog_select_type"]:checked').val();
     if (select_type == 'url') {
        var q_link = $("#q_blogurl").val();
        if ($.trim(q_link) == '') {
            alert('URL을 입력해 주세요.');
            $("#q_blogurl").focus();
            return;
        } else {
            setBlogContents(q_link);
        }
     } else {
        getBlogContentsList();
     }
}
function getBlogContentsList(page,added_params) {
    if (page == 0) return;
    if (!page) {
        page = 1;
    }
    if ($("#q_blogid").val() == '') {
        alert("블로그 주소를 입력해 주세요.");
        return;
    }
    //var blog_url = $("#txtBlogHeader").text() + $("#q_blogid").val() + $("#txtBlogTail");

    if (_blogIsSubmit) {
        alert("처리중 입니다. 잠시만 기다리세요.");
        return;
    }

    if (page > parseInt($("#q_page").val(),10)) {
        $("#btnBlogNext").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogNext").width()+'px"></span>');
    } else if (page < parseInt($("#q_page").val(),10)) {
        $("#btnBlogPrev").html('<span class="fa fa-spinner fa-spin" style="width:'+$("#btnBlogPrev").width()+'px"></span>');
    }

    $("#q_page").val(page);
    _blogIsSubmit = true;
    var params = 'q_mode=get_blog_contents_list&q_portal='+$("[name=q_portal]:checked").val()+'&q_blogid='+$("#q_blogid").val()+'&q_scal='+$("#q_scal").val()+'&q_page='+page;
    if (added_params) {
        if (added_params.substring(0,1) != '&') params += '&';
        params += added_params;
    }

    $.ajax({
        type: "POST",
        cache: false,
        url: "/common/ajx_common.html",
        data: params,
        success: function(html) {
            $("#divBlogContentsList").html(html);
            $("[id^=spanBlogContentsTitle_]").ellipsis();
            $('#divModalBlogContentsList').modal('show');
            _blogIsSubmit = false;
            return html;
        },
        error: function () {
            alert('예기치 못한 오류로 인해 실패했습니다.');
            _blogIsSubmit = false;
        }
    });
}
function setBlogContents(q_link) {
    if (typeof q_link == 'undefined' || q_link == '') {
        q_link = $("#listBlog [id^=q_link_]:checked").val();

        if (!q_link) {
            alert('블로그 컨텐츠를 선택하세요.');
            return;
        }
    }
    $("#btnSetBlogContents").html('<span class="fa fa-spinner fa-spin" style="width:' + $("#btnSetBlogContents").width() + 'px"></span>');
    if(fromOther == 'n') document.location.href = '/inbox/insert.html?ref_blog_url=' + encodeURIComponent(q_link);
    else if(fromOther == 'review') document.location.href = '/event/ins_review.html?seq=&review_seq=&ref_blog_url=' + encodeURIComponent(q_link);
}
function doChangeBlogSelectType(select_type) {
    if (select_type == 'url') {
        $("#top_blog_select_id").hide();
        $("#top_blog_select_url").show();
    } else {
        $("#top_blog_select_url").hide();
        $("#top_blog_select_id").show();
    }

}
</script>

<div class="modal fade" id="divModalBlogForm" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100001">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">블로그 찾기</h4>
      </div>
      <div class="modal-body">
        <dl class="blog_select">
          <dt>1. 레시피가 있는 블로그를 선택해 주세요.</dt>
          <dd>
            <span class="blog_t1"><label class="radio-inline"><input type="radio" name="q_portal" value="Naver" id="q_portal_Naver" onclick="doChangePortal(this.value)" aria-label="" checked="checked">네이버</label></span>
            <span class="blog_t2"><label class="radio-inline"><input type="radio" name="q_portal" value="Daum" id="q_portal_Daum" onclick="doChangePortal(this.value)" aria-label="">다음</label></span>
            <span class="blog_t3"><label class="radio-inline"><input type="radio" name="q_portal" value="Tistory" id="q_portal_Tistory" onclick="doChangePortal(this.value)" aria-label="">티스토리</label></span>
          </dd>
        </dl>
        <dl class="blog_select">
          <dt>2. 글을 가져올 방식을 선택해 주세요.</dt>
          <dd>
            <div style="padding-bottom:7px"><span style="color:#666;"><label class="radio-inline"><input type="radio" name="q_blog_select_type" value="id" id="q_blog_select_type_id" onclick="doChangeBlogSelectType(this.value)" aria-label="">블로그 ID를 입력하여 글 선택하기</label></span></div>
            <div><span style="color:#666"><label class="radio-inline"><input type="radio" name="q_blog_select_type" value="url" id="q_blog_select_type_url" onclick="doChangeBlogSelectType(this.value)" aria-label="">블로그 글 URL을 입력하여 내용 가져오기</label></span></div>
          </dd>
        </dl>
        <dl id="top_blog_select_id" class="blog_select" style="display:none">
          <dt>3. 블로그 ID를 입력해 주세요.</dt>
          <dd><span id="txtBlogHeader">http://blog.naver.com/</span> <input type="text" name="q_blogid" id="q_blogid" value="" class="form-control" placeholder="" style="width:200px">
              <span id="txtBlogTail"></span>
          </dd>
        </dl>
        <dl id="top_blog_select_url" class="blog_select" style="display:none">
          <dt>3. 블로그 글 URL을 입력해 주세요.</dt>
          <dd>
            <input type="text" name="q_blogurl" id="q_blogurl" value="" class="form-control" placeholder="" style="width:400px">
            <div><span>(블로그 글 URL은 네이버/다음/티스토리 만 가능합니다)</span></div>
          </dd>
        </dl>
            </div>
      <div class="modal-footer">
        <button type="button" id="btnBlogContentsList" onclick="doBlogSelect()" class="btn-lg btn-primary" rel="popover_blog">조회</button>
        <button type="button" class="btn-lg btn-default" data-dismiss="modal">취소</button>
        <input type="hidden" name="q_page" id="q_page" value="1">
        <input type="hidden" name="q_scal" id="q_scal" value="10">
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->


<div class="modal fade" id="divModalBlogContentsList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100002">
  <div class="modal-dialog" style="width:520px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">글을 선택하세요</h4>
      </div>
      <div class="modal-body" id="divBlogContentsList">

      </div>
      <div class="modal-footer">

      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->

<div class="modal fade" id="divBrowserGuideModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="z-index:100001">
  <div class="modal-dialog" style="width:820px">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="gridSystemModalLabel">브라우저 업데이트 안내</h4>
      </div>
      <div class="modal-body">
        <!--
            <h3>Internet Explorer 10 이하 버전을 사용중이시군요!</h3>
            <p></p>
            <h4 style="color:#de4830">레시피 등록은,</h4>
            <h4 style="color:#de4830">IE 11이상 또는 크롬(Chrome) 브라우저 사용이 필수입니다.</h4>
        -->
            <div style="width:800px; height:560px; background:#fff; text-align:center;">
              <div sthyle="padding-top:5px;"><img src="http://recipe1.ezmember.co.kr/img/update_icon.gif" /></div>
              <div style="font-size:30px; font-weight:bold; color:#444; padding-top:25px;">브라우저를 최신버전으로 업그레이드 해주세요!</div>
              <div style="font-size:18px; color:#777; padding-top:25px;">레시피 등록을 위해서는 지금 사용하고 있는<br />브라우저 버전을 업그레이드 하거나 다른 웹 브라우저를 사용해야 됩니다.</div>
              <div style="font-size:18px; color:#777; padding-top:25px;">아래의 브라우저 사진을 클릭하여 업그레이드 하세요.</div>
              <div style="padding-top:30px;">
                <a href="https://www.google.com/chrome/" target="_blank" style="margin:0 4px;"><img src="http://recipe1.ezmember.co.kr/img/update_b_03.gif" alt="chrome" style="border:none;"></a>
                <a href="http://windows.microsoft.com/ko-kr/internet-explorer/download-ie" target="_blank" style="margin:0 4px;"><img src="http://recipe1.ezmember.co.kr/img/update_b_02.gif" alt="IE" style="border:none;"></a>
              </div>
            </div>
      </div>
    </div><!-- /.modal-content -->
  </div><!-- /.modal-dialog -->
</div><!-- /.modal -->



<div class="container sub_bg">
    <script>

    $(function() {
        $('.jq_elips2').ellipsis( {row : 2,  onlyFullWords: true} );
        $('.jq_elips').ellipsis();
    });
</script>
<div id="contents_area" class="col-xs-9">
<script>
var curFFstatus = 'follow';
function checkFollowLogin()
{
    return  true; }

function viewFriendList(follow)
{
    if(!checkFollowLogin()) return ;
    $("#viewFriendModal").modal('show');
    getListFriend(1, follow);
}

function doActFriend(uid,idx, objs, objs2)
{
    if(!checkFollowLogin()) return ;
    if(!objs) objs = 'btnActFriend_';
    if(!objs2) objs2 = 'folFriend_';
    var act = $("#"+objs+idx).attr("fact");
    var mode = (act == "insert") ? "addFriend" : "removeFriend";
    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode="+mode+"&friend="+uid,
        success: function(result) {
            if(result == 'SUCCESS')
            {
                var fact = (act == "insert") ? "delete" : "insert";
                var fval = (act == "insert") ? "삭제" : "추가";
                var msg = (act == 'insert') ? '님을 소식받기에 추가했습니다.' : '님을 소식받기에서 해제했습니다.';
                $("#"+objs+idx).attr("fact", fact);
                if(idx > 0)
                {
                    $("#"+objs+idx).html(fval);
                                        var uname = $("#"+objs2+idx).text().replace($("#"+objs+idx).text(),'');
                }
                else
                {
                    if(act == "insert") $("#btnActFriend_0").html('<span class="glyphicon glyphicon-minus"></span>소식끊기');
                    else $("#btnActFriend_0").html('<span class="glyphicon glyphicon-plus"></span>소식받기');

                    var uname = "불량엄마소자매마미";
                }
                ga('send', 'event', '이웃추가', fval, uname);

                alert(uname+msg);
            }
            else
            {
                alert('처리실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function getListFriend(page, follow)
{
    $.ajax({
        type: "GET",
        url: "/profile/ajax.html",
        data: "q_mode=getListFriend&page="+page+"&follow="+follow+"&uid=mamon08",
        success: function(result) {
            if(result)
            {
                var titleMsg = (follow == "follower") ? "님을 따르는 친구" : "님의 친구";
                $("#friendModalTitle").html("불량엄마소자매마미"+titleMsg);
                $("#friendModalList_"+page).html(result);
                curFFstatus = follow;
            }
            else
            {
                alert('조회실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doProfileImageSubmit()
{
        alert('자신의 프로필 이미지만 변경할 수 있습니다.');
    return ;
        if(!$("#newProfileUrl").val() && !$("input[name=self_intro]").val())
    {
        alert('새 프로필 이미지를 올려주세요.');
        return ;
    }

    $.ajax({
        type: "POST",
        url: "/profile/ajax.html",
        data: "q_mode=changeProfileImage&profile="+$("#newProfileUrl").val()+"&self_intro="+$("input[name=self_intro]").val(),
        success: function(result) {
            if(result=="SUCCESS")
            {
                self.location.reload();
            }
            else if(result=="NO_PARAM")
            {
                alert('파라미터오류. 다시 확인해 주세요.');
            }
            else if(result=="FILE_ERROR")
            {
                alert('파일 업로드에 오류가 발생했습니다. 다시 확인해 주세요.');
            }
            else
            {
                alert('변경실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function doDeleteIntro()
{
        alert('자신의 자기소개만 삭제할 수 있습니다.');
    return ;
        if(confirm('자기소개를 삭제할까요?'))
    {
        $.ajax({
            type: "GET",
            url: "/profile/ajax.html",
            data: "q_mode=deleteIntro",
            success: function(result) {
                if(result=="SUCCESS")
                {
                    self.location.reload();
                }
                else
                {
                    alert('변경실패. 잠시후 다시 시도해 주세요.');
                }
            }
        });
    }
}

function doBgImageSubmit()
{
        alert('자신의 배경 이미지만 변경할 수 있습니다.');
    return ;
        if(!$("#newBgUrl").val())
    {
        alert('새 배경 이미지를 올려주세요.');
        return ;
    }

    $.ajax({
        type: "POST",
        url: "/profile/ajax.html",
        data: "q_mode=changeBgImage&profile="+$("#newBgUrl").val(),
        success: function(result) {
            if(result=="SUCCESS")
            {
                self.location.reload();
            }
            else if(result=="NO_PARAM")
            {
                alert('파라미터오류. 다시 확인해 주세요.');
            }
            else if(result=="FILE_ERROR")
            {
                alert('파일 업로드에 오류가 발생했습니다. 다시 확인해 주세요.');
            }
            else
            {
                alert('변경실패. 잠시후 다시 시도해 주세요.');
            }
        }
    });
}

function handlePhotoFiles(e){
    var file_gubun = '';
    var str_num = '';

    if (e.target.files[0].size > (2*1024*1024)) {
        alert("사진은 2MB까지만 허용됩니다.");
        return false;
    }

    $('#submit_btn').attr('type','button').attr('onClick','alert("파일을 올리는 중입니다.");');

    var reader = new FileReader;
    reader.onload = function(evt) {
        var img = new Image();
        img.src = reader.result;
        img.onload = function () {
            var finalFile = reader.result;
            $.ajax({
                beforeSend: function(xhr){
                    xhr.setRequestHeader('Content-Type', 'canvas/upload');
                },
                type: "POST",
                url: "/util/upload_mobile.html",
                data: "canvasData="+finalFile,
                dataType: "json",
                cache: "false",
                processData: false,
                success: function(json) {
                    if(json['result'] == "SUCCESS") {
                        $('#profileSubmitBtn').prop('disabled',false);
                        $("#vProfileImageModalSrc").attr("src",json['url']);
                        $("#newProfileUrl").val(json['url']);
                    } else {
                        alert("처리에 실패하였습니다.");
                    }
                },
                error: function (request,status,error) {
                    //alert('오류가 발생하였습니다.');
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }
            });
        }
    }
    reader.readAsDataURL(e.target.files[0]);
}

function handleBgFiles(e){
    var file_gubun = '';
    var str_num = '';

    if (e.target.files[0].size > (2*1024*1024)) {
        alert("사진은 2MB까지만 허용됩니다.");
        return false;
    }

    $('#submit_btn').attr('type','button').attr('onClick','alert("파일을 올리는 중입니다.");');

    var reader = new FileReader;
    reader.onload = function(evt) {
        var img = new Image();
        img.src = reader.result;
        img.onload = function () {
            var finalFile = reader.result;
            $.ajax({
                beforeSend: function(xhr){
                    xhr.setRequestHeader('Content-Type', 'canvas/upload');
                },
                type: "POST",
                url: "/util/upload_mobile.html",
                data: "canvasData="+finalFile,
                dataType: "json",
                cache: "false",
                processData: false,
                success: function(json) {
                    if(json['result'] == "SUCCESS") {
                        $('#bgSubmitBtn').prop('disabled',false);
                        $("#vBgImageModalSrc").attr("src",json['url']);
                        $("#newBgUrl").val(json['url']);
                    } else {
                        alert("처리에 실패하였습니다.");
                    }
                },
                error: function (request,status,error) {
                    //alert('오류가 발생하였습니다.');
                    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
                }
            });
        }
    }
    reader.readAsDataURL(e.target.files[0]);
}

$(document).ready(function()
{
	    $("#file_1").change(function(e) {
        handlePhotoFiles(e);
    });

    $("input[name=self_intro]").change(function(e) {
        $('#profileSubmitBtn').prop('disabled',false);
    });
});
</script>
<div id="viewFriendModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:370px">
    <div class="modal-content" style="padding:0;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 class="modal-title" id="friendModalTitle"></h4>
      </div>
      <div class="modal-body" style="padding:0;">
        <ul class="follw_list" id="friendModalList_1" style="height:420px;overflow:yes;overflow-x:hidden;">
        </ul>
      </div>
    </div>
  </div>
</div>

<input type="hidden" id="newProfileUrl" name="new_profile_url">
<div id="vProfileImageModal" class="modal" role="dialog" aria-hidden="true">
      <div class="modal-dialog" style="width:570px">
        <div class="modal-content" style="padding:0;">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
            <h4 class="modal-title">프로필 사진 / 자기소개 편집</h4>
          </div>
          <div class="modal-body" style="padding:10px;text-align:center;">
                      <img id="vProfileImageModalSrc" src="http://recipe1.ezmember.co.kr/cache/rpf/2016/07/26/c1e8400c121a8f39277367c41cae6b65.jpg" style="max-width:550px;max-height:500px;">
            <div style="margin-top:10px;">
            <input type="file" name="file" id="file_1" style="display:none;" />
			<p><input type="text" name="self_intro" value="소자매를 키우는 불량엄마예요^^" class="input-sm" size="60" maxlength="100" placeholder="자기소개를 100자 이내로 작성해 주세요." /></p>
            <button type="button" onClick="document.getElementById('file_1').click();" class="btn btn-primary">프로필 사진 바꾸기</button>
            <button type="button" id="profileSubmitBtn" onClick="doProfileImageSubmit()" class="btn btn-primary" disabled="disabled">저장</button>
            </div>
                    </div>
        </div>
      </div>
    </div>
<script>
$(document).ready(function()
{
    $("#file_2").change(function(e) {
        handleBgFiles(e);
    });
});
</script>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/ez_dialog.min_20160430.js" charset="utf-8"></script>
<input type="hidden" id="newBgUrl" name="new_bg_url">
<div id="vBgImageModal" class="modal" role="dialog" aria-hidden="true">
  <div class="modal-dialog" style="width:570px">
    <div class="modal-content" style="padding:0;">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기"></span></button>
        <h4 class="modal-title">배경 사진 편집</h4>
      </div>
      <div class="modal-body" style="padding:10px;text-align:center;">
        <img id="vBgImageModalSrc" src="http://recipe1.ezmember.co.kr/img/df/brand_top.png" style="max-width:550px;max-height:500px;">
        <div style="margin-top:10px;">
        <input type="file" name="file2" id="file_2" style="display:none;" />
        893 X 400
        <button type="button" onClick="document.getElementById('file_2').click();" class="btn btn-primary">배경 사진 바꾸기</button>
        <button type="button" id="bgSubmitBtn" onClick="doBgImageSubmit()" class="btn btn-primary" disabled="disabled">저장</button>
        </div>
      </div>
    </div>
  </div>
</div>
	<div class="my_tabs">
	    <ul class="nav nav-tabs nav-justified" style="position:relative;">
	        <li role="presentation" class="active"><a href="/profile/recipe.html?uid=mamon08"><span class="glyphicon glyphicon-cutlery"></span>레시피</a></li>
	        <li role="presentation"><a href="/profile/review.html?uid=mamon08"><span class="glyphicon glyphicon-star"></span>요리후기</a></li>
	        <li role="presentation"><a href="/profile/recipe_comment.html?uid=mamon08"><span class="glyphicon glyphicon-comment"></span>댓글</a></li>
	        <li role="presentation"><a href="/profile/talk.html?uid=mamon08"><span class="glyphicon glyphicon-user"></span>토크</a></li>
	    </ul>
	</div>
<script>
function doSearch()
{
    var q = $("[name='qs']").val();
    if(!q)
    {
        alert('검색어를 입력하세요.');
        return ;
    }
    location.href = '/profile/recipe.html?uid=mamon08&qs='+q;
}
</script>

<div class="brand_cont mag_t_10">
    <p style="text-align:center; font-size:13px; padding:8px 0 5px;"></p>
        <div class="input-group info_srarch" style="margin-top:10px;">
            <input type="text" name="qs" class="form-control" placeholder="" value="">
            <span class="input-group-btn">
                <button class="btn btn-default" type="button" onclick="doSearch()"><img src="http://recipe1.ezmember.co.kr/img/mobile/icon_search4.png"></button>
            </span>
        </div>

        <ul class="cont_list st3">
        <li>
                        <a href="/recipe/6922919" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/12/02/24d903905e61bb883a9047f8d86bae611_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>아이가 좋아하는 초간단 반찬 간장두부조림 ..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6922918" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/12/02/28788dcac7c1e9fa2cbf92f0a17ad96e1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>절삭력 좋은 코렐브랜드 시카고커틀러리 중식..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6922917" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/12/02/2410a61687f07e9507b9fb554274cb2f1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>초간단 무생채 만들기</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6922916" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/12/02/5f3bacc1fd951f73ffd0ae5c38ab42ab1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>고구마큐브로 만드는 초간단 닭가슴살 샐러드</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6922915" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/12/02/c43420fef1147814f941b5d7e1c364a71_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>된장 수제비 만들기 </h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6921528" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/11/01/e583ff38f0433e6127341482a86540b11_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>면없는 가지 파스타와 야채국수 들기름소스 ..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6921527" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/11/01/8c6eba03965774c400b70d7b4d44d39c1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>오징어무국 간단레시피 아이들도 함께 먹어요..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6921526" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/11/01/e3402d39bbca17232449fa6dc4ad99071_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>오리슬라이스로 만든 오리야채볶음</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920546" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/13/5a7b6f4aaa34dab4918e6b9929ef1bca1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>매콤한 오징어볶음 만들기 밥반찬,술안주로도..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920545" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/13/31e50a622c8479dfaa2fe0cfa24687ed1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>고등어 김치찜 초간단레시피 통조림고등어로 ..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920316" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/a31bebdf09f3dacadfbeb233a045addb1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>초간단 레시피 콜라찜닭 술안주, 밥반찬으로..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920315" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/1fd16244058ab277de7bfea3546707c71_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>초간단 아이 간식, 맥주안주 베이컨떡말이와..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920314" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/68034d81cf22facef41a10fdf4ce58a01_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>초간단 반찬 마른미역볶음 만들기</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920313" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/86a0d0914d2f2bc7ce92b657f9939efb1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>아이들이 좋아하는 계란찜</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920312" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/20bdc20b5f7e2c1d0b8c8695f0f3c8d21_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>닭가슴살 소세지로 만든 계란핫도그 </h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6920311" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/10/08/aa8e8770a65a69ba9c090596bad556f11_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>초간단 밑반찬 멸치볶음 만들기 </h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6918678" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/09/04/45f3ae1d6ef04fc430d2067f3a3833801_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>수미네반찬 간장두부튀김 아이들 반찬으로 딱..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6918087" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/08/23/5141bf7fc3ed167c1b14424615520fbf1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>단호박고구마스프 레시피 여름엔 차갑게 먹어..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6918086" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/08/23/604b099e455f70e967102f88589d7ca21_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>에어프라이어로 만드는 버터고구마칩 ⓦ유기농..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        <li>
                        <a href="/recipe/6918085" class="thumbnail">
                <img src="http://recipe1.ezmember.co.kr/cache/recipe/2019/08/23/3f3500bb50d3c3e0f843c56822a1619e1_s.jpg" style="width:200px; height:130px;">
                <div class="caption">
                    <h4>아이간식 오징어튀김 바삭한 오징어링튀김만들..</h4>
                                        <p class="jq_elips">by 불량엄마소자매마미</p>
                </div>
            </a>
        </li>
        </ul>
      <nav class="text-center"><ul class="pagination"><li class="active"><a href="/profile/recipe.html?uid=mamon08&page=1">1</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=2">2</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=3">3</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=4">4</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=5">5</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=6">6</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=7">7</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=8">8</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=9">9</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=10">10</a></li><li><a href="/profile/recipe.html?uid=mamon08&page=11" aria-label="Next"><span aria-hidden="true">&gt;</span></a></li></ul></nav>
    </div>

  </div><!-- /contents_area -->

<div id="modalCopyRecipeId" class="modal fade in recipe_copy_layer" aria-hidden="false" style="display: hide;">
    <div class="modal-dialog">
        <div class="modal-content" style="padding:0;">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><img src="http://recipe1.ezmember.co.kr/img/btn_close.gif" alt="닫기" width="18px" height="18px"></span></button>
                <h4 class="modal-title">레시피ID 복사</h4>
            </div>
            <div class="modal-body">
                <div class="modal_guide">
                    <p class="list">레시피 마다 <b>숫자로된 고유 ID</b>를 가지고 있습니다.<br>
                        <span>예시) http://www.10000recipe.com/recipe/6828826</span><br>
                        <b>맨끝의 숫자</b> 5~7자리가 레시피ID입니다.</p>
                    <p class="list">글 작성 시에 <b>'@'뒤에 레시피ID</b>를 붙이면 해당 레시피 링크가 생성됩니다.<br>
                        <span>예시) 쯔유소스는 @6843190를 참고해주세요.</span></p>
                    <p class="list">복사(Ctrl+C) 후 원하는 곳에 붙여넣기(Ctrl+V)하세요.</p>
                    <p class="r_id" id="txtRecipeId">@</p>
                </div>
            </div>
            <div class="modal-footer">
                <!--button type="button" class="btn-lg btn-primary">확인</button-->
                <button type="button" class="btn-lg btn-default" data-dismiss="modal">닫기</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<script>
(function() {
    $(".btn_copy_recipe_id").click(function(e){
        e.stopPropagation();
		$("#txtRecipeId").html('@'+$(this).attr('recipe_id'));
        $(".document_common_layer").hide();
        $("#modalCopyRecipeId").modal('show');
    });
})();   
</script>
    <div id="right_area" class="col-xs-3">
    <div class="myhome_main" style="margin-bottom:20px;">
    <div class="myhome_main_t" style="background:url(http://recipe1.ezmember.co.kr/img/mobile/my_pic_d3.jpg) left top no-repeat; background-size:cover;"></div>
    <div class="myhome_main_info">
        <div class="info_pic">
            <a href="/profile/index.html?uid=mamon08"><img src="http://recipe1.ezmember.co.kr/cache/rpf/2016/07/26/9cd7bbbb0df8f6df5aa2f97d8820b9181.jpg"></a>
        </div>
        <p class="info_name"><b>불량엄마소자매마미</b>
                소자매를 키우는 불량엄마예요^^                        </p>
        <div class="info_follow2">
                        <a href="javascript:void(0);">총조회<b>4,994,323</b></a><span>·</span>
            <a href="javascript:void(0);" onClick="viewFriendList('follower')">팔로워<b>3,732</b></a><span>·</span><a href="javascript:void(0);" onClick="viewFriendList('following')">팔로잉<b>0</b></a>
        </div>
        <button type="button" class="btn btn-default btn-lg" id="btnActFriend_0" fact="insert" onClick="doActFriend('mamon08',0)">
            <span class="glyphicon glyphicon-plus"></span>소식받기        </button>
    </div>
</div>
<div class="blank_bottom"></div>
<script type="text/javascript">
<!--
$(document).ready(function()
{
    EZ.countLog('event_etc_right','web','read','289');
});
//-->
</script>
<div style="margin:10px;">
    <a href="/event/289?q_from=event_etc_right" onClick="EZ.countLog('event_etc_right','web','click','289');"><img src="http://recipe1.ezmember.co.kr/cache/rpe/2019/12/02/9eade492624584b18c407815c4a2ee2c1.jpg" style="width:100%;"></a>
</div>

        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=70" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/12/10/334021f67b118e9cf193ce3555d2b4e1.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=49" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/11/8b318e7f4f1069a5629126be84046484.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=15" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/10/23/ebbc83517be9e117ad532a1099ff02fd.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=14" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/10/23/032d690e295551df45eae3af0d50de78.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=67" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/12/09/bdcd9d9df2c92cf2b4f671af5f33c485.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=64" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/29/d4d6b1fa5f59e473fda5a94c825084ef.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=63" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/29/696d6fa9b9e6b95f1ff96c90b8136e9b.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=62" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/26/919b1ed1e90efba6164db54981cb013a.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=60" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/25/c3cecf54c7f58a155812b54f9e9d99c9.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=55" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/21/04f8311b00c809e694afc9bf32afe740.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=54" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/21/e56a4ff779d06ef84b9d9a362a39bd60.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=50" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/11/12/8153256eb1feb0d06cda5a19ddc6497d.jpg" style="width:100%;"></a>
        </div>
        <div style="margin:10px;">
            <a href="http://www.10000recipe.com/shop/event.html?q_from=app&transparent_title=1&seq=44" target="_blank"><img src="http://recipe1.ezmember.co.kr/cache/shop/2019/10/31/04cafb580e6bd58d27d9bc9387f73439.jpg" style="width:100%;"></a>
        </div>
<script type="text/javascript">
<!--
$(document).ready(function()
{
    var pages = 5;
        if(pages < 5) pages = 5;
    $.ajax({
        type: "GET",
        url: "/recipe/ajax.html?q_mode=rightShopBest&pages="+pages,
        success: function(result) {
            if(result)
            {
                $("#ShopBestDiv").html(result);
            }
        }
    });
});
//-->
</script>
    <div id="ShopBestDiv"></div>
    </div><!-- /right_area -->
    <div class="col-xs-12 sub_bg_btm"></div>
</div><!-- /container -->
<script>
var curVRPage = 1;
var totalVRcnt = 0;
function getViewRecipeList(page)
{
    if($("#rRecipContDivPage_"+page).length > 0)
    {
        $("[id^='rRecipContDivPage_']").hide();
        $("#rRecipContDivPage_"+page).show();
        curVRPage = page;
        return ;
    }
    var rvArr = storageUtil.get('stRecentViewRecipe');
    if(!rvArr || rvArr == 'FAIL')
    {
        $("#recentRecipeDiv").hide();
        return ;
    }
    totalVRcnt = rvArr.length;
    var scale = 6;
    var skip = (page-1) * scale;
    var lastpage = Math.ceil(totalVRcnt/scale);
    var hstr = '';
    hstr += '<div id="rRecipContDivPage_'+page+'" class="row">';
    if(page > 1) hstr += '<a href="javascript:void(0);" class="list_btn_pre" onClick="getViewRecipeList('+(page-1)+')"><img src="http://recipe1.ezmember.co.kr/img/btn_arrow1_l.png" alt="이전"></a>';
    if(page < lastpage) hstr += '<a href="javascript:void(0);" class="list_btn_next" onClick="getViewRecipeList('+(page+1)+')"><img src="http://recipe1.ezmember.co.kr/img/btn_arrow1_r.png" alt="다음"></a>';
    for(var i=skip; i<skip+scale; i++)
    {
        var rvs = rvArr[i];
        if(!rvs) continue;
        hstr += '<div class="col-xs-2">';
        hstr += '<a class="thumbnail" href="/recipe/'+rvs.seq+'"><img src="'+rvs.thumb+'" style="width:180px; height:180px;">';
        hstr += '<div class="caption elipsis_rrtitle"><b>'+rvs.title+'</b></div></a>';
        hstr += '</div>';
    }
    hstr += '</div>';
    if(page != 1 && curVRPage > page) $("#recentRecipeContDiv").prepend(hstr);
    else  $("#recentRecipeContDiv").append(hstr);
    getViewRecipeList(page);
    $(".elipsis_rrtitle").ellipsis({row: 2});
}

$(document).ready(function () {
    getViewRecipeList(1);
})
</script>
<div id="recentRecipeDiv" class="container">
  <div class="rcp_lately_list">
    <h3>최근 본 레시피</h3>
    <div id="recentRecipeContDiv"></div>
  </div>
</div>
<script type="text/javascript">
<!--
$(document).ready(function() {
    $('#appDownLayerBtn').click(function (e) {
        // Used to stop the event bubbling..
        e.stopPropagation();
        if ($('.app_layer').is(':visible')) {
            $('.app_layer').hide();
        } else {
            $('.app_layer').show();
        }
    });
    $(document).click(function () {
        $('.app_layer').hide();
    });
});

function customerPropose()
{
    if(!$("#customerSend").val()) {
        alert('의견을 입력해주세요.');
        $("#customerSend").focus();
        return false;
    }

    $.ajax({
        type: "POST",
        url: "/customer/insert.html",
        data: {
            q_mode : 'insert',
            bid : '4',
			board_txt : $("#customerSend").val()
        },
        dataType: "json",
        success: function(result) {
			if (result.result == 'SUCCESS') {
	            alert('의견이 접수되었습니다. 감사합니다.');
	            $("#customerSend").val('');
			} else if (result.result == 'ERROR') {
                alert(result.msg);
            }
        }
    });
}
//-->
</script>

<div class="footer">
    <div class="container">
        <div class="row">
            <div class="col-xs-4 intro" style="width:440px;">
                <p class="f_link">
                    <a href="http://www.ezhld.co.kr/2012_ezhld/company/company.html" target="_blank">회사소개</a><span>|</span>
                    <a href="http://www.10000recipe.com/ad/" target="_blank">광고문의</a><span>|</span>
                    <a href="/user/rules.html?f=privacy" target="_blank">개인정보처리방침</a><span>|</span>
                    <a href="/user/rules.html?f=contract" target="_blank">이용약관 </a><span>|</span>
                    <a href="/customer/list.html">고객센터</a>
                </p>
                <p class="f_info">대표 : 이인경 / E : help@10000recipe.com / F : 02) 323-5049 <br>서울 금천구 가산동 371-50 에이스하이엔드타워 3차 1106-1호 <br>문의전화(운영시간 평일 10:00~18:00)<br>쇼핑문의(만개스토어) : 02-6952-7747<br>서비스 이용문의 : 070-4896-6416 </p>
                <p class="f_info">(주)이지에이치엘디 / 사업자등록번호 117-81-44101 / 통신판매업신고 <br>제 2009-서울금천-0631호 / 벤처기업확인 / <a href="http://www.ftc.go.kr/info/bizinfo/communicationList.jsp" target="_blank" style="color:#999">사업자정보확인</a> <br>서울지방중소기업청 제 031134233-1-01643호</p>
                <p class="f_info">Copyright <b>©EZHLD</b> Inc. All Rights Reserved</p>
            </div>
            <div class="col-xs-2 banner" style="width:500px;">
                <div class="app_layer" style="display:none;">
                    <p class="tit">모바일 만개의 레시피 다운받기</p>
                    <div class="layer_l"><img src="http://recipe1.ezmember.co.kr/img/img_ezqr1.gif" alt="안드로이드"><a href="https://market.android.com/details?id=com.ezhld.recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btn_go.gif" alt="바로가기"></a></div>
                    <div class="layer_r"><img src="http://recipe1.ezmember.co.kr/img/img_ezqr2.gif" alt="아이폰"><a href="https://itunes.apple.com/kr/app/yoribaeggwa-mangaeyi-resipi/id494190282?mt=8" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btn_go.gif" alt="바로가기"></a></div>
                </div>
                <a href="javascript:void(0);" id="appDownLayerBtn"><img src="http://recipe1.ezmember.co.kr/img/btm_app2.gif" alt="app다운로드"></a>
                <div class="banner_sns">
                    <a href="https://www.facebook.com/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_1.gif" alt="페이스북"></a>
                    <a href="https://www.instagram.com/10000recipe/" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_2.gif" alt="인스타그램"></a>
                    <a href="https://www.youtube.com/channel/UCKA_6r3CWC76x_EaFO6jsPA" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_3.gif" alt="유투브"></a>
                    <!--a href="http://tvcast.naver.com/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_4.gif" alt="네이버TV"></a-->
                    <a href="https://blog.naver.com/ezday1" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_4_1.gif" alt="네이버블로그"></a>
                    <a href="http://m.post.naver.com/my.nhn?memberNo=11566067" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_5.gif" alt="네이버포스트"></a>
                    <a href="https://tv.kakao.com/channel/2134164/video" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_6.gif" alt="카카오TV"></a>
                    <a href="https://story.kakao.com/ch/10000recipe" target="_blank"><img src="http://recipe1.ezmember.co.kr/img/btm_sns_7.gif" alt="카카오스토리"></a>
                </div>
            </div>
            <div class="col-xs-3 comment">
                <textarea id="customerSend" name="board_txt" class="form-control" placeholder="만개의레시피에 전하고 싶은 의견을 남겨주세요. 회원님의 의견에 항상 귀 기울이겠습니다."></textarea>
                <button class="btn btn-default" onclick="customerPropose();">의견제출</button>
                <p class="noti">개별회신을 원하시면 <a href="/customer/list.html?bid=3" style="text-decoration:underline; color:#666;">여기</a>에 문의하세요.</p>
            </div>
        </div>
    </div>
</div>
<div class="footer st2">
    <div class="container">
        <img src="http://recipe1.ezmember.co.kr/img/logo6.png">
        <ul class="btm_stats">
            <li><a href="/brand/apply.html" style="color:#fff;"><span class="btm_stats_1"></span>제휴업체수</a><b>426</b></li>
            <li><a href="/chef/apply.html" style="color:#fff;"><span class="btm_stats_2"></span>총 쉐프수</a><b>2,284</b></li>
            <li><a href="/recipe/list.html" style="color:#fff;"><span class="btm_stats_3"></span>총 레시피수</a><b>128,389</b></li>
            <li><span class="btm_stats_4"></span>월 방문자수<b>5,140,000</b></li>
            <li><span class="btm_stats_5"></span>총 레시피 조회수<b>1,621,005,139</b></li>
        </ul>
        <div class="btm_mail">
            <a href="mailto:marketing@10000recipe.com"><img src="http://recipe1.ezmember.co.kr/img/btm_img2.png"></a>
        </div>
    </div>
    <div style="background:#fff; text-align:center; padding:16px 0; margin-bottom:-10px;"><img src="http://recipe1.ezmember.co.kr/img/btm_since.png"></div>
</div>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/coreutil.min_20170112.js" charset="utf-8"></script>
<script type="text/javascript" src="http://recipe1.ezmember.co.kr/static/js/ui.min_20150609.js" charset="utf-8"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-62003031-2', 'auto');
  ga('require', 'displayfeatures');
  ga('send', 'pageview');
</script>
<img src="//kr-gmtdmp.mookie1.com/t/v2/learn?tagid=V2_255869&src.rand=[timestamp]" style="display:none;"/>
<img src="//kr-gmtdmp.mookie1.com/t/v2/activity?tagid=V2_281041&src.rand=[timestamp]" style="display:none;"/>
<iframe src="//static-tagr.gd1.mookie1.com/s1/sync-apac.html?cc=KR" style="display:none;"></iframe>

</body>
</html>