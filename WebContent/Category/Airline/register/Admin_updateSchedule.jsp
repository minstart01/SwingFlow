<%@page import="Airline.AirlineNo"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@page import="Airline.Airline"%>
<%@page import="Airline.City"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.Nation"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
AdminDAO dao = AdminDAO.getInstance();
Nation dto = new Nation();
ArrayList<Nation> dtoL  = dao.nationSel();
City city = new City();
ArrayList<City> cDtoL = dao.citySel();

Airline airline = new Airline();
ArrayList<Airline> aDtoL = dao.airlineSel();
AirlineNo airlineNo = new AirlineNo();
ArrayList<AirlineNo> anDtoL = dao.airlineNoSel();


//out.print(dtoL.size());
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script type="text/javascript">
function nextEdit() {
		document.next.submit();
	};
	$(function(e) { 
		$('#country').change(function(e) { 
		   var nCode = $('#country').val();
		  
	
		   //   alert("aa");
		   $.ajax({
		    url : 'selectnCode.jsp',
		    type : 'GET',
		    data : {		    
		     nCode : nCode,
		     },
		    success : SearchmName
		   
		  });
		 });
		});
		  
function SearchmName(data) {
		
		 $('#select8').empty();
		$('#select8').append("<option>-도시-</option>"+data); 	
		  /*  $("#nId").append("<option>" + data +"</option>"); */	   
		  }
	//도착	  //////////////////////////////////////////////////////////////////////
			$(function(e) { 
				$('#country01').change(function(e) { 
				   var nCode = $('#country01').val();
				  
			
				   //   alert("aa");
				   $.ajax({
				    url : 'selectnCode.jsp',
				    type : 'GET',
				    data : {		    
				     nCode : nCode,
				     },
				    success : SearchmName01
				  });
				 });
				});
		 function SearchmName01(data){
	 		 $('#select9').empty();
	 			$('#select9').append("<option>-도시-</option>"+data); 
		 }
//====================항공편 등록=================================================	 
		 $(function(e) { 
				$('#fn_air').change(function(e) { 
				   var aCode = $('#fn_air').val();
				  
			
				   //   alert("aa");
				   $.ajax({
				    url : 'selectAirCode.jsp',
				    type : 'GET',
				    data : {		    
				     aCode : aCode,
				     },
				    success : SearchAirName
				   
				  });
				 });
				});
	
		 function SearchAirName(data) {
				//alert('d');
			 $('#fn_no').empty();
			$('#fn_no').append("<option>-편명-</option>"+data); 	
		//	  $("#nId").append("<option>" + data +"</option>");
			  }
// 	$(function() {
// 		var city = "";
// 		var KR = [ '인천(ICN)', '김포(GMP)', '부산(PUS)', '제주(JCU)' ];
// 		var JP = [ '도쿄/나리타(NRT)', '오사카(OSA)', '하네다(HND)' ];
// 		var CH = [ '베이징(BJS)', '홍콩(HKG)' ];
// 		var EA = [ '세부(HND)', '싱가폴(OSA)' ];
// 		var US = [ '로스앤젤레스 (LAX)', '샌프란시스코 (SFO)', '뉴욕(JFK)', '시애틀 (SEA)',
// 				'시카고(ORD)' ];

// 		$('#country').change(function(e) {
// 			$('#select8').empty();
// 			if ($(this).val() == "한국") {
// 				city = "";
// 				for (var i = 0; i < KR.length; i++) {
// 					city += "<option>" + KR[i] + "</option>";
// 				}
// 				$('#select8').append(city);
// 			} else if ($(this).val() == "일본") {
// 				city = "";
// 				for (var i = 0; i < JP.length; i++) {
// 					city += "<option>" + JP[i] + "</option>";
// 				}
// 				$('#select8').append(city);
// 			} else if ($(this).val() == "중국") {
// 				city = "";
// 				for (var i = 0; i < CH.length; i++) {
// 					city += "<option>" + CH[i] + "</option>";
// 				}
// 				$('#select8').append(city);
// 			} else if ($(this).val() == "동남아") {
// 				city = "";
// 				for (var i = 0; i < EA.length; i++) {
// 					city += "<option>" + EA[i] + "</option>";
// 				}
// 				$('#select8').append(city);
// 			} else if ($(this).val() == "미국") {
// 				city = "";
// 				for (var i = 0; i < US.length; i++) {
// 					city += "<option>" + US[i] + "</option>";
// 				}
// 				$('#select8').append(city);
// 			}

// 		});
// 		$('#country01').change(function(e) {
// 			$('#select9').empty();
// 			if ($(this).val() == "한국") {
// 				city = "";
// 				for (var i = 0; i < KR.length; i++) {
// 					city += "<option>" + KR[i] + "</option>";
// 				}
// 				$('#select9').append(city);
// 			} else if ($(this).val() == "일본") {
// 				city = "";
// 				for (var i = 0; i < JP.length; i++) {
// 					city += "<option>" + JP[i] + "</option>";
// 				}
// 				$('#select9').append(city);
// 			} else if ($(this).val() == "중국") {
// 				city = "";
// 				for (var i = 0; i < CH.length; i++) {
// 					city += "<option>" + CH[i] + "</option>";
// 				}
// 				$('#select9').append(city);
// 			} else if ($(this).val() == "동남아") {
// 				city = "";
// 				for (var i = 0; i < EA.length; i++) {
// 					city += "<option>" + EA[i] + "</option>";
// 				}
// 				$('#select9').append(city);
// 			} else if ($(this).val() == "미국") {
// 				city = "";
// 				for (var i = 0; i < US.length; i++) {
// 					city += "<option>" + US[i] + "</option>";
// 				}
// 				$('#select9').append(city);
// 			}

// 		});

// 	});
</script>
<style type="text/css">
/* 버튼 */
.div_button {
	border: 1px solid black;
	margin-top: 7px;
	text-align: center;
	width: 855px;
}

#wrapper {
	width: 1200px;
}

#main_content {
	border: 1px solid black;
	width: 900px;
	float: left;
	margin-top: 25px;
	margin-left: 25px;
	font-size: 13px;
}
</style>
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>


	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<div id="wrapper">

		<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

		<div id="main_content">


			<h2>운항스케줄 등록</h2>
			<form action="Admin_insertSchedulePro.jsp" name="next">
			
				<table border="1" cellpadding="6" cellspacing="0">
					<tr>
					
						<td width="100">항공사</td>
						<td width="300"><select name="a_Name" id="fn_air">
						<option>-항공사-</option>
						<%for(int i=0;i<aDtoL.size();i++){
							airline = aDtoL.get(i);%>
<option value="<%=airline.getA_Code() %>" ><%=airline.getA_Name() %></option>
<%}%>
					
						</select></td>
						<td width="100">편명</td>
						<td width="300"><select name="an_Name" id="fn_no">
						<option>-편명-</option>

						</select></td>

					</tr>
					<tr>
						<td>총좌석</td>
						<td><input type="text" name="s_SeatTotal" /></td>
					</tr>
					<tr>
						<td>출발도시</td>
					<td><select name="select7" id="country">
					<option>-국가-</option>
						<%for(int i=0;i<dtoL.size();i++){
							dto = dtoL.get(i);%>
<option value="<%=dto.getN_Code()%>" ><%=dto.getN_Name() %></option>
<%}%>
						</select> 
						<select name="c_DepCity" id="select8">
						<option>-도시-</option>
						
						
						</select></td>
						<td>도착도시</td>
						<td><select name="select7" id="country01">
			<option>-국가-</option>
						<%for(int i=0;i<dtoL.size();i++){
							dto = dtoL.get(i);%>
<option value="<%=dto.getN_Code()%>" ><%=dto.getN_Name() %></option>
<%}%>
						</select> <select name="c_ArrCity" id="select9">
							<option>-도시-</option></select></td>
					</tr>	
					
					<tr>
						<td>출발일</td>
						<td><input type="date" name="s_DepDay" /></td>
						<td>비행시간</td>
						<td><input type="time" name="s_FlightTime" /></td>
					</tr>
					<tr>
						<td>출발시간</td>
						<td><input type="time" name="s_DeptTime" /></td>
						<td>도착시간</td>
						<td><input type="time" name="s_ArrtTime" /></td>
					</tr>

					<tr>
						<td colspan="4" align="center">트래블 운임</td>
					</tr>
					<tr>
						<td>성인</td>
						<td><input type="text" name="a_Travel" />원</td>
						<td>소아</td>
						<td><input type="text" name="c_Travel" />원</td>
					</tr>
					<tr>
						<td colspan="4" align="center">비지니스 운임</td>
					</tr>
					<tr>
						<td>성인</td>
						<td><input type="text" name="a_Business" />원</td>
						<td>소아</td>
						<td><input type="text" name="c_Business" />원</td>
					</tr>
					<tr>
						<td colspan="4" align="center">퍼스트 운임</td>
					</tr>
					<tr>
						<td>성인</td>
						<td><input type="text" name="a_First" />원</td>
						<td>소아</td>
						<td><input type="text" name="c_First" />원</td>
					</tr>

				</table>
			</form>

			<div class="div_button">
				<input type="submit" value="등록하기" onclick="nextEdit()" /> <input
					type="button" value="뒤로가기" />
			</div>


		</div>
	</div>

	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>