// JavaScript Document

function time(time){
	
	switch (time) {
	case "gwan":{
		$(".select_" + time).show();
		$(".select_hour").hide();
		$(".select_min").hide();
		$("." + time + "_div").attr("onclick","time('off')");
		break;
	}
	case "hour":{
		$(".select_" + time).show();
		$(".select_gwan").hide();
		$(".select_min").hide();
		$("." + time + "_div").attr("onclick","time('off')");
		break;
	}
	case "min":{
		$(".select_" + time).show();
		$(".select_hour").hide();
		$(".select_gwan").hide();
		$("." + time + "_div").attr("onclick","time('off')");
		break;
	}
	case "off":{
		$(".select_gwan").hide();
		$(".gwan_div").attr("onclick","time('gwan')");
		$(".select_hour").hide();
		$(".hour_div").attr("onclick","time('hour')");
		$(".select_min").hide();
		$(".min_div").attr("onclick","time('min')");
		break;
	}
	default:
		break;
	}
	
	/*if(time=="gwan"){
		$(".select_" + time).show();
		$(".select_hour").hide();
		$(".select_min").hide();
		$("." + time + "_div").attr("onclick","time('off')");
			
	} else if(time=="hour"){
		$(".select_" + time).show();
		$(".select_gwan").hide();
		$(".select_min").hide();
		$("." + time + "_div").attr("onclick","time('off')");
	}else if(time=="min"){
		$(".select_" + time).show();
		$(".select_hour").hide();
		$(".select_gwan").hide();
		$("." + time + "_div").attr("onclick","time('off')");
	}else if(time=="off"){
		$(".select_gwan").hide();
		$(".gwan_div").attr("onclick","time('gwan')");
		$(".select_hour").hide();
		$(".hour_div").attr("onclick","time('hour')");
		$(".select_min").hide();
		$(".min_div").attr("onclick","time('min')");
	}*/
}

function select(time,no){
	$(".select_" + time).hide();
	$("." + time + "_div").text($(".sel_" + time + no).text());
	
}