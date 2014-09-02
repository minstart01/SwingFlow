<%@ page language="java" isELIgnored="false"
	contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css" />
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Join.css" />
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Shopping/Shop.css" />

<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script src="/SwingFlow/Script/Shopping/jquery.alerts.js" type="text/javascript"></script>
<link href="/SwingFlow/Css/Shopping/jquery.alerts.css" rel="stylesheet" type="text/css" media="screen">


<!-- 	<!-- The jQuery library is a prerequisite for all jqSuite products --> -->
<!--     <script type="text/ecmascript" src="../../../js/jquery.min.js"></script>  -->
    <!-- This is the Javascript file of jqGrid -->   
    <script type="text/ecmascript" src="/SwingFlow/Category/Shopping/JS/jquery.jqGrid.min.js"></script>
    <!-- This is the localization file of the grid controlling messages, labels, etc.
    <!-- We support more than 40 localizations -->
    <script type="text/ecmascript" src="/SwingFlow/Category/Shopping/JS/i18n/grid.locale-kr.js"></script>
    <!-- A link to a jQuery UI ThemeRoller theme, more than 22 built-in and many more custom -->
    <link rel="stylesheet" type="text/css" media="screen" href="/SwingFlow/Css/Shopping/jquery-ui.min.css" />
    <!-- The link to the CSS that the grid needs -->
    <link rel="stylesheet" type="text/css" media="screen" href="/SwingFlow/Css/Shopping/ui.jqgrid.css" />
    <meta charset="utf-8" />
    <title>jqGrid Loading Data - Million Rows from a REST service</title>

<script src="/SwingFlow/Category/Shopping/JS/FNames.js"></script>
<script type="text/javascript">
	$.jgrid.no_legacy_api = true;
	$.jgrid.useJSON = true;
</script>
<script type="text/javascript">
	function divGubunSearch() {
		if (divGubunSearchChk()) {

			var dataJSON = { 
					"divSeq" : $("#divSeq").val(),
					"divName" : $("#divName").val()
			};
			$.ajax({
				url : '/SwingFlow/Category/Shopping/Shop/requestShopAJAX.ajax',
				type : 'GET',
				contentType: "application/json; charset=utf-8",
				mimeType: 'application/json',
			    dataType: "json",
				data : {
					request : 'divGubunSearchDB',
					divGubun : JSON && JSON.stringify(dataJSON)
				},
				success : function(data) {
					var responseTxt = data;
					if (null != responseTxt) {
// 						var userJson = JSON && JSON.parse(responseTxt);
						if (data.result == "OK") {
							jAlert("등록 성공!!!!");
						} else {
							jAlert("등록 실패!!!!");
						}
					}
				}, failure: function(errMsg) {
				        alert(errMsg);
				}
			})
		}
	}
	function divGubunSearchChk() {
		return true;
	}
	
	
	
	$(function() {
		$("#list2").jqGrid({
			url : '/SwingFlow/Category/Shopping/Shop/requestShopAJAX.ajax',
		    dataType: "json",
		   	colNames:['대분류코드','대분류명'],
		   	colModel:[
		   		{name:'divSeq',index:'divSeq', width:100},
		   		{name:'divName',index:'divName', width:200},
		   	],
		   	rowNum:10,
		   	rowList:[10,20,30],
		   	pager: '#pager2',
		   	sortname: 'id',
		    viewrecords: true,
		    sortorder: "desc",
		    caption:"대분류 검색",
		    posData: {
		    	request : "divGubunSearchDB"
		    }
		});
		jQuery("#list2").jqGrid('navGrid','#pager2',{edit:false,add:false,del:false});
		
	})
</script>

</head>

<body>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<jsp:include page="/Category/Shopping/Sidebar.jsp"></jsp:include>
	<div class="DivGubunSearch_Form">
		<div align="center" style="margin-bottom: 30px; width: 100%;">
			<div style="float: left; margin-left: 5px;">
				<h1>대분류 검색</h1>
			</div>
			<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		</div>
		</div>
			<table id="list2"></table>
			<div id="pager2"></div>
		</div>
	</div>

	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>