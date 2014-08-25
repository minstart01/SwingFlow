<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>	
<%@ page import="Common.Spring" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Shopping/skin.css">
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Shopping/base.css">
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css">
<title>Insert title here</title>
<%
// 	Spring.setLocale("english");
	Spring.setNameSpace("Shopping.Sidebar.menu");
%>
</head>
<body>
	<div id="sidebarSec" class="column-left">
		<ul class="menu">
			<h2><%=Spring.getMessage("001") %></h2>
			<li num="7" class="g7"><a
				href="/SwingFlow/Category/Shopping/Discount/Discount.jsp#"
				cate="700" class="depth1"><%=Spring.getMessage("002") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Discount/Discount.jsp#"
								cate="700">전체할인쇼핑</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Discount/Women.jsp#"
								cate="701">여성할인쇼핑</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Discount/Men.jsp#"
								cate="702">남성할인쇼핑</a>
						</dd>
					</dl>
				</div></li>
			<li num="1" class="g1"><a href="/SwingFlow/Category/Shopping/Product/Women.jsp#" cate="1000000"
				class="depth1"><%=Spring.getMessage("003") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp#" cate="1000000">전체상품</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1010000" cate="1010000">티셔츠</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1020000" cate="1020000">반팔티</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1030000" cate="1030000">원피스</a>
						</dd>
						<dd>
							<a href="//SwingFlow/Category/Shopping/Product/Women.jsp?cs=1040000" cate="1040000">바지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1050000" cate="1050000">반바지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1060000" cate="1060000">블라우스/셔츠</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1070000" cate="1070000">테마/시즌의류</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1080000" cate="1080000">니트/스웨터</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1090000" cate="1090000">가디건</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1100000" cate="1100000">레깅스</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1110000" cate="1110000">청바지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1120000" cate="1120000">스커트</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1130000" cate="1130000">자켓</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1140000" cate="1140000">점퍼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1150000" cate="1150000">코트</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1160000" cate="1160000">조끼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1170000" cate="1170000">트레이닝복</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1180000" cate="1180000">속옷/언더웨어</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1190000" cate="1190000">신발/구두/운동화</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1200000" cate="1200000">가방</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1210000" cate="1210000">지갑/잡화</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1220000" cate="1220000">액세서리/주얼리/시계</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Women.jsp?cs=1230000" cate="1230000">화장품</a>
						</dd>
					</dl>
				</div></li>
			<li num="2" class="g2"><a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp#" cate="200"
				class="depth1"><%=Spring.getMessage("004") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp#" cate="200">전체쇼핑몰</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=201" cate="201">러블리캐주얼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=202" cate="202">섹시캐주얼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=203" cate="203">럭셔리·명품스타일</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=204" cate="204">얼반·모던·심플</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=205" cate="205">유니크·빈티지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=206" cate="206">10대 의류</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=207" cate="207">30대 미시</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=208" cate="208">빅사이즈·임부복</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=209" cate="209">구두·수제화</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=210" cate="210">가방전문샵</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=211" cate="211">쥬얼리·엑세서리·가발</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=212" cate="212">속옷(언더웨어)</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=213" cate="213">커플룩·비치룩</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Women.jsp?cs=215" cate="215">연예인·핫이슈몰</a>
						</dd>
					</dl>
				</div></li>
			<li num="3" class="g3"><a href="/SwingFlow/Category/Shopping/Product/Men.jsp#" cate="2000000"
				class="depth1"><%=Spring.getMessage("005") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp#" cate="2000000">전체상품</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2100000" cate="2100000">자켓</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2110000" cate="2110000">점퍼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2080000" cate="2080000">가디건</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2120000" cate="2120000">코트</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2130000" cate="2130000">조끼/베스트</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2090000" cate="2090000">니트/스웨터</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2010000" cate="2010000">티셔츠</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2030000" cate="2030000">셔츠/남방</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2060000" cate="2060000">청바지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2040000" cate="2040000">바지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2150000" cate="2150000">정장/슈트</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2140000" cate="2140000">트레이닝복</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2160000" cate="2160000">신발</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2170000" cate="2170000">가방</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2180000" cate="2180000">모자</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2190000" cate="2190000">지갑/잡화</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Product/Men.jsp?cs=2070000" cate="2070000">비치웨어</a>
						</dd>
					</dl>
				</div></li>
			<li num="4" class="g4"><a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp#" cate="300"
				class="depth1"><%=Spring.getMessage("006") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp#" cate="300">전체쇼핑몰</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=301" cate="301">트랜드·캐주얼</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=302" cate="302">유니크</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=303" cate="303">댄디·옴므·수트·클래식</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=304" cate="304">레플리카</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=305" cate="305">빈티지</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=306" cate="306">힙합·도메스틱·스트릿</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=307" cate="307">구두·수제화·가방</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=308" cate="308">시계·액세서리</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=309" cate="309">키작남전문</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=310" cate="310">빅사이즈</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Men.jsp?cs=311" cate="311">연예인·핫이슈몰</a>
						</dd>
					</dl>
				</div></li>
			<li num="6" class="g6"><a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp#" cate="400"
				class="depth1"><%=Spring.getMessage("007") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp#" cate="400">전체쇼핑몰</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=401" cate="401">남성브랜드</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=402" cate="402">여성브랜드</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=403" cate="403">스포츠브랜드·멀티샵</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=404" cate="404">아웃도어</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=405" cate="405">코스메틱</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=406" cate="406">시계·잡화·엑세서리</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=407" cate="407">명품</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=501" cate="501">오픈마켓</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=502" cate="502">대형몰</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Ranking/Brand.jsp?cs=503" cate="503">소셜커머스</a>
						</dd>
					</dl>
				</div></li>
		</ul>
		<ul class="info">
			<h2><%=Spring.getMessage("008") %></h2>
			<li><a href="/SwingFlow/Category/Shopping/Board/Board.jsp#" title="공지사항"><%=Spring.getMessage("009") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Board/Board.jsp#" cate="400">공지사항 등록</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Board/Board.jsp#" cate="401">공지사항 조회</a>
						</dd>
					</dl>
				</div></li>
			<li><a href="/SwingFlow/Category/Shopping/Board/Event.jsp#" title="이벤트"><%=Spring.getMessage("010") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Board/Event.jsp#" cate="400">이벤트 등록</a>
						</dd>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Board/Event.jsp#" cate="401">이벤트 조회</a>
						</dd>
					</dl>
				</div></li>
		</ul>
		<ul class="manage">
			<h2><%=Spring.getMessage("011") %></h2>
			<li class="li"><a href="#" title="쇼핑몰관리"><%=Spring.getMessage("012") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="/SwingFlow/Category/Shopping/Shop/ShopJoin.jsp#" cate="400">쇼핑몰 등록</a>
						</dd>
						<dd>
							<a href="" cate="401">쇼핑몰 조회</a>
						</dd>
					</dl>
				</div></li>
			<li><a href="#" title="포인트관리"><%=Spring.getMessage("013") %></a>
				<div class="sub" style="display: none;">
					<dl>
						<dd>
							<a href="" cate="400">포인트 등록</a>
						</dd>
						<dd>
							<a href="" cate="401">포인트 조회</a>
						</dd>
					</dl>
				</div></li>
		</ul>
	</div>
</body>
</html>
