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
<script src="/SwingFlow/Category/Shopping/JS/FNames.js"></script>

<script type="text/javascript">
	function ShopInput() {
		if (ShopJoinChk()) {

			var objJSON = {
				"msg" : MSG
			};
			$.ajax({
				url : 'requestShopAjax.jsp',
				type : 'GET',
				data : {
					request : 'ShopInputDB',
					id : id
				},
				success : function(data) {
					var responseTxt = data;
					if (null != responseTxt) {
						var userJson = JSON && JSON.parse(responseTxt);
						if (userJson.response != "notfound") {

							oMsg.style.display = "block";
							oMsg.className = "error gm";
							oMsg.innerHTML = "멋진 아이디네요!";
							$(oMsg).css("color", "BLUE");
							window.idFlag = true;
							$("#" + nextFocusId).focus();
							return true;
						} else {
							oMsg.style.display = "block";
							oMsg.className = "error";
							oMsg.innerHTML = "ID를 확인하세요 찾을수 없습니다.";
							$(oMsg).css("color", "RED");
							$("#id").focus();
							return false;
						}
						;
					}
					;
				}
			});
		}
	}
	function ShopJoinChk() {
		return true;
	}
</script>
</head>

<body>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<jsp:include page="/Category/Shopping/Sidebar.jsp"></jsp:include>
	<div class="DivGubunJoin_Form">
		<div align="center" style="margin-bottom: 30px; width: 100%;">
			<div style="float: left; margin-left: 5px;">
				<h1>대분류 등록</h1>
			</div>
			<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		</div>
		<table class="DivGubunJoin_Table" cellpadding="6">
			<tr>
				<td class="first_td"><label>대분류 코드</label></td>
				<td><input type="text" class="text1" id="shopSeq"
					value=${maxShopSeqNumber } name="shopSeq" readonly="readonly" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopName">대분류명</label></td>
				<td><input type="text" class="text1" id="shopName"
					name="shopName" onkeyup="regChk();" /></td>
			</tr>
		</table>
		<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		<div class="bt_box" align="center">
			<input type="button" class="submit" value="등록하기"
				onclick="javascript:DivGubunInput();" />
		</div>
	</div>

	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>