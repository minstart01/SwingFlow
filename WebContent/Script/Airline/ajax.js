// ajax.js
/* 1. XMLHTTPRequest객체 리턴 */
function ReturnXHRequest(){
 var xhReq = null;
   // XMLHttpRequest 객체<서버에 요청/응답이 가능한 객체> 할당
   if(window.XMLHttpRequest){
     xhReq = new XMLHttpRequest();
    } else {
      // ie7 미만을 고려한 코딩
      xhReq = new ActiveXObject("Microsoft.XMLHTTP");
     }
  return xhReq;
 }
 
/* 2. Get방식으로 요청 */
function openGet(xhReq, pUrl, pCallback){
  // XMLHttpRequest객체로 요청
  // xhReq.open(method,action, 동기비동기);
   xhReq.open("Get", pUrl, true);
   // 콜백함수 : 응답(response)시 응답결과를 처리해주 함수
   xhReq.onreadystatechange = pCallback;
   // 요청시 매개변수
   xhReq.send(null);
 }  

/* 3. XMLHttpRequest객체로 받은 응답을 Text로 리턴*/
function ReturnCallBack(xhReq){
	var responseText=null;
		//참고. 596page
		//req.readyState : 모든 데이터를 받음 
		if(xhReq.readyState == 4){
			// xhReq.status ==200 : 성공
			if(xhReq.status == 200){
				// xhReq.responseText : 응답결과 참조변수
				
				responseText = xhReq.responseText;
				}
			}
			return responseText;
	}