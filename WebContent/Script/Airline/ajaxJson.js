// JavaScript Document
 var xhRequest = function(){ 
  // 멤버변수
  this.xhReq;
 };
 xhRequest.prototype = {
  /* 3. 포스트방식으로 요청 */
  openPost : function(pUrl, pCallback, pDatas){ 
  // XMLHttpRequest객체로 요청
  // xhReq.open(method,action, 동기비동기);
   this.xhReq.open("POST", pUrl, false);
   /* 3. xmlHttpRequest객체의 헤더 지정  */
   this.xhReq.setRequestHeader('Content-type', 'application/x-www-form-urlencoded');
   // 콜백함수 : 응답(response)시 응답결과를 처리해주 함수
   this.xhReq.onreadystatechange = pCallback;
   // 요청시 매개변수
   this.xhReq.send(pDatas);
   }
  ,
  /* 1. XMLHTTPRequest객체 리턴 */
  SetXHRequest : function(){
   this.xhReq = null;
     // XMLHttpRequest 객체<서버에 요청/응답이 가능한 객체> 할당
     if(window.XMLHttpRequest){
       this.xhReq = new XMLHttpRequest();
      } else {
        // ie7 미만을 고려한 코딩
        this.xhReq = new ActiveXObject("Microsoft.XMLHTTP");
      }
   }
   /* 2. Get방식으로 요청 */
  , openGet : function(pUrl, pCallback){
  // XMLHttpRequest객체로 요청
  // xhReq.open(method,action, 동기비동기);
   this.xhReq.open("Get", pUrl, true);
   // 콜백함수 : 응답(response)시 응답결과를 처리해주 함수
   this.xhReq.onreadystatechange = pCallback;
   // 요청시 매개변수
   this.xhReq.send(null);}
   
  }; 

