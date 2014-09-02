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

<script src="/SwingFlow/Category/Shopping/JS/FNames.js"></script>

<script type="text/javascript">
	function divGubunInput() {
		if (divGubunInputChk()) {

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
					request : 'divGubunInputDB',
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
	function divGubunInputChk() {
		return true;
	}
</script>
</head>

<body>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<jsp:include page="/Category/Shopping/Sidebar.jsp"></jsp:include>
	<div class="DivGubunInput_Form">
		<div align="center" style="margin-bottom: 30px; width: 100%;">
			<div style="float: left; margin-left: 5px;">
				<h1>대분류 등록</h1>
			</div>
			<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		</div>
		<table class="DivGubunInput_Table" cellpadding="6">
			<tr>
				<td class="first_td"><label>대분류 코드</label></td>
				<td><input type="text" class="text1" id="divSeq"
					value=${maxDivSeqNumber } name="divSeq" readonly="readonly" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="divName">대분류명</label></td>
				<td><input type="text" class="text1" id="divName"
					name="divName" onkeyup="regChk();" /></td>
			</tr>
		</table>
		<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		<div class="bt_box" align="center">
			<input type="button" class="submit" value="등록하기"
				onclick="javascript:divGubunInput();" />
		</div>
	</div>

	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>