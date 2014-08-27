<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
.title_box{
	border:1px solid black;
	width:400px;
	font-size:23px;
	margin:5px 0 15px 5px;
}
.mbox{
	border:1px solid black;
	width:450px;
	margin-bottom:15px;
	height:30px;	
}
.cate{
	border:1px solid black;
	float:left;
	margin-left:5px;
	
}	
.search_txt{
	float:left;
	border:1px solid black;
	margin-left:5px;
}
.search_bt{
	float:left;
	border:1px solid black;	
	margin-left:5px;
}
#searchbt{
	width:100px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	border:none;
	height:25px;
}
.result_txt{
	border:1px solid black;
	float:left;	
	margin-left:5px;
	margin-bottom:10px;
}
.result_box{
	float:left;
	border:1px solid black;
	width:430px;
	height:220px;	
	overflow:auto;
	margin-left:5px;
}
</style>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script src="/SwingFlow/Script/Movie/ajaxJson.js"></script>
<script type="text/javascript">
var xhr = new xhRequest();
// load Event
 $(function(e){
   // 초기
   xhr.SetXHRequest();
  
   // Event
   // event
   $("#searchbt").click(function(e){
	 var mName = $("#msearch").val();
		alert("aa");
	 xhr.openGet("mNameSearch.jsp?mName=" + mName, SearchmName);
     
    });
  });
  
  function SearchmName(){
	    if(xhr.xhReq.readyState == 4){
	      // xhReq.status == 200 : 성공
	      if(xhr.xhReq.status == 200){
			  
	    	  // alert(xhr.xhReq.getResponseHeader("Content-Type"));
	          var xml = xhr.xhReq.responseXML; // xml객체 리턴
	          var items = $(xml).find("item");
	            $("#b").empty();
	            for(var i=0; i<items.length; i++){
	            	$(".result_box").append($(items[i]).find("title").find("content").text());
				        
	         }
	        }
	       }
  }
		   

</script>


</head>

<body>
<div style="border:1px solid black; width:450px; height:500px;">
<div class="title_box">영화검색</div>
<div class="mbox">
<div class="cate">
	<select>
    	<option>영화명</option>
        <option>감독명</option>
        <option>배우명</option>
    </select>
</div>
<div class="search_txt"><input type="text" id="msearch" size="35" /></div>
<div class="search_bt"><input type="button" value="검색" id="searchbt" /></div>
</div>
<div class="result_txt">검색결과</div>
<div class="result_box">

</div>
</div>


</body>
</html>
