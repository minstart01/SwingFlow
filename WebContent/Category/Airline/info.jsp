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
for(var i=0;i<list.length;i++){
    $('#tb01').append('<tr><td><img src='+$(list[i]).find('fileName').text()+" alt='' /></td><td><a href='http://"+$(list[i]).find('homepage').text()+"' >"
    		+$(list[i]).find('airlineKorean').text()+"</a></td><td>"+$(list[i]).find('flightNum').text()+"</td><td>"+$(list[i]).find('mon').text()+"</td><td>"
    		+$(list[i]).find('tue').text()+"</td><td>"+$(list[i]).find('wed').text()+"</td><td>"+$(list[i]).find('thu').text()+"</td><td>"+$(list[i]).find('fri').text()+"</td><td>"
    		+$(list[i]).find('sat').text()+"</td><td>"+$(list[i]).find('sun').text()+"</td><td>"+$(list[i]).find('city').text()+"</td><td>"+$(list[i]).find('time').text()+'</td><td><input type="radio" name="fname" id="fname">선택</td></tr>');

}
// 			$("#a0").attr("src",$(list[0]).find('fileName').text());			
// 			$("#a1").attr('href',$(list[0]).find('homepage').text());   
// 			$("#a1").append($(list[0]).find('airlineKorean').text()); 
// 			$("#a2").append($(list[0]).find('flightNum').text());
// 			$("#a3").append($(list[0]).find('mon').text());
// 			$("#a4").append($(list[0]).find('tue').text());
// 			$("#a5").append($(list[0]).find('wed').text());
// 			$("#a6").append($(list[0]).find('thu').text());
// 			$("#a7").append($(list[0]).find('fri').text());
// 			$("#a8").append($(list[0]).find('sat').text());
// 			$("#a9").append($(list[0]).find('sun').text());
// 			$("#a10").append($(list[0]).find('city').text());
// 			$("#a11").append($(list[0]).find('time').text());

			
}}}
$(function(){
	$('#fname').click(function(){
		var mailTp 		= $(':radio[name="fname"]:checked').val();
		$('input:radio[name=fname]:input[value='+mailTp+']').attr("checked", true);
		alert($('input:radio[name=fname]:input[value='+mailTp+']').attr("checked", true));
	});	
});



</script>

<style>

</style>
</head>
<body><form action="">
<input type="text" id="schDeptCityCode"><input type="text" id="schArrvCityCode"><input type="button" id="btnSearch" value="조회">
<table cellspacing="0" cellpadding="0" border="1" id="ta01">

  <tr>
    <td width="124"></td>
    <td width="72">항공사</td>
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
    <td><input type="radio" name="fname">선택</td>
  </tr>
<tbody id="tb01">

</tbody>
</table>
</form>
</body>
</html>