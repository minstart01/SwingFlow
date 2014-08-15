<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/SwingFlow/Script/Airline/ajaxJson.js"></script>
<script type="text/javascript">
var xhr = new xhRequest();
//load Event
$(function(e){ 
	xhr.SetXHRequest();
	$('#btnSearch').click(function(e){
		xhr.openGet("Ainfo.jsp?schDeptCityCode="+ $("#schDeptCityCode").val()+"&schArrvCityCode=" +$("#schArrvCityCode").val() , WeatherInfo);
	//	document.frm.submit();
	});
});
function WeatherInfo(){
	 if(xhr.xhReq.readyState == 4){
		   // xhReq.status == 200 : 성공
		   if(xhr.xhReq.status == 200){
		    // alert(xhr.xhReq.getResponseHeader("Content-Type"));
		     var xml = xhr.xhReq.responseXML; // xml객체 리턴
		     var list = $(xml).find("item");
		     for(var i=0;i<13;i++){
		    	$("f"+[i]).empty(); 
		     }
	//	   alert('dd');
	<%String str[] = {};%>
	
	for (var i = 0; i < list.length; i++) {
		$("#a0"+i).attr("src",$(list[i]).find('fileName').text());
		$("#a1"+i).attr('href',$(list[i]).find('homepage').text());   
		$("#a1"+i).append($(list[i]).find('airlineKorean').text()); 
		$("#a2"+i).append($(list[i]).find('flightNum').text());
		$("#a3"+i).append($(list[i]).find('mon').text());
		$("#a4"+i).append($(list[i]).find('tue').text());
		$("#a5"+i).append($(list[i]).find('wed').text());
		$("#a6"+i).append($(list[i]).find('thu').text());
		$("#a7"+i).append($(list[i]).find('fri').text());
		$("#a8"+i).append($(list[i]).find('sat').text());
		$("#a9"+i).append($(list[i]).find('sun').text());
		$("#a10"+i).append($(list[i]).find('city').text());
		$("#a11"+i).append($(list[i]).find('time').text());
		$("#ta01").append("<tr><td><img id='a0' width="18" height="18" src="" alt="" /></td><td><a href="" id="a1"></a></td><td id="a2"></td><td id="a3"></td><td id="a4"></td><td id="a5"></td><td id="a6"></td><td id="a7"></td><td id="a8"></td><td id="a9"></td><td id="a10"></td><td id="a11"></td></tr>");
	}
		 
	
			
}}}

</script>

<style>

</style>
<!--The following script tag downloads a font from the Adobe Edge Web Fonts server for use within the web page. We recommend that you do not modify it.--><script>var __adobewebfontsappname__="dreamweaver"</script><script src="http://use.edgefonts.net/abel:n4:default.js" type="text/javascript"></script>
</head>
<body>
<input type="text" id="schDeptCityCode"><input type="text" id="schArrvCityCode"><input type="button" id="btnSearch" value="조회">
<table cellspacing="0" cellpadding="0" border="1" id="ta01">

  <tr>
    <td width="124">항공사</td>
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
    <td><img id="a00" width="18" height="18" src="" alt="" /></td>
    <td><a href="" id="a10"></a></td>
    <td id="a20"></td>
    <td id="a30"></td>
    <td id="a40"></td>
    <td id="a50"></td>
    <td id="a60"></td>
    <td id="a70"></td>
    <td id="a80"></td>
    <td id="a90"></td>
    <td id="a100"></td>
    <td id="a110"></td>
  </tr>

</table>

</body>
</html>