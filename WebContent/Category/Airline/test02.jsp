


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공항 선택</title>
<script type="text/javascript" src="js/jquery-2.1.1.js"></script>
<script type="text/javascript" src="js/ajax.js"></script>
<script type="text/javascript">
 $(function(){
  $.ajax({ url:'ReturnCode.do?id=nId&name=nName&tablename=Nation'
      , type : 'get'
      , dataType : 'xml'
      , success : function(xml){
        BindSelect(xml, "#nation", "국가");
       }
      });
  // 이벤트
  $('#nation').change(BindAirport);
 });

 // 공항 Bind함수
 function BindAirport(){
  $.ajax({ url:'ReturnCode.do?id=aId&name=aName&tablename=Airport  where nId=' + $("#nation").val()
      , type : 'get'
      , dataType : 'xml'
      , success :  function(xml){
       BindSelect(xml, "#airport", "공항");
      }
      });
 }
 
 // select bind함수
 function BindSelect(xml, element, blank){
  $(element).children().remove();
  $(element).append("<option value='0'>"+ blank +"선택</option>");
    var codes = $(xml).find("code");
    for(var i=0; i<codes.length; i++){
     $(element).append("<option value='"+ $(codes[i]).attr("id") +"'>"+$(codes[i]).text()+"</option>");
    }
  }
</script>
</head>
<body>
 <select name="nation" id="nation">
 </select>
 <select name="airport" id="airport">
  <option value="0">공항선택</option>
 </select>
</body>
</html>


