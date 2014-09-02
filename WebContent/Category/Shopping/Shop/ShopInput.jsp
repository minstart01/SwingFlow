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
	function ShopInput() {
		if (ShopInputChk()) {
			
			var dataJSON = FNames.getForms('Shopping','Shop')
			$.ajax({
				url : '/SwingFlow/Category/Shopping/Shop/requestShopAJAX.ajax',
				type : 'GET',
				contentType: "application/json; charset=utf-8",
				mimeType: 'application/json',
			    dataType: "json",
				data : {
					request : 'shopInputDB',
					shop : JSON && JSON.stringify(dataJSON)
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
				}
			});
		}
	}
	function ShopInputChk() {
		return true;
	}
</script>
</head>

<body>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<jsp:include page="/Category/Shopping/Sidebar.jsp"></jsp:include>
	<div class="ShopInput_Form">
		<div align="center" style="margin-bottom: 30px; width: 100%;">
			<div style="float: left; margin-left: 5px;">
				<h1>쇼핑몰 등록</h1>
			</div>
			<hr style="width: 90%; border: 1px solid #d9d9d9;" />
		</div>
		<table class="ShopInput_Table" cellpadding="6">
			<tr>
				<td class="first_td"><label>쇼핑몰코드</label></td>
				<td><input type="text" class="text1" id="shopSeq"
					value=${maxShopSeqNumber }
						name="shopSeq"
					readonly="readonly" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopName">쇼핑몰이름</label></td>
				<td><input type="text" class="text1" id="shopName"
					name="shopName" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="adType">adType</label></td>
				<td><input type="text" class="text1" id="adType" name="adType"
					onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="adStateCode">adStateCode</label></td>
				<td><input type="text" class="text1" id="adStateCode"
					name="adStateCode" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopDomain">쇼핑몰 도메인명</label></td>
				<td><input type="text" class="text1" id="shopDomain"
					name="shopDomain" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopMobDomain">쇼핑몰 모바일
						도메인명</label></td>
				<td><input type="text" class="text1" id="shopMobDomain"
					name="shopMobDomain" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="webUrl">웹경로</label></td>
				<td><input type="text" class="text1" id="webUrl" name="webUrl"
					onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="mobUrl">모바일경로</label></td>
				<td><input type="text" class="text1" id="mobUrl" name="mobUrl"
					onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopCateNames">쇼핑카테고리들</label></td>
				<td><input type="text" class="text1" id="shopCateNames"
					name="shopCateNames" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="prodCateNames">상품카테고리들</label></td>
				<td><input type="text" class="text1" id="prodCateNames"
					name="prodCateNames" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="logoPath1">로고경로1</label></td>
				<td><input type="text" class="text1" id="logoPath1"
					name="logoPath1" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="logoPath2">로고경로2</label></td>
				<td><input type="text" class="text1" id="logoPath2"
					name="logoPath2" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="adLogoPath1">추가로고경로1</label></td>
				<td><input type="text" class="text1" id="adLogoPath1"
					name="adLogoPath1" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="adLogoPath2">추가로고경로2</label></td>
				<td><input type="text" class="text1" id="adLogoPath2"
					name="adLogoPath2" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="mobDetailPath">모바일 상세
						경로</label></td>
				<td><input type="text" class="text1" id="mobDetailPath"
					name="mobDetailPath" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="shopDescription">쇼핑몰
						설명</label></td>
				<td><input type="text" class="text1" id="shopDescription"
					name="shopDescription" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="adShopDescription">쇼핑몰
						추가 설명</label></td>
				<td><input type="text" class="text1" id="adShopDescription"
					name="adShopDescription" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="webNCount">웹 방문자수</label></td>
				<td><input type="text" class="text1" id="webNCount"
					name="webNCount" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="mobNCount">모바일 방문자수</label></td>
				<td><input type="text" class="text1" id="mobNCount"
					name="mobNCount" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="ranking">등수</label></td>
				<td><input type="text" class="text1" id="ranking"
					name="ranking" onkeyup="regChk();" /></td>
			</tr>
			<tr>
				<td class="first_td"><label for="prodCount">상품수</label></td>
				<td><input type="text" class="text1" id="prodCount"
					name="prodCount" onkeyup="regChk();" /></td>
			</tr>
		</table>
<!-- 		<div align="center" style="margin-top: 30px; width: 90%;"> -->
			<hr style="width: 90%; border: 1px solid #d9d9d9;" />
<!-- 		</div> -->
		<div class="bt_box" align="center">
			<input type="button" class="submit" value="등록하기"
				onclick="javascript:ShopInput();" />
		</div>
	</div>

	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>