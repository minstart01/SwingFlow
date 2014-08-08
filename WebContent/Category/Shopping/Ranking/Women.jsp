<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<style type="text/css">
</style>
<script type="text/javascript" charset="UTF-8"
	src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>

<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Shopping/skin.css">
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Shopping/base.css">
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css">
<script type="text/javascript">
	$(function() {
		$(".genderSec").css("visibility", "hidden")
		$(".itemListWid").css("width", $(window).width() - 313)
		$(window).resize(function(e) {
			$(".itemListWid").css("width", $(window).width() - 313)
		})
		$()
		$("#sidebarSec li").each(function(para) {
			$(this).hover(function(e) {
				$(this).find(".sub").css("top", e.pageY - 30);
				$(this).find(".sub").show();
			}, function(e) {
				$(this).find(".sub").hide();
			});
		});
	})
</script>
</head>
<body class="jqtransformdone" style="visibility: visible; opacity: 1;">
	<div id="topSec">
		<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	</div>
	<div id="midSec">
		<jsp:include page="/Category/Shopping/Sidebar.jsp"></jsp:include>
		<div class="lymSec">
			<div class="wrap">
				<div class="itemListSec itemListWid">
					<div class="selGenderSec">
						<div class="in" style="position: fixed;">
							<h3></h3>
							<ul class="M">
								<li><a href="javascript:;">여성</a></li>
								<li class="l"><a href="javascript:;"
									style="cursor: default;">남성</a></li>
								<li class="l"><a href="javascript:;">전체</a></li> -->
							</ul>
						</div>
					</div>
					<dl class="quickSec">
						<dt>
							<a href="javascript:;" class="ico-btn-1"><em
								class="sys-txt-1">TOP</em></a>
						</dt>
						<dd class="q1">
							<a href="/recent/prod"><em class="ico-btn-1" title="최근 본 상품">최근
									본 상품</em></a><i class="ico-btn-1">0</i>
						</dd>
						<dd class="q2">
							<a href="/recent/shop"><em class="ico-btn-1" title="최근 본 쇼핑몰">최근
									본 쇼핑몰</em></a><i class="ico-btn-1">0</i>
						</dd>
					</dl>
					<ul class="itemList" id="itemPrintProd">
					
						<li class="item  sec2 w" seq="1525">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>1</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(1525, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 1525, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/1525" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),1525); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 1525); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 1525); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 1525, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/08/1406862807933_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 1525, 'Y', $(this)); return false">커먼유니크</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 1525, 'Y', $(this)); return false" title="10대,20대, 얼반·모던·심플,유니크·빈티지">10대,20대, 얼반·모던·심플,유니크·빈티지</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 1525, 'Y', $(this)); return false">다른 감각, 특별한 감성. 모던한듯 유니크한 셀렉트 상품.  입소문타고 새롭게 떠오른 2014 핫플레이스 커먼유니크</a></div></div></li>	
						
						<li class="item  sec2 w" seq="1148">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>2</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(1148, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 1148, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/1148" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),1148); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 1148); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 1148); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 1148, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/08/1407374343852_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 1148, 'Y', $(this)); return false">메롱샵</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 1148, 'Y', $(this)); return false" title="10대,20대, 10대 의류">10대,20대, 10대 의류</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 1148, 'Y', $(this)); return false">착한가격 막퍼주는 메롱샵,패션에 미칠것같은!가슴뛰는심장이 좋다!흉내낼수 없는 이벤트,말안되는가격5500원,HOT한가격</a></div></div></li>
						
						<li class="item  sec2 w" seq="582">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>3</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(582, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 582, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/582" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),582); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 582); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 582); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 582, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/08/1407121756531_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 582, 'Y', $(this)); return false">로렌하이</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 582, 'Y', $(this)); return false" title="20대,30대, 러블리캐주얼,얼반·모던·심플">20대,30대, 러블리캐주얼,얼반·모던·심플</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 582, 'Y', $(this)); return false">오늘그리고내일도 로렌하이!! 네에게 눈을 뗄수 없는 이유가 뭔지 내게 말해줘~ 유니크 데일리룩</a></div></div></li>
						
						<li class="item  sec2 w" seq="1084">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>4</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(1084, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 1084, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/1084" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),1084); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 1084); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 1084); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 1084, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/08/1407122267607_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 1084, 'Y', $(this)); return false">헬로우스위티</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 1084, 'Y', $(this)); return false" title="20대,30대, 러블리캐주얼,럭셔리·명품스타일">20대,30대, 러블리캐주얼,럭셔리·명품스타일</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 1084, 'Y', $(this)); return false">퀄리티있는 여성스러움,  원피스, 블라우스, 스커트, 티셔츠  등 취급.  핏과 소재를 중요시 하는 실용주의 쇼핑몰</a></div></div></li>
						
						<li class="item  sec2 w" seq="772">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>5</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(772, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 772, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/772" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),772); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 772); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 772); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 772, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/08/1407377585678_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 772, 'Y', $(this)); return false">스타일티바</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 772, 'Y', $(this)); return false" title="20대,30대, 러블리캐주얼,얼반·모던·심플">20대,30대, 러블리캐주얼,얼반·모던·심플</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 772, 'Y', $(this)); return false">패션친구 스타일티바 쏘핫썸머! 여행패션제안,신규가입5000원,리뷰퀸10,000원적립금지급SALE70%~30%.신상품5%할인</a></div></div></li>

						<li class="item  sec2 w" seq="2442">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>6</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(2442, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 2442, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/2442" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),2442); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 2442); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 2442); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 2442, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/07/1406796695393_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 2442, 'Y', $(this)); return false">단스</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 2442, 'Y', $(this)); return false" title="20대,30대, 얼반·모던·심플">20대,30대, 얼반·모던·심플</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 2442, 'Y', $(this)); return false">여성의류 전문 쇼핑몰 2014 new 비키니 업데이트중!! 모던 시크 감성룩 제안.</a></div></div></li>

						<li class="item  sec2 w" seq="909">	<div class="img"><div class="icon"><p class="new"><i><em>쇼퍼추천</em><strong>7</strong>위</i><em class="dim"></em></p></div><div class="btnSec" style="display: none;"><ul><li class="first"><a href="javascript:;" onclick="shopDetailView(909, $(this)); return false;" class="b5">쇼핑몰정보</a><em></em></li><li class="ss"><a href="javascript:;" onclick="similarView($(this), 909, 'shop'); return false;" class="b1">비슷한쇼핑몰</a><em></em></li><li class="cleft"><a href="/shop/909" class="b6">BEST 상품</a><em></em></li><li class="f"><a href="javascript:;" class="b7" onclick="friendShopSave($(this),909); return false;">친구등록</a><em></em></li><li><a href="javascript:;" onclick="snsControl('FB', 'shop', $(this), 909); return false;" class="b3">페이스북 공유</a><em></em></li><li class="last"><a href="javascript:;" onclick="snsControl('TW', 'shop', $(this), 909); return false;" class="b4">트위터 공유</a><em></em></li></ul></div><p><a href="javascript:;" onclick="itemLinkUrl('shop', 909, 'Y', $(this)); return false"><img src="http://img.sta1.info/_up/shop/logo/2014/07/1405576892100_a1.jpg?20140808" class="itemImg"></a></p></div><div class="info c2"><div class="in"><a href="javascript:;" class="shop" onclick="itemLinkUrl('shop', 909, 'Y', $(this)); return false">데일리먼데이</a><a href="javascript:;" class="sCate" onclick="itemLinkUrl('shop', 909, 'Y', $(this)); return false" title="20대,30대, 얼반·모던·심플">20대,30대, 얼반·모던·심플</a><a href="javascript:;" class="cmt" onclick="itemLinkUrl('shop', 909, 'Y', $(this)); return false">감각유니크 N믹스매치 셀렉트샵. 심플하고 미니멀한 스타일의 유니크 쇼핑몰.</a></div></div></li>

					</ul>
				</div>
			</div>

			<div class="layerSec">
				<div class="totalMenuSec" style="left: 0px;">
					<h3>
						<a href="/home"><img
							src="http://img.sta1.info/rsc/f/i/s/logo_4.gif"
							alt="스타일닷컴, 대한민국 모든 읠쇼핑몰의 상품을 모았습니다."></a>
					</h3>
					<a href="javascript:;"
						onclick="layerOff('totalMenuSec'); return false;"
						class="close ico-btn-1">닫기</a>
					<div class="lgnbSec">
						<ul>
							<li num="7" class="g7"><a href="/discount" cate="700"
								class="depth1"><em class="sys-txt-1">할인쇼핑</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/discount" cate="700">전체할인쇼핑</a>
										</dd>
										<dd>
											<a href="/discount/women" cate="701">여성할인쇼핑</a>
										</dd>
										<dd>
											<a href="/discount/men" cate="702">남성할인쇼핑</a>
										</dd>
									</dl>
								</div></li>
							<li num="1" class="g1"><a href="/shopping/women"
								cate="1000000" class="depth1"><em class="sys-txt-1">여성신상품</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/shopping/women" cate="1000000">전체상품</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1010000" cate="1010000">티셔츠</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1020000" cate="1020000">반팔티</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1030000" cate="1030000">원피스</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1040000" cate="1040000">바지</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1050000" cate="1050000">반바지</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1060000" cate="1060000">블라우스/셔츠</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1070000" cate="1070000">테마/시즌의류</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1080000" cate="1080000">니트/스웨터</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1090000" cate="1090000">가디건</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1100000" cate="1100000">레깅스</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1110000" cate="1110000">청바지</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1120000" cate="1120000">스커트</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1130000" cate="1130000">자켓</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1140000" cate="1140000">점퍼</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1150000" cate="1150000">코트</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1160000" cate="1160000">조끼</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1170000" cate="1170000">트레이닝복</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1180000" cate="1180000">속옷/언더웨어</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1190000" cate="1190000">신발/구두/운동화</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1200000" cate="1200000">가방</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1210000" cate="1210000">지갑/잡화</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1220000" cate="1220000">액세서리/주얼리/시계</a>
										</dd>
										<dd>
											<a href="/shopping/women?cs=1230000" cate="1230000">화장품</a>
										</dd>
									</dl>
								</div></li>
							<li num="2" class="g2"><a href="/ranking/women" cate="200"
								class="depth1"><em class="sys-txt-1">여성쇼핑몰 순위</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/ranking/women" cate="200">전체쇼핑몰</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=201" cate="201">러블리캐주얼</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=202" cate="202">섹시캐주얼</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=203" cate="203">럭셔리·명품스타일</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=204" cate="204">얼반·모던·심플</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=205" cate="205">유니크·빈티지</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=206" cate="206">10대 의류</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=207" cate="207">30대 미시</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=208" cate="208">빅사이즈·임부복</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=209" cate="209">구두·수제화</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=210" cate="210">가방전문샵</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=211" cate="211">쥬얼리·엑세서리·가발</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=212" cate="212">속옷(언더웨어)</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=213" cate="213">커플룩·비치룩</a>
										</dd>
										<dd>
											<a href="/ranking/women?cs=215" cate="215">연예인·핫이슈몰</a>
										</dd>
									</dl>
								</div></li>
							<li num="3" class="g3"><a href="/shopping/men"
								cate="2000000" class="depth1"><em class="sys-txt-1">남성신상품</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/shopping/men" cate="2000000">전체상품</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2100000" cate="2100000">자켓</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2110000" cate="2110000">점퍼</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2080000" cate="2080000">가디건</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2120000" cate="2120000">코트</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2130000" cate="2130000">조끼/베스트</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2090000" cate="2090000">니트/스웨터</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2010000" cate="2010000">티셔츠</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2030000" cate="2030000">셔츠/남방</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2060000" cate="2060000">청바지</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2040000" cate="2040000">바지</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2150000" cate="2150000">정장/슈트</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2140000" cate="2140000">트레이닝복</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2160000" cate="2160000">신발</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2170000" cate="2170000">가방</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2180000" cate="2180000">모자</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2190000" cate="2190000">지갑/잡화</a>
										</dd>
										<dd>
											<a href="/shopping/men?cs=2070000" cate="2070000">비치웨어</a>
										</dd>
									</dl>
								</div></li>
							<li num="4" class="g4"><a href="/ranking/men" cate="300"
								class="depth1"><em class="sys-txt-1">남성쇼핑몰 순위</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/ranking/men" cate="300">전체쇼핑몰</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=301" cate="301">트랜드·캐주얼</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=302" cate="302">유니크</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=303" cate="303">댄디·옴므·수트·클래식</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=304" cate="304">레플리카</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=305" cate="305">빈티지</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=306" cate="306">힙합·도메스틱·스트릿</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=307" cate="307">구두·수제화·가방</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=308" cate="308">시계·액세서리</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=309" cate="309">키작남전문</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=310" cate="310">빅사이즈</a>
										</dd>
										<dd>
											<a href="/ranking/men?cs=311" cate="311">연예인·핫이슈몰</a>
										</dd>
									</dl>
								</div></li>
							<li num="6" class="g6"><a href="/ranking/brand" cate="400"
								class="depth1"><em class="sys-txt-1">브랜드샵 순위</em></a>
								<div class="sub">
									<dl>
										<dd>
											<a href="/ranking/brand" cate="400">전체쇼핑몰</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=401" cate="401">남성브랜드</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=402" cate="402">여성브랜드</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=403" cate="403">스포츠브랜드·멀티샵</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=404" cate="404">아웃도어</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=405" cate="405">코스메틱</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=406" cate="406">시계·잡화·엑세서리</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=407" cate="407">명품</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=501" cate="501">오픈마켓</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=502" cate="502">대형몰</a>
										</dd>
										<dd>
											<a href="/ranking/brand?cs=503" cate="503">소셜커머스</a>
										</dd>
									</dl>
								</div></li>
						</ul>
					</div>
					<div class="tmenuSec">
						<ul>
							<li class="t1"><a href="javascript:;"
								onclick="layerOn('loginSec'); return false;"><em
									class="sys-txt-1">로그인</em></a></li>
							<li class="t2"><a href="javascript:;"
								onclick="layerOn('joinSec'); return false;"><em
									class="sys-txt-1">회원가입</em></a></li>
							<li class="t3"><a href="javascript:;"
								onclick="myCouponBookList(); return false;"><em
									class="sys-txt-1">쿠폰북</em></a></li>
							<li class="t4"><a href="/user/friends"
								onclick="myFriendLink(); return false;"><em
									class="sys-txt-1">친구쇼핑몰</em></a></li>
							<li class="t5"><a href="/user/favorProd"
								onclick="myFavorProdLink(); return false;"><em
									class="sys-txt-1">관심상품</em></a></li>
							<li class="t6"><a href="/recent/prod"><em
									class="sys-txt-1">최근 본 상품</em><i class="ico-btn-1">0</i></a></li>
							<li class="t7"><a href="/recent/shop"><em
									class="sys-txt-1">최근 본 쇼핑몰</em><i class="ico-btn-1">0</i></a></li>
						</ul>
					</div>
				</div>


				<div class="similarSec layer">
					<div class="fleft">
						<h3>
							<span>비슷한 상품</span><strong>Similar Products</strong><em
								class="ico-btn-1"></em>
						</h3>
						<div class="itemListSec">
							<ul class="itemList">
							</ul>
						</div>
						<a href="javascript:;"
							onclick="$('.layerSec').scrollTop(0); return false;" class="top"><em
							class="sys-txt-1">TOP</em></a> <a href="javascript:;"
							onclick="layerOff('similarSec'); return false;" class="close"><em
							class="ico-btn-1">닫기</em></a>
					</div>
					<div class="fright">
						<div class="alignSec">
							<ul class="align">
								<li><a href="javascript:;" class="on"
									onclick="similarProdOf(0); return false;">정확도순</a></li>
								<li><a href="javascript:;"
									onclick="similarProdOf(1); return false;">신상품순</a></li>
								<li><a href="javascript:;"
									onclick="similarProdOf(2); return false;">베스트 상품순</a></li>
								<li><a href="javascript:;"
									onclick="similarProdOf(3); return false;">클릭순</a></li>
								<li><a href="javascript:;"
									onclick="similarProdOf(4); return false;">낮은 가격순</a></li>
								<li><a href="javascript:;"
									onclick="similarProdOf(5); return false;">높은 가격순</a></li>
							</ul>
						</div>
						<div class="itemListSec">
							<ul class="itemList">
							</ul>
						</div>
					</div>
				</div>

				<div class="companySec layer"></div>

				<div class="agreementSec1 layer"></div>

				<div class="agreementSec2 layer"></div>

				<div class="inquirySec layer">
					<div class="head">
						<h3>제휴문의</h3>
						<a href="javascript:;"
							onclick="layerOff('inquirySec'); return false;" class="ico-btn-1">닫기</a>
					</div>
					<form name="fmMkcPropose" method="post" action="/front/propose"
						confirmmessage="제휴문의를 등록하시겠습니까?" target="_iFrmForAction"
						enctype="multipart/form-data" class="_autoValidateForm">
						<div class="sec">
							<div class="sec1">
								<h4>제안내용</h4>
								<ul class="frm">
									<li><label for="label-l-sbj" class="tit">제목</label> <input
										name="title" value="" type="text" id="label-l-sbj"
										fieldname="제목" restrictutf8bytes="60"
										class="inp1 hd-lab __required" style="width: 366px;"></li>
									<li><label for="label-contents" class="tit">제안내용</label> <textarea
											name="contents" id="label-contents" fieldname="내용"
											restrictutf8bytes="4000" class="inp1 __required"
											style="width: 366px; height: 120px;"></textarea></li>
									<li><label for="label-l-file" class="tit b1">제안서
											첨부</label> <input name="attachFile" type="file" id="label-l-file"
										fieldname="첨부파일" class="inp1 hd-lab l6" style="width: 366px;">
									</li>
								</ul>
							</div>
							<div class="sec1">
								<h4>제안사 업체 정보</h4>
								<ul class="frm">
									<li><label for="label-l-comname" class="tit b1">회사명</label>
										<input name="comName" value="" type="text"
										id="label-l-comname" fieldname="회사명" restrictutf8bytes="45"
										class="inp1 hd-lab __required" style="width: 366px;"></li>
									<li><label for="label-l-name" class="tit">담당자명</label> <input
										name="contactName" value="" type="text" id="label-l-name"
										fieldname="담당자명" restrictutf8bytes="15"
										class="inp1 hd-lab __required" style="width: 366px;"></li>
									<li><label for="label-l-num" class="tit">연락처</label> <input
										name="phone" value="" type="text" id="label-l-num"
										fieldname="연락처" restrictutf8bytes="20"
										class="inp1 hd-lab __required __noSpace" style="width: 366px;">
									</li>
									<li><label for="label-l-num" class="tit">이메일</label> <input
										name="email" value="" type="text" id="label-l-email"
										fieldname="이메일" restrictutf8bytes="60"
										checkfunctionname="checkEmail"
										class="inp1 hd-lab __required __noSpace" style="width: 366px;">
									</li>
								</ul>
							</div>
						</div>
						<div class="frmBtn">
							<input type="submit" value="제휴문의 보내기">
						</div>
					</form>
				</div>

				<div class="genderSec layer"
					style="display: block; visibility: hidden;">
					<a href="javascript:;" class="close"><em class="ico-btn-1">닫기</em></a>
					<p>성별을 선택하시면, 성별에 맞는 상품을 추천해 드립니다.</p>
					<em class="cmt">If you select your gender, we recommend the
						product for your gender.</em>
					<ul>
						<li class="b1"><a href="javascript:;"
							onclick="genderSelect('F', 'main'); return false;">여성</a></li>
						<li class="b2"><a href="javascript:;"
							onclick="genderSelect('M', 'main'); return false;">남성</a></li>
					</ul>
				</div>

				<div class="shopDetailSec layer">
					<div class="head">
						<h3></h3>
						<a href="javascript:;"
							onclick="layerOff('shopDetailSec'); return false;"
							class="ico-btn-1">닫기</a>
					</div>

					<div class="sec">
						<div class="img">
							<div class="shopInfo">
								<strong></strong><i></i><span></span>
							</div>
							<div class="shopBtn">
								<ul>
									<li class="don"><a href="javascript:;" class="b8">쇼핑몰바로가기</a><em></em></li>
									<li><a href="javascript:;" class="b6">BEST 상품</a><em></em></li>
									<li><a href="javascript:;" class="b1">비슷한쇼핑몰</a><em></em></li>
									<li class="rl"><a href="javascript:;" class="b7">친구등록</a><em></em></li>
									<li class="cleft bl"><a href="javascript:;"
										class="b3 detail">페이스북 공유</a><em></em></li>
									<li class="bl"><a href="javascript:;" class="b4 detail">트위터
											공유</a><em></em></li>
								</ul>
							</div>
							<p></p>
						</div>
						<ul class="cntSec">
							<li>금주 검색 : <strong class="pt_16"></strong></li>
							<!-- <li>누적 클릭 : <strong></strong></li> -->
						</ul>
						<div class="conSec">
							<h4>
								<strong>웹&amp;모바일 주간 검색통계</strong><span>주간 검색 통계는 매주 월요일에
									갱신 됩니다.</span>
							</h4>

							<div class="graph">
								<div id="shopDetailChart1" class="line"></div>
								<div id="shopDetailChart2" class="circle"></div>
							</div>
						</div>

						<div class="conSec interviewConSec disnone">
							<h4>
								<strong>CEO 인터뷰</strong>
							</h4>

							<div class="interviewSec"></div>
						</div>

						<div class="addressSec">
							<h4>
								<strong></strong>
							</h4>
							<dl>
								<dt></dt>
								<dd></dd>
								<dd class="pdb0"></dd>
							</dl>
							<div id="addressText" class="disnone">null</div>
							<div id="map-canvas" class="map"></div>
						</div>
					</div>
				</div>

				<div class="layerDim"></div>

			</div>

			<div class="layerDimSec"></div>

			<div class="loadingIconSec loadingIconSec_1" timer=""
				style="display: none;"></div>

			<div class="alertMsg">
				<p>
					<em class="ico-btn-1"></em><i></i>
				</p>
			</div>
		</div>
	</div>
	<div class="FooterSec">
		<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
	</div>
</body>
</html>