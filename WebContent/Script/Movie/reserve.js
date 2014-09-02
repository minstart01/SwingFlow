// JavaScript Document

// 극장 지역 선택
function selLocal(local) {
	$("." + local + "_except").hide();
	$(".sel_" + local).show();
}

// 관람인원 선택
$(function() {
	$(".adult_sit_no")
			.click(
					function(e) {
						$(".adult_sit_no").addClass("adult_off");
						$(".adult_on").removeClass("adult_on");
						$(this).addClass("adult_on");
						$(this).removeClass("adult_off");
						$(".number_img")
								.attr("src",
										"/SwingFlow/images/Movie/Reserve/img_PersonNum_on.gif");
						var c = $(".number_info").text();

						if (c.substring(0, 2) == "관람" || c.length == 5) { // 성인
																			// 선택했을때
							$(".number_info").text("");
							$(".number_info").append(
									"성인 " + $(this).text() + "명"); // 성인n명

							$(".charge").text($(this).text() * 9 + ",000원"); // 관람요금
																				// 계싼
						} else if (c.length == 14) { // 성인, 청소년 선택후 성인 선택했을때
							var d = c.substring(6, 14); // | 청소년 n명
							$(".number_info").text("");
							$(".number_info").append(
									"성인 " + $(this).text() + "명 " + d); // 성인 n
																		// 명 |
																		// 청소년
																		// n명

							var charge = $(".charge").text();
							if (c.substring(3, 4) > $(this).text()
									&& charge.length == 7) { // 10만원 미만 - 계산

								var minus = c.substring(3, 4) - $(this).text();
								var sumcharge = charge.substring(0, 2) + " - "
										+ minus * 9;

							} else if (c.substring(3, 4) > $(this).text()
									&& charge.length == 8) { // 10만원 이상 - 계산
								var minus = c.substring(3, 4) - $(this).text();
								var sumcharge = charge.substring(0, 3) + " - "
										+ minus * 9;
							} else if (c.substring(3, 4) < $(this).text()
									&& charge.length == 7) { // 10만원 미만 + 계산
								var plus = $(this).text() - c.substring(3, 4);
								var sumcharge = plus * 9 + " + "
										+ charge.substring(0, 2);

							} else if (c.substring(3, 4) < $(this).text()
									&& charge.length == 8) { // 10만원 이상 + 계산
								var plus = $(this).text() - c.substring(3, 4);
								var sumcharge = plus * 9 + " + "
										+ charge.substring(0, 3);
							} else if (c.substring(3, 4) == (this).text()) { // 다시
																				// 선택했을
																				// 경우

							}

							$(".charge").text(eval(sumcharge) + ",000원");

						} else if (c.substring(0, 2) == "청소") { // 청소년 선택후 성인
																// 선택했을때
							var d = c.substring(0, 6); // 청소년 n명
							$(".number_info").text("");
							$(".number_info").append(
									"성인 " + $(this).text() + "명 | " + d); // 성인 n
																			// 명 |
																			// 청소년
																			// n명

							var charge = $(".charge").text();
							if (charge.substr(0, 1) == 8) { // 청소년1명 선택시
								var sumcharge = $(this).text() * 9 + " + "
										+ charge.substring(0, 1);
							} else {
								var sumcharge = $(this).text() * 9 + " + "
										+ charge.substring(0, 2);
							}
							$(".charge").text(eval(sumcharge) + ",000원");

						}
						if ($(this).text() == 0 && c.substring(8, 11) == "청소년") { // 성인,
																					// 청소년
																					// 선택후
																					// 성인0명
																					// 선택했을때
							$(".number_info").text("");
							$(".number_info").append(c.substring(8, 14)); // 청소년
																			// n명
						} else if ($(this).text() == 0
								&& c.substring(0, 3) == "청소년") { // 청소년 선택후
																	// 성인 0명
																	// 선택했을때
							$(".number_info").text("");
							$(".number_info").append(c.substring(0, 6)); // 청소년
																			// n명
						} else if ($(this).text() == 0) { // 성인 선택후 성인0명 선택했을때
							$(".number_info").text("");
							$(".number_info").append("관람인원을 선택하세요");
							$(".number_img")
									.attr("src",
											"/SwingFlow/images/Movie/Reserve/img_PersonNum_off.gif");
							$(".charge").text("0원");
						}

					});
	$(".teen_sit_no")
			.click(
					function(e) {
						$(".teen_sit_no").addClass("teen_off");
						$(".teen_on").removeClass("teen_on");
						$(this).addClass("teen_on");
						$(this).removeClass("teen_off");
						$(".number_img")
								.attr("src",
										"/SwingFlow/images/Movie/Reserve/img_PersonNum_on.gif");
						var a = $(".number_info").text();

						if (a.substring(0, 2) == "관람"
								|| a.substring(0, 2) == "청소") { // 청소년 선택했을때
							$(".number_info").text("");
							$(".number_info").append(
									"청소년 " + $(this).text() + "명"); // 청소년 n명
							if ($(this).text() == 0) { // 청소년 0명 선택시 0원
								$(".charge").text("0원");
							} else { // 아닐시 n,000원
								$(".charge").text($(this).text() * 8 + ",000원");
							}
						} else if (a.substring(0, 2) == "성인" && a.length == 5) { // 성인
																					// 선택후
																					// 청소년
																					// 선택했을때
							$(".number_info").append(
									" | 청소년 " + $(this).text() + "명"); // 성인 n명
																		// | 청소년
																		// n명
							var charge = $(".charge").text();
							if (charge.substr(0, 1) == 9) { // 성인1명 선택시
								var sumcharge = $(this).text() * 8 + " + "
										+ charge.substring(0, 1);
							} else {
								var sumcharge = $(this).text() * 8 + " + "
										+ charge.substring(0, 2);
							}
							$(".charge").text(eval(sumcharge) + ",000원");

						} else if (a.substring(0, 2) == "성인" && a.length > 5) { // 성인,
																				// 청소년
																				// 선택후
																				// 청소년
																				// 선택했을때
							var b = a.substring(0, 5); // 성인 n명
							$(".number_info").text("");
							$(".number_info").append(
									b + " | 청소년 " + $(this).text() + "명"); // 성인
																			// n명 |
																			// 청소년
																			// n명
							var charge = $(".charge").text();
							if (a.substring(12, 13) > $(this).text()
									&& charge.length == 7) { // 10만원 미만 - 계산

								var minus = a.substring(12, 13)
										- $(this).text();
								var sumcharge = charge.substring(0, 2) + " - "
										+ minus * 8;

							} else if (a.substring(12, 13) > $(this).text()
									&& charge.length == 8) { // 10만원 이상 - 계산
								var minus = a.substring(12, 13)
										- $(this).text();
								var sumcharge = charge.substring(0, 3) + " - "
										+ minus * 8;
							} else if (a.substring(12, 13) < $(this).text()
									&& charge.length == 7) { // 10만원 미만 + 계산
								var plus = $(this).text() - a.substring(12, 13);
								var sumcharge = plus * 8 + " + "
										+ charge.substring(0, 2);

							} else if (a.substring(12, 13) < $(this).text()
									&& charge.length == 8) { // 10만원 이상 + 계산
								var plus = $(this).text() - a.substring(12, 13);
								var sumcharge = plus * 8 + " + "
										+ charge.substring(0, 3);
							} else if (a.substring(12, 13) == (this).text()) { // 다시
																				// 선택했을
																				// 경우

							}

							$(".charge").text(eval(sumcharge) + ",000원");
						}
						if ($(this).text() == 0 && a.substring(0, 2) == "성인") { // 성인
																				// 선택후
																				// 청소년
																				// 0명
																				// 선택했을때
							$(".number_info").text("");
							$(".number_info").append(a.substring(0, 5));
						} else if ($(this).text() == 0 && a.length == 6) { // 청소년
																			// 선택후
																			// 청소년
																			// 0 명
																			// 선택했을때
							$(".number_info").text("");
							$(".number_info").append("관람인원을 선택하세요");
							$(".number_img")
									.attr("src",
											"/SwingFlow/images/Movie/Reserve/img_PersonNum_off.gif");
						}
					});

	// 영화 선택

	$(".sel_movie").click(function(e) {
		$(".sel_movie").addClass("movie_off");
		$(".movie_on").removeClass("movie_on");
		$(this).addClass("movie_on");
		$(this).removeClass("movie_off");
		$(".movie_info").text("");
		$(".movie_info").append($(this).text());
		$(".postername").attr("src", $(".movie_on input").val());
		
	});

	// 극장 선택
	$(".sel_local")
			.click(
					function(e) {
						$(".sel_local").addClass("local_off");
						$(".local_on").removeClass("local_on");
						$(this).addClass("local_on");
						$(this).removeClass("local_off");
						$(".theater_info").text("");
						$(".theater_info").append($(this).text());
						$(".theater_img")
								.attr("src",
										"/SwingFlow/images/Movie/Reserve/img_TheaterList_on.gif");

					});
});

/* 달력 */
var today = new Date();
var curMonth = today.getMonth() + 1;
var curYear = today.getFullYear();

$(function() {
	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
	var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var startDay = new Date(curYear, curMonth - 1, 1);

	var firstW = startDay.getDay();

	endDate = endDay[curMonth - 1];

	var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;


	var date = 1;
	var start = 0;
	var nextday = 1;
	var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

	for (var i = 0; i < 6; i++) {
		cal += "<tr>";
		for (var j = 0; j < 7; j++) {

			if (start < firstW) {
				cal += "<td class='firstw'>";
				cal += minus + start;
				cal += "</td>";
				start++;

			} else if (date > endDate) {
				cal += "<td class='firstw'>";
				cal += nextday;
				cal += "</td>";
				date++;
				nextday++;

			} else {
				cal += "<td>";
				cal += date;
				cal += "</td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#datepi").append(cal);
});

function ViewPrevMonth() {
	$("#datepi").empty();
	$("#curYearMonth").empty();

	curMonth--;
	if (curMonth == 0) {
		curYear--;
		curMonth = 12;
	}

	var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var startDay = new Date(curYear, curMonth - 1, 1);
	var firstW = startDay.getDay();

	// alert(startDay.getDay());

	endDate = endDay[curMonth - 1];
	var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;
	var nextday = 1;


	var date = 1;
	var start = 0;

	var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

	for (var i = 0; i < 6; i++) {
		cal += "<tr>";
		for (var j = 0; j < 7; j++) {

			if (start < firstW) {
				cal += "<td class='firstw'>";
				cal += minus + start;
				cal += "</td>";
				start++;

			} else if (date > endDate) {
				cal += "<td class='firstw'>";
				cal += nextday;
				cal += "</td>";
				date++;
				nextday++;

			} else {
				cal += "<td>";
				cal += date;
				cal += "</td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
	$("#datepi").append(cal);

}

function ViewNextMonth() {
	$("#datepi").empty();
	$("#curYearMonth").empty();
	curMonth++;

	if (curMonth == 13) {
		curYear++;
		curMonth = 1;
	}

	var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
	var startDay = new Date(curYear, curMonth - 1, 1);
	var firstW = startDay.getDay();

	// alert(startDay.getDay());

	endDate = endDay[curMonth - 1];
	var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;
	var nextday = 1;

	var date = 1;
	var start = 0;

	var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

	for (var i = 0; i < 6; i++) {
		cal += "<tr>";
		for (var j = 0; j < 7; j++) {

			if (start < firstW) {
				cal += "<td class='firstw'>";
				cal += minus + start;
				cal += "</td>";
				start++;

			} else if (date > endDate) {
				cal += "<td class='firstw'>";
				cal += nextday;
				cal += "</td>";
				date++;
				nextday++;

			} else {
				cal += "<td>";
				cal += date;
				cal += "</td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
	$("#datepi").append(cal);

}
