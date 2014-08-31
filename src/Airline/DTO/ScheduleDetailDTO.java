package Airline.DTO;

public class ScheduleDetailDTO {
	int r_No;
	String fn_air;
	String fn_no;
	int r_SeatTotal;
	int s_Code;
	String s_DepDay;
	String s_DeptTime;
	String s_ArrtTime;
	String s_FlightTime;
	String c_DepCity;
	String c_ArrCity;
	int a_Travel;
	int a_Business;
	int a_First;
	int c_Travel;
	int c_Business;
	int c_First;
	
	public ScheduleDetailDTO(){}

	public ScheduleDetailDTO(int r_No, String fn_air, String fn_no,
			int r_SeatTotal, int s_Code, String s_DepDay, String s_DeptTime,
			String s_ArrtTime, String s_FlightTime, String c_DepCity,
			String c_ArrCity, int a_Travel, int a_Business, int a_First,
			int c_Travel, int c_Business, int c_First) {
		super();
		this.r_No = r_No;
		this.fn_air = fn_air;
		this.fn_no = fn_no;
		this.r_SeatTotal = r_SeatTotal;
		this.s_Code = s_Code;
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
		this.c_DepCity = c_DepCity;
		this.c_ArrCity = c_ArrCity;
		this.a_Travel = a_Travel;
		this.a_Business = a_Business;
		this.a_First = a_First;
		this.c_Travel = c_Travel;
		this.c_Business = c_Business;
		this.c_First = c_First;
	}

	public int getR_No() {
		return r_No;
	}

	public void setR_No(int r_No) {
		this.r_No = r_No;
	}

	public String getFn_air() {
		return fn_air;
	}

	public void setFn_air(String fn_air) {
		this.fn_air = fn_air;
	}

	public String getFn_no() {
		return fn_no;
	}

	public void setFn_no(String fn_no) {
		this.fn_no = fn_no;
	}

	public int getR_SeatTotal() {
		return r_SeatTotal;
	}

	public void setR_SeatTotal(int r_SeatTotal) {
		this.r_SeatTotal = r_SeatTotal;
	}

	public int getS_Code() {
		return s_Code;
	}

	public void setS_Code(int s_Code) {
		this.s_Code = s_Code;
	}

	public String getS_DepDay() {
		return s_DepDay;
	}

	public void setS_DepDay(String s_DepDay) {
		this.s_DepDay = s_DepDay;
	}

	public String getS_DeptTime() {
		return s_DeptTime;
	}

	public void setS_DeptTime(String s_DeptTime) {
		this.s_DeptTime = s_DeptTime;
	}

	public String getS_ArrtTime() {
		return s_ArrtTime;
	}

	public void setS_ArrtTime(String s_ArrtTime) {
		this.s_ArrtTime = s_ArrtTime;
	}

	public String getS_FlightTime() {
		return s_FlightTime;
	}

	public void setS_FlightTime(String s_FlightTime) {
		this.s_FlightTime = s_FlightTime;
	}

	public String getC_DepCity() {
		return c_DepCity;
	}

	public void setC_DepCity(String c_DepCity) {
		this.c_DepCity = c_DepCity;
	}

	public String getC_ArrCity() {
		return c_ArrCity;
	}

	public void setC_ArrCity(String c_ArrCity) {
		this.c_ArrCity = c_ArrCity;
	}

	public int getA_Travel() {
		return a_Travel;
	}

	public void setA_Travel(int a_Travel) {
		this.a_Travel = a_Travel;
	}

	public int getA_Business() {
		return a_Business;
	}

	public void setA_Business(int a_Business) {
		this.a_Business = a_Business;
	}

	public int getA_First() {
		return a_First;
	}

	public void setA_First(int a_First) {
		this.a_First = a_First;
	}

	public int getC_Travel() {
		return c_Travel;
	}

	public void setC_Travel(int c_Travel) {
		this.c_Travel = c_Travel;
	}

	public int getC_Business() {
		return c_Business;
	}

	public void setC_Business(int c_Business) {
		this.c_Business = c_Business;
	}

	public int getC_First() {
		return c_First;
	}

	public void setC_First(int c_First) {
		this.c_First = c_First;
	}

	
	
}