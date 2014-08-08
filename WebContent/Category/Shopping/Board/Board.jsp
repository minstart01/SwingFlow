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


			<div id="content">
				<div id="aboutNews">
					<div class="page-hd">
						<h2>
							<span class="tit">공지사항</span>
						</h2>
					</div>
					<!-- .page-hd -->
					<div class="page-cont">
						<div class="bbs-news">
							<div class="tab-w">
								<a class="tab-news-on"
									href="">
									<span>공지사항</span>
								</a> <a class="tab-news-off"
									href="">
									<span>이벤트</span>
								</a>
							</div>
							<!-- list -->
							<div class="table-w">
								<table border="0" class="tbl-type1">
									<caption> 뉴스</caption>
									<colgroup>
										<col width="50">
										<col width="100">
										<col width="*">
										<col width="100">
										<col width="100">
									</colgroup>
									<thead>
										<tr>
											<th scope="col"><div class="tb-center">No</div></th>
											<th scope="col"><div class="tb-center">구분</div></th>
											<th scope="col"><div class="tb-center">내용</div></th>
											<th scope="col"><div class="tb-center">등록일</div></th>
											<th scope="col"><div class="tb-center">조회수</div></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><div class="tb-center">29</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-010</a>
												</div>
											</td>
											<td><div class="tb-center">2014-07-08</div></td>
											<td><div class="tb-center">62</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">28</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-009</a>
												</div>
											</td>
											<td><div class="tb-center">2014-07-01</div></td>
											<td><div class="tb-center">73</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">27</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-008</a>
												</div>
											</td>
											<td><div class="tb-center">2014-06-12</div></td>
											<td><div class="tb-center">494</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">26</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-007</a>
												</div>
											</td>
											<td><div class="tb-center">2014-04-17</div></td>
											<td><div class="tb-center">194</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">25</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-006</a>
												</div>
											</td>
											<td><div class="tb-center">2014-04-09</div></td>
											<td><div class="tb-center">270</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">24</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-005</a>
												</div>
											</td>
											<td><div class="tb-center">2014-03-14</div></td>
											<td><div class="tb-center">398</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">23</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-004</a>
												</div>
											</td>
											<td><div class="tb-center">2014-02-28</div></td>
											<td><div class="tb-center">291</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">22</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-003</a>
												</div>
											</td>
											<td><div class="tb-center">2013-12-02</div></td>
											<td><div class="tb-center">443</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">21</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-002</a>
												</div>
											</td>
											<td><div class="tb-center">2013-07-01</div></td>
											<td><div class="tb-center">620</div></td>
										</tr>
										<tr>
											<td><div class="tb-center">20</div></td>
											<td><div class="tb-center">공지사항</div></td>
											<td>
												<div class="tb-left">
													<a
														href="">공지내용-001</a>
												</div>
											</td>
											<td><div class="tb-center">2013-06-11</div></td>
											<td><div class="tb-center">690</div></td>
										</tr>
									</tbody>
								</table>
							</div>
							<div class="paging">
								<li class="now"><a href="#none">1</a></li>
								<li><a href="?type=NOTICE&amp;page=2">2</a></li>
								<li><a href="?type=NOTICE&amp;page=3">3</a></li>
								<li class="next02"><a href="?type=NOTICE&amp;page=2"><span>다음</span></a></li>
							</div>
							<!-- //list -->
						</div>
						<!-- .bbs-news -->
					</div>
					<!-- .page-cont -->
				</div>
				<!-- #aboutNews -->
			</div>


		</div>
	</div>
	<div class="FooterSec">
		<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
	</div>
</body>
</html>