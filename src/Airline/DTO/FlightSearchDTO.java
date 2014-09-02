package Airline.DTO;

public class FlightSearchDTO {

	int s_Code;
	String s_DepDay;	
	String s_DeptTime;	
	String s_ArrtTime;	
	String s_FlightTime;	
	int r_No;
	String fn_air;	
	int r_SeatTotal;	
	String fn_no;	
	String c_DepCity;	
	String c_ArrCity;	
	
	public FlightSearchDTO() {
		// TODO Auto-generated constructor stub
	}

	public FlightSearchDTO(int s_Code, String s_DepDay, String s_DeptTime,
			String s_ArrtTime, String s_FlightTime, int r_No, String fn_air,
			int r_SeatTotal, String fn_no, String c_DepCity, String c_ArrCity) {
		super();
		this.s_Code = s_Code;
		this.s_DepDay = s_DepDay;
		this.s_DeptTime = s_DeptTime;
		this.s_ArrtTime = s_ArrtTime;
		this.s_FlightTime = s_FlightTime;
		this.r_No = r_No;
		this.fn_air = fn_air;
		this.r_SeatTotal = r_SeatTotal;
		this.fn_no = fn_no;
		this.c_DepCity = c_DepCity;
		this.c_ArrCity = c_ArrCity;
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

	public int getR_SeatTotal() {
		return r_SeatTotal;
	}

	public void setR_SeatTotal(int r_SeatTotal) {
		this.r_SeatTotal = r_SeatTotal;
	}

	public String getFn_no() {
		return fn_no;
	}

	public void setFn_no(String fn_no) {
		this.fn_no = fn_no;
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

}
