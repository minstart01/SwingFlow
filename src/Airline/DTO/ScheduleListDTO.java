package Airline.DTO;

public class ScheduleListDTO {
	int r_No;
	String fn_air;
	String fn_no;
	String c_DepCity;
	String c_ArrCity;
	String s_DeptTime;
	String s_DepDay;

	public ScheduleListDTO() {
		// TODO Auto-generated constructor stub
	}

	public ScheduleListDTO(int r_No, String fn_air, String fn_no,
			String c_DepCity, String c_ArrCity, String s_DeptTime,
			String s_DepDay) {
		super();
		this.r_No = r_No;
		this.fn_air = fn_air;
		this.fn_no = fn_no;
		this.c_DepCity = c_DepCity;
		this.c_ArrCity = c_ArrCity;
		this.s_DeptTime = s_DeptTime;
		this.s_DepDay = s_DepDay;
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

	public String getS_DeptTime() {
		return s_DeptTime;
	}

	public void setS_DeptTime(String s_DeptTime) {
		this.s_DeptTime = s_DeptTime;
	}

	public String getS_DepDay() {
		return s_DepDay;
	}

	public void setS_DepDay(String s_DepDay) {
		this.s_DepDay = s_DepDay;
	}

}
