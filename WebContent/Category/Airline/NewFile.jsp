<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>무제 문서</title>

<style>
.main_content{
	border-radius:5px;
	border:1px solid black;	
	width:321px;
	height:291px;
	font-size:12px;
	padding: 20px 0 0 20px;
}
.top_btn{
	border-bottom:1px solid #CCC;
	height:25px;	
	width:288px;
}	
.btn01, .btn02{
	border:1px solid #CCC;
	float:left;
	width:35px;
	padding:5px 6px 5px 6px;
	font-weight: bold;
	font-family: "돋움";	
	margin-right:5px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	cursor:pointer;
}

.btn01{
	border-bottom-color:white;	
}
.btn02{
	background-color:#CCC;
}



/* 도시 선택 */
.search_btn01{
	margin-top:13px;
	height: 37px;
}
.search_text01{
	border: 1px solid #999999;
	margin-top:0px;
	padding:0px;
	height:28px;	
	vertical-align: top;
	width:260px;
	color:#201CB4;
	font-weight:bold;
}
.search_btn02{
	height: 37px;
}
.search_text02{
	border: 1px solid #999999;
	margin-top:0px;
	padding:0px;
	height:28px;	
	vertical-align: top;
	width:260px;
	color:#201CB4;
	font-weight:bold;
}


/* 달력 */
.cal_btn01{
	margin: 0 5px 5px 0;
	width: 142px;
	float: left;

	
}
.cal_text01{
	width: 102px;
	margin-left: -4px;
	height: 28px;
	padding: 0 0 0 9px;
	line-height: 28px;
	border: 1px solid #999;
	color: #333;
	vertical-align: top;
}
.cal_btn02{
	margin: 0 5px 5px 0;
	width: 142px;
	float: left;

	
}
.cal_text02{
	width: 102px;
	margin-left: -4px;
	height: 28px;
	padding: 0 0 0 9px;
	line-height: 28px;
	border: 1px solid #999;
	color: #333;
	vertical-align: top;
}



/* 셀렉트 박스 */
.selectbox{
	float:left;	
	margin-right:10px;
}
.select01{
	border: 1px solid #999;
	width: 68px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select02{
	border: 1px solid #999;
	width: 71px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select03{
	border: 1px solid #999;
	width: 71px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select_text{
	width:68px;
	float:left;	
	margin-right:10px;
}
.select_text1{
	width:71px;
	float:left;	
	margin-right:10px;
}
.sit_class{
	padding: 6px;
	line-height: 30px;
	height: 30px;
	width: 230px;
	margin-top: 3px;	
}

/* 버튼 */
.btn_box{
	float: right;
	margin-right: 32px;
	margin-top: 10px;	
}
#sel_btn{
	height: 25px;
	line-height: 25px;
	font-weight: bold;	
	width: 125px;
	background-color: red;
	border: none;
	color: #fff;
}
</style>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>
	function select(on,off){
		$(".btn0" + on).css("border-bottom-color","#FFF");
		$(".btn0" + on).css("background-color","#FFF");
		$(".btn0" + off).css("border-bottom-color","#CCC");
		$(".btn0" + off).css("background-color","#CCC");
		
		if(on==2){
			$(".cal_btn02").hide();	
		}else if(on==1){
			$(".cal_btn02").show();	
		}
	}
</script>
</head>
<body>

<div class="main_content">
	<div class="top_btn">
	<div class="btn01 btn" onclick="select(1,2);">
    왕복
    </div>
    <div class="btn02 btn" onclick="select(2,1);">
    편도
    </div>
    </div>
    
    <div class="search_btn01">
    <img src="btn.gif" />
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text01" />
    </span>
    
    </div>
    
    <div class="search_btn02">
    <img src="btn.gif" />
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text02" />
    </span>
    
    </div>
    
    
    
    <div style="width:295px; height:38px;">
    <div class="cal_btn01">
    <img src="btn_calendar3.gif" />
    <span>
    	<input type="text" class="cal_text01" />
    </span>
    
    </div>
    
    <div class="cal_btn02">
    <img src="btn_calendar3.gif" />
    <span>
    	<input type="text" class="cal_text02" />
    </span>
    
    </div>
    </div>
    
    <div>
    	<div class="selectbox">
        	<select class="select01">
            	<option>성인1</option>
                <option>성인2</option>
                <option>성인3</option>
                <option>성인4</option>
                <option>성인5</option>
                <option>성인6</option>
                <option>성인7</option>
                <option>성인8</option>
                <option>성인9</option>
            </select>
        </div>
        <div class="selectbox">
        	<select class="select02">
            	<option>소아0</option>
            	<option>소아1</option>
                <option>소아2</option>
                <option>소아3</option>
                <option>소아4</option>
                <option>소아5</option>
                <option>소아6</option>
                <option>소아7</option>
                <option>소아8</option>
                <option>소아9</option>
            </select>
        </div>
        <div class="selectbox">
        	<select class="select03">
	            <option>유아0</option>
            	<option>유아1</option>
                <option>유아2</option>
                <option>유아3</option>
                <option>유아4</option>
                <option>유아5</option>
                <option>유아6</option>
                <option>유아7</option>
                <option>유아8</option>
                <option>유아9</option>
            </select>
        </div>

        <div style="float:left; margin-top:3px; margin-bottom:5px;">
    	<div class="select_text">
        (12세~)
        </div>
        <div class="select_text1">
        (2세~11세)
        </div>
        <div class="select_text1">
        (0~2세)
        </div>
        </div>
        
    	<div>
			<select class="sit_class">
            	<option>트래블(일반석) 클래스</option>
                <option>비지니스 클래스</option>
                <option>퍼스트 클래스</option>
            </select>
        </div>
    	
        <div class="btn_box">
        	<input type="button" value="항공편 조회하기" id="sel_btn"/>
        </div>
    </div>
    
</div>	

</body>
</html>