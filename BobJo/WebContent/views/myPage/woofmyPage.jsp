<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<div class="xans-element- xans-myshop xans-myshop-orderhistorytab -tab-section -tab-single -tab-3 -box "><a href="/myshop/order/list.html?history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018" class="selected">주문내역조회 (0)</a>
<a href="/myshop/order/list.html?mode=cs&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018" class="">취소/반품/교환 내역 (0)</a>
<a href="/myshop/order/list_old.html?mode=old&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018" class=" displaynone">이전 주문내역 (0)</a>
</div>
<!-- 나의 주문조회 : -panda -->
<form method="GET" id="OrderHistoryForm" name="OrderHistoryForm" ><div class="xans-element- xans-myshop xans-myshop-orderhistoryhead -order-searchbox "><!--@--css(/css/module/myshop/orderHistoryHead.css)-->
<fieldset>
<legend>검색기간설정</legend>
			<p>
				<a href="#none" class="btnNormal" days="00"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date1_on.gif" alt="오늘"/></a>
				<a href="#none" class="btnNormal" days="07"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date2_on.gif" alt="1주일"/></a>
				<a href="#none" class="btnNormal" days="30"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date3_on.gif" alt="1개월"/></a>
				<a href="#none" class="btnNormal" days="90"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date4_on.gif" alt="3개월"/></a>
				<a href="#none" class="btnNormal" days="180"><img src="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" offimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5.gif" onimage="http://img.echosting.cafe24.com/skin/base_ko_KR/myshop/btn_date5_on.gif" alt="6개월"/></a>
			</p>
			<p class="-inputs"><input id="history_start_date" name="history_start_date" class="fText" readonly="readonly" size="10" value="2019-09-13" type="text"  />   ~   <input id="history_end_date" name="history_end_date" class="fText" readonly="readonly" size="10" value="2019-12-12" type="text"  /></p>
			<p><input alt="조회" id="order_search_btn" type="image" src="//img.echosting.cafe24.com/skin/admin_ko_KR/myshop/btn_search.gif"  /></p>
		</fieldset>
</div>
<input id="mode" name="mode" value="" type="hidden"  />
<input id="term" name="term" value="" type="hidden"  />
</form><!-- 나의 주문내역 : -panda -->
<div class="xans-element- xans-myshop xans-myshop-orderhistorylistitem -board-package"><!--@--css(/css/module/myshop/orderHistoryListItem.css)-->
<!--
			$login_url = /member/login.html
		-->
<!-- 타이틀 : -panda -->
<br/><br/><br/><div class="-title-package">
			<h1>주문 상세내역</h1>
			<h2>고객님의 주문 상품 정보 입니다.</h2>
		</div>
<table>
<caption>주문 상품 정보</caption>
			<colgroup>
<col style="width:140px;"/>
<col style="width:100px;"/>
<col style="width:auto;"/>
<col style="width:100px;"/>
<col style="width:100px;"/>
<col style="width:100px;"/>
<col style="width:100px;"/>
</colgroup>
<thead class="xans-board-listheader"><tr>
<th scope="col" class="number">주문번호</th>
					<th scope="col" class="thumb">   </th>
					<th scope="col" class="product">상품명</th>
					<th scope="col" class="quantity">수량</th>
					<th scope="col" class="price">결제금액</th>
					<th scope="col" class="state">주문상태</th>
					<th scope="col" class="service">   </th>
				</tr></thead>
<tbody class="xans-board-list displaynone">
<tr class="">
<td  class="number displaynone">
												<a href="detail.html" class="-btn -mint -xs -block"><i class="-ico -ico-credit-card"></i>  </a>
                        
						<!--a href="#none" class="displaynone -btn -white -xs -block -mgt3" onclick=""><i class="-ico -ico-close" />&nbsp; 주문취소</a>
						<a href="cancel.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-close" />&nbsp; 취소신청</a>
						<a href="exchange.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-refresh" />&nbsp; 교환신청</a>
						<a href="return.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-refresh" />&nbsp; 반품신청</a-->
                        
					</td>
					<td class="-thumb"><a href="/product/detail.html"><img src="" onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""/></a></td>
					<td class="subject product">
						<a href="/product/detail.html"></a>
						<div class="option displaynone"></div>
						<ul class="xans-element- xans-myshop xans-myshop-optionset option"><li class="">
<strong></strong> (개)</li>
</ul>
<p class="free displaynone">무이자할부 상품</p>
					</td>
					<td class="quantity"></td>
					<td class="price">
<strong></strong><div class="displaynone"></div>
</td>
					<td class="state -hold">
						<p></p>
						<p class="displaynone"><a href="" target=""></a></p>
						<p class="displaynone"><a href="#none" class="-btn -blue -xs -block" onclick=""><i class="-ico -ico-truck"></i>  </a></p>
						<a href="/board/product/write.html" class="displaynone -btn -pink -xs -block -mgt3 crema-new-review-link" data-cafe24-product-link=""><i class="-ico -ico-camera"></i>  구매후기</a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">취소철회  <i class="-ico -ico-angle-right"></i></a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">교환철회  <i class="-ico -ico-angle-right"></i></a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">반품철회  <i class="-ico -ico-angle-right"></i></a>
					</td>
					<td class="service">
						<p class="displaynone"><a href="#none" class="-btn -black -xs" onclick=""><i class="-ico -ico-check"></i>  상세정보</a></p>
						<p class="displaynone">-</p>
					</td>
				</tr>
<tr class="">
<td  class="number displaynone">
												<a href="detail.html" class="-btn -mint -xs -block"><i class="-ico -ico-credit-card"></i>  </a>
                        
						<a href="#none" class="displaynone -btn -white -xs -block -mgt3" onclick=""><i class="-ico -ico-close"></i>  주문취소</a>
						<a href="cancel.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-close"></i>  취소신청</a>
						<a href="exchange.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-refresh"></i>  교환신청</a>
						<a href="return.html" class="displaynone -btn -white -xs -block -mgt3"><i class="-ico -ico-refresh"></i>  반품신청</a>
                        
					</td>
					<td class="-thumb"><a href="/product/detail.html"><img src="" onerror="this.src='http://img.echosting.cafe24.com/thumb/img_product_small.gif';" alt=""/></a></td>
					<td class="subject product">
						<a href="/product/detail.html"></a>
						<div class="option displaynone"></div>
						<ul class="xans-element- xans-myshop xans-myshop-optionset option"><li class="">
<strong></strong> (개)</li>
</ul>
<p class="free displaynone">무이자할부 상품</p>
					</td>
					<td class="quantity"></td>
					<td class="price">
<strong></strong><div class="displaynone"></div>
</td>
					<td class="state -hold">
						<p></p>
						<p class="displaynone"><a href="" target=""></a></p>
						<p class="displaynone"><a href="#none" class="-btn -blue -xs -block" onclick=""><i class="-ico -ico-truck"></i>  </a></p>
						<a href="/board/product/write.html" class="displaynone -btn -pink -xs -block -mgt3 crema-new-review-link" data-cafe24-product-link=""><i class="-ico -ico-camera"></i>  구매후기</a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">취소철회  <i class="-ico -ico-angle-right"></i></a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">교환철회  <i class="-ico -ico-angle-right"></i></a>
						<a href="#none" class="displaynone -btn -grey -xs -block -mgt3" onclick="">반품철회  <i class="-ico -ico-angle-right"></i></a>
					</td>
					<td class="service">
						<p class="displaynone"><a href="#none" class="-btn -black -xs" onclick=""><i class="-ico -ico-check"></i>  상세정보</a></p>
						<p class="displaynone">-</p>
					</td>
				</tr>
</tbody>
</table>
<div class="-board-empty ">
			<i class="-ico -ico-whatsapp"></i><br/>주문 내역이 없습니다
		</div>
</div>
<!-- 페이징 : -panda -->
<div class="xans-element- xans-myshop xans-myshop-orderhistorypaging -paging-package"><a href="?page=1&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018"> <i class="-ico -ico-angle-double-left"></i> </a>
<a href="?page=1&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018"> <i class="-ico -ico-angle-left"></i> </a>
<p>
			<a href="?page=1&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018" class="this xans-record-">1</a>
					</p>
<a href="?page=1&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018"> <i class="-ico -ico-angle-right"></i> </a>
<a href="?page=1&history_start_date=2019-09-13&history_end_date=2019-12-12&past_year=2018"> <i class="-ico -ico-angle-double-right"></i> </a>
</div>
<div class="help">
		<h3>검색기간설정 안내</h3>
		<div class="content">
			<ul>
<li class="item1">기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다. </li>
				<li class="item2">주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</li>
			</ul>
</div>
	</div>
</div>
<!--// 종료 -->



</body>
</html>