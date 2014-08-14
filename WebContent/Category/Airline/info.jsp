<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="jquery-2.1.1.js"></script>
<script type="text/javascript" src="ajaxJson.js"></script>
<script type="text/javascript">
var xhr = new xhRequest();
//load Event
$(function(e){ 
	xhr.SetXHRequest();
	$('#btnSearch').click(function(e){
		xhr.openGet("Ainfo.jsp?schDeptCityCode="+ $("#schDeptCityCode").val()+"&schArrvCityCode=" +$("#schArrvCityCode").val() , WeatherInfo);
		document.frm.submit();
	});
});
function WeatherInfo(){
	 if(xhr.xhReq.readyState == 4){
		   // xhReq.status == 200 : 성공
		   if(xhr.xhReq.status == 200){
		    // alert(xhr.xhReq.getResponseHeader("Content-Type"));
		     var xml = xhr.xhReq.responseXML; // xml객체 리턴
		     var items = $(xml).find("item");
		//     alert('dd');
		 $("#Temp").append($(items).find('airport').text());		
}}}

</script>

<style>

</style>
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/abel:n4:default.js" type="text/javascript"></script>
</head>
<body>

<table cellspacing="0" cellpadding="0" border="1">
 <tr>
    <td colspan="13" width="1081">운항스케줄리스트</td>
  </tr>
  <tr>
    <td width="124">항공사</td>
    <td width="92">홈페이지</td>
    <td width="72">　</td>
    <td width="72">편명</td>
    <td width="145">월</td>
    <td width="72">화</td>
    <td width="72">수</td>
    <td width="72">목</td>
    <td width="72">금</td>
    <td width="72">토</td>
    <td width="72">일</td>
    <td width="72">도착지</td>
    <td width="72">출발시간</td>
  </tr>
  <tr>
    <td width="124"><div>&lt;fileName&gt;upload_62a606d3_13fd3060926__7e6e_00000230.bmp&lt;/fileName&gt;</div></td>
    <td width="92"><div>&lt;homepage&gt;airasia.com/kr/ko/home.page&lt;/homepage&gt;</div></td>
    <td width="72"><div>&lt;airlineKorean&gt;에어아시아엑스&lt;/airlineKorean&gt;</div></td>
    <td width="72"><div>&lt;flightNum&gt;D7518&lt;/flightNum&gt;</div></td>
    <td width="145"><div>&lt;mon&gt;Y&lt;/mon&gt;</div></td>
    <td width="72"><div>&lt;tue&gt;N&lt;/tue&gt;</div></td>
    <td width="72"><div>&lt;wed&gt;N&lt;/wed&gt;</div></td>
    <td width="72"><div>&lt;thu&gt;N&lt;/thu&gt;</div></td>
    <td width="72"><div>&lt;fri&gt;Y&lt;/fri&gt;</div></td>
    <td width="72"><div>&lt;sat&gt;N&lt;/sat&gt;</div></td>
    <td width="72"><div>&lt;sun&gt;N&lt;/sun&gt;</div></td>
    <td width="72"><div>&lt;city&gt;쿠알라룸푸르&lt;/city&gt;</div></td>
    <td width="72"><div>&lt;time&gt;08:30&lt;/time&gt;</div></td>
  </tr>
  <tr>
    <td width="124" align="left" valign="top"><img border="0" width="18" height="18" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image003.gif" alt="중국동방항공" /><img border="0" width="14" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image004.gif" alt="중국국제항공" />
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td width="124">　</td>
        </tr>
      </table></td>
    <td width="92">　</td>
    <td width="72"><a href="http://www.easternair.co.kr/" target="_blank">중국동방항공</a></td>
    <td width="72" align="left" valign="top"><img width="16" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image006.gif" alt="비행기운항" />
      <table cellpadding="0" cellspacing="0">
        <tr>
          <td width="72">MU2076</td>
        </tr>
      </table></td>
    <td width="145">　</td>
    <td colspan="2" rowspan="2" width="144"><img width="14" height="16" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image009.gif" alt="비행기운항" /><img width="14" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image010.gif" alt="비행기운항" /><img width="16" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image006_0000.gif" alt="비행기운항" /></td>
    <td rowspan="2" width="72"><img width="14" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image010_0000.gif" alt="비행기운항" /></td>
    <td width="72">　</td>
    <td colspan="2" rowspan="2" width="144"><img width="14" height="16" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image009_0000.gif" alt="비행기운항" /><img width="14" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image010_0001.gif" alt="비행기운항" /><img width="16" height="17" src="../AppData/Roaming/Adobe/Dreamweaver CS5.5/ko_KR/OfficeImageTemp/clip_image006_0001.gif" alt="비행기운항" /></td>
    <td width="72">항저우</td>
    <td align="right" width="72">13:00</td>
  </tr>
  <tr>
    <td width="124">　</td>
    <td width="92">　</td>
    <td width="72"><a href="http://www.airchina.kr/" target="_blank">중국국제항공</a></td>
    <td width="72">CA148</td>
    <td width="145">　</td>
    <td width="72">　</td>
    <td width="72">항저우</td>
    <td align="right" width="72">16:00</td>
  </tr>
</table>

</body>
</html>